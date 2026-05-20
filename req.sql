-- Запрос 1: Получить список всех дата-центров.
SELECT id, name, country, city, address 
FROM datacenters;

-- Запрос 2: Посмотреть список всех доступных сервисов и их описание.
SELECT id, name, owner_team 
FROM services;

-- Запрос 3: Вывести список сотрудников ИТ-отдела (имена, фамилии и их роли).
SELECT first_name, last_name, role 
FROM employees;

-- Запрос 4: Найти все сервера, у которых сейчас статус «сбой» (failure), чтобы отправить инженера на проверку.
SELECT id, ip_address, model, os, status 
FROM servers 
WHERE status = 'failure';

-- Запрос 5: Вывести список инцидентов с высоким или критическим уровнем важности, которые до сих пор не решены.
SELECT id, title, severity, status 
FROM incidents 
WHERE severity IN ('high', 'critical') AND status != 'resolved';

-- Запрос 6: Вывести список всех серверных стоек вместе с названиями и адресами дата-центров, в которых они физически находятся.
SELECT r.code AS rack_code, r.status, d.name AS dc_name, d.city, d.address
FROM racks r
JOIN datacenters d ON r.datacenter_id = d.id;

-- Запрос 7: Показать, на каких именно серверах (по IP-адресам) развернут каждый из сервисов.
SELECT s.name AS service_name, srv.ip_address, srv.model
FROM services s
JOIN server_services ss ON s.id = ss.service_id
JOIN servers srv ON ss.server_id = srv.id;

-- Запрос 8 (GROUP BY + Агрегация + HAVING): Посчитать количество серверов в каждой стойке и вывести только те стойки, где установлено более 5 серверов.
SELECT rack_id, COUNT(id) AS total_servers
FROM servers
GROUP BY rack_id
HAVING COUNT(id) > 5;

-- Запрос 9 (Сортировка и ограничение: ORDER BY ... LIMIT): Найти топ-5 серверов с наибольшим объемом дискового пространства, установленных в дата-центрах.
SELECT id, ip_address, model, storage_tb 
FROM servers
ORDER BY storage_tb DESC
LIMIT 5;

-- Запрос 10 (Обобщенное табличное выражение: WITH / CTE): Посчитать общую суммарную мощность (SUM) и средний лимит мощности (AVG) стоек для каждой страны.
WITH dc_racks AS (
    SELECT d.country, r.power_limit_kw
    FROM racks r
    JOIN datacenters d ON r.datacenter_id = d.id
)
SELECT country, 
       SUM(power_limit_kw) AS total_power_kw, 
       AVG(power_limit_kw) AS avg_power_kw
FROM dc_racks
GROUP BY country;

-- Вторая часть запровов 

-- Запрос 1: Получить список всего сетевого оборудования (коммутаторы, маршрутизаторы), зарегистрированного в системе.
SELECT id, type, vendor, model, ip_address 
FROM network_devices;

-- Запрос 2: Вывести список всех зафиксированных инцидентов (их заголовки и степень важности).
SELECT id, title, severity, status 
FROM incidents;

-- Запрос 3: Просмотреть все существующие серверные стойки и их ограничения по юнитам.
SELECT id, code, max_units, status 
FROM racks;

-- Запрос 4: Найти серверы, у которых объем оперативной памяти равен или больше 128 ГБ, а в качестве ОС установлен Linux (например, Ubuntu или CentOS).
SELECT id, ip_address, model, ram_gb, os 
FROM servers 
WHERE ram_gb >= 128 AND os LIKE '%Linux%';

-- Запрос 5: Вывести список сетевых устройств конкретного вендора (например, 'Cisco'), которые сейчас находятся на техобслуживании (maintenance) или отключены (offline).
SELECT id, type, model, ip_address, status 
FROM network_devices 
WHERE vendor = 'Cisco' AND status IN ('maintenance', 'offline');

-- Запрос 6: Показать все инциденты и названия конкретных IT-сервисов, которые ими затронуты.
SELECT i.id AS incident_id, i.title AS incident_title, s.name AS affected_service
FROM incidents i
JOIN services s ON i.affected_service_id = s.id;

-- Запрос 7: Вывести список сотрудников (имя, фамилия, роль) и ID инцидентов, которые на них сейчас назначены.
SELECT e.first_name, e.last_name, e.role, ia.incident_id
FROM employees e
JOIN incident_assignments ia ON e.id = ia.employee_id;

-- Запрос 8 (GROUP BY + Агрегация + HAVING): Посчитать количество инцидентов для каждого сервиса и вывести только те сервисы, по которым было открыто более 3 инцидентов.
SELECT affected_service_id, COUNT(id) AS total_incidents
FROM incidents
WHERE affected_service_id IS NOT NULL
GROUP BY affected_service_id
HAVING COUNT(id) > 3;


-- Запрос 9 (Сортировка и ограничение: ORDER BY ... LIMIT): Найти топ-3 самые «мощные» стойки по лимиту киловатт (power_limit_kw), которые имеют статус активных (active).
SELECT id, code, power_limit_kw, status 
FROM racks
WHERE status = 'active'
ORDER BY power_limit_kw DESC
LIMIT 3;

-- Запрос 10 (Обобщенное табличное выражение: WITH / CTE): Посчитать общее количество ядер процессоров (COUNT) и суммарный объем дисков (SUM) на серверах для каждого производителя, но учитывать только серверы, установленные начиная с 2024 года.
WITH modern_servers AS (
    SELECT manufacturer, storage_tb, cpu
    FROM servers
    WHERE install_date >= '2024-01-01'
)
SELECT manufacturer, 
       COUNT(cpu) AS total_cpu_count, 
       SUM(storage_tb) AS total_storage_tb
FROM modern_servers
GROUP BY manufacturer;
