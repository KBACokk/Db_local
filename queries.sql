-- ============================================================
-- queries.sql — Аналитические запросы к БД "Управление оборудованием в дата-центре"
-- ============================================================
-- ====================
-- 1. ПРОСТЫЕ ВЫБОРКИ (SELECT) — 6 запросов
-- ====================
-- 1.1. Список всех дата-центров
SELECT
    id,
    name,
    country,
    city,
    address,
    created_at
FROM
    datacenters
ORDER BY
    name;

-- 1.2. Список всех сотрудников
SELECT
    id,
    first_name,
    last_name,
    email,
    role,
    phone
FROM
    employees
ORDER BY
    last_name,
    first_name;

-- 1.3. Список всех сервисов
SELECT
    id,
    name,
    description,
    owner_team
FROM
    services
ORDER BY
    name;

-- 1.4. Информация обо всех стойках
SELECT
    id,
    datacenter_id,
    code,
    max_units,
    power_limit_kw,
    status
FROM
    racks
ORDER BY
    code;

-- 1.5. Список всех инцидентов
SELECT
    id,
    title,
    severity,
    status,
    detected_at,
    resolved_at,
    affected_service_id
FROM
    incidents
ORDER BY
    detected_at DESC;

-- 1.6. Информация обо всех серверах
SELECT
    id,
    rack_id,
    ip_address,
    manufacturer,
    model,
    cpu,
    ram_gb,
    storage_tb,
    os,
    status,
    install_date
FROM
    servers
ORDER BY
    ip_address;

-- ====================
-- 2. ЗАПРОСЫ С ФИЛЬТРАЦИЕЙ (WHERE) — 4 запроса
-- ====================
-- 2.1. Все критические и высокие инциденты, которые ещё не решены
SELECT
    id,
    title,
    severity,
    status,
    detected_at
FROM
    incidents
WHERE
    severity IN ('critical', 'high')
    AND status IN ('open', 'in_progress')
ORDER BY
    severity DESC,
    detected_at DESC;

-- 2.2. Серверы, находящиеся в статусе failure или offline
SELECT
    id,
    rack_id,
    ip_address,
    manufacturer,
    model,
    status,
    install_date
FROM
    servers
WHERE
    status IN ('failure', 'offline')
ORDER BY
    status,
    ip_address;

-- 2.3. Стойки в дата-центре с id = 1, которые находятся на обслуживании или отключены
SELECT
    id,
    code,
    max_units,
    power_limit_kw,
    status
FROM
    racks
WHERE
    datacenter_id = 1
    AND status IN ('maintenance', 'offline')
ORDER BY
    code;

-- 2.4. Сетевые устройства типа 'firewall' в активном статусе
SELECT
    id,
    rack_id,
    vendor,
    model,
    ip_address,
    status
FROM
    network_devices
WHERE
    type = 'firewall'
    AND status = 'active'
ORDER BY
    vendor,
    model;

-- ====================
-- 3. ЗАПРОСЫ С ОБЪЕДИНЕНИЕМ ТАБЛИЦ (JOIN) — 4 запроса
-- ====================
-- 3.1. Серверы с информацией о стойке и дата-центре
SELECT
    s.id AS server_id,
    s.ip_address,
    s.manufacturer,
    s.model,
    s.status AS server_status,
    r.code AS rack_code,
    d.name AS datacenter_name,
    d.city
FROM
    servers s
    JOIN racks r ON s.rack_id = r.id
    JOIN datacenters d ON r.datacenter_id = d.id
ORDER BY
    d.name,
    r.code,
    s.ip_address;

-- 3.2. Инциденты с затронутыми серверами и назначенными сотрудниками
SELECT
    i.id AS incident_id,
    i.title,
    i.severity,
    i.status AS incident_status,
    s.ip_address AS affected_server_ip,
    e.first_name || ' ' || e.last_name AS assigned_employee,
    e.role AS employee_role
FROM
    incidents i
    LEFT JOIN incident_servers ins ON i.id = ins.incident_id
    LEFT JOIN servers s ON ins.server_id = s.id
    LEFT JOIN incident_assignments ia ON i.id = ia.incident_id
    LEFT JOIN employees e ON ia.employee_id = e.id
ORDER BY
    i.detected_at DESC,
    s.ip_address;

-- 3.3. Сервисы, развёрнутые на серверах, с информацией о серверах
SELECT
    sv.name AS service_name,
    sv.owner_team,
    s.ip_address,
    s.manufacturer,
    s.model,
    ss.deployed_at
FROM
    server_services ss
    JOIN services sv ON ss.service_id = sv.id
    JOIN servers s ON ss.server_id = s.id
ORDER BY
    sv.name,
    s.ip_address;

-- 3.4. Сетевое оборудование с информацией о стойке
SELECT
    nd.id,
    nd.type,
    nd.vendor,
    nd.model,
    nd.ip_address,
    nd.status,
    r.code AS rack_code,
    r.status AS rack_status
FROM
    network_devices nd
    JOIN racks r ON nd.rack_id = r.id
ORDER BY
    r.code,
    nd.type;

-- ====================
-- 4. ЗАПРОСЫ С АГРЕГАЦИЕЙ (GROUP BY, COUNT/SUM/AVG) — 6 запросов
-- ====================
-- 4.1. Количество серверов в каждом дата-центре
SELECT
    d.name AS datacenter_name,
    d.city,
    COUNT(s.id) AS total_servers
FROM
    datacenters d
    LEFT JOIN racks r ON d.id = r.datacenter_id
    LEFT JOIN servers s ON r.id = s.rack_id
GROUP BY
    d.id,
    d.name,
    d.city
ORDER BY
    total_servers DESC;

-- 4.2. Средний объём RAM (ГБ) по производителям серверов
SELECT
    manufacturer,
    COUNT(id) AS server_count,
    ROUND(AVG(ram_gb), 2) AS avg_ram_gb,
    MIN(ram_gb) AS min_ram_gb,
    MAX(ram_gb) AS max_ram_gb
FROM
    servers
WHERE
    manufacturer IS NOT NULL
GROUP BY
    manufacturer
ORDER BY
    server_count DESC;

-- 4.3. Количество инцидентов по степени серьёзности и статусу
SELECT
    severity,
    status,
    COUNT(id) AS incident_count
FROM
    incidents
GROUP BY
    severity,
    status
ORDER BY
    severity,
    status;

-- 4.4. Суммарный объём хранилища (ТБ) по стойкам
SELECT
    r.code AS rack_code,
    COUNT(s.id) AS server_count,
    COALESCE(SUM(s.storage_tb), 0) AS total_storage_tb,
    ROUND(COALESCE(AVG(s.storage_tb), 0), 2) AS avg_storage_tb
FROM
    racks r
    LEFT JOIN servers s ON r.id = s.rack_id
GROUP BY
    r.id,
    r.code
ORDER BY
    total_storage_tb DESC;

-- 4.5. Количество сервисов, развёрнутых на каждом сервере
SELECT
    s.ip_address,
    s.manufacturer,
    s.model,
    COUNT(ss.service_id) AS deployed_services_count
FROM
    servers s
    LEFT JOIN server_services ss ON s.id = ss.server_id
GROUP BY
    s.id,
    s.ip_address,
    s.manufacturer,
    s.model
ORDER BY
    deployed_services_count DESC,
    s.ip_address;

-- 4.6. Количество инцидентов, назначенных на каждого сотрудника
SELECT
    e.first_name || ' ' || e.last_name AS employee_name,
    e.role,
    COUNT(ia.incident_id) AS assigned_incidents
FROM
    employees e
    LEFT JOIN incident_assignments ia ON e.id = ia.employee_id
GROUP BY
    e.id,
    e.first_name,
    e.last_name,
    e.role
ORDER BY
    assigned_incidents DESC,
    employee_name;