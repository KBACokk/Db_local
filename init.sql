-- ============================================================
-- seed_datacenters.sql — Заполнение таблицы datacenters (30 записей)
-- ============================================================

INSERT INTO datacenters (name, country, city, address) VALUES
-- Германия (5)
('DC Frankfurt Alpha',     'Germany',      'Frankfurt',      'Hanauer Landstraße 302, 60314 Frankfurt am Main'),
('DC Frankfurt Beta',      'Germany',      'Frankfurt',      'Kleyerstraße 90, 60326 Frankfurt am Main'),
('DC Munich Central',      'Germany',      'Munich',         'Riesstraße 25, 80992 München'),
('DC Berlin Gate',         'Germany',      'Berlin',         'Nonnendammallee 15, 13599 Berlin'),
('DC Hamburg Port',        'Germany',      'Hamburg',        'Süderstraße 282, 20537 Hamburg'),

-- Нидерланды (3)
('DC Amsterdam Ring',      'Netherlands',  'Amsterdam',      'Science Park 610, 1098 XH Amsterdam'),
('DC Rotterdam Dock',      'Netherlands',  'Rotterdam',      'Waalkade 17, 3011 BP Rotterdam'),
('DC Eindhoven Tech',      'Netherlands',  'Eindhoven',      'High Tech Campus 5, 5656 AE Eindhoven'),

-- Великобритания (4)
('DC London Docks',        'UK',           'London',         'Millharbour 12, London E14 9XP'),
('DC London West',         'UK',           'London',         'Power Road 50, London W4 5PY'),
('DC Manchester North',    'UK',           'Manchester',     'Quay Street 33, Manchester M3 3JE'),
('DC Slough Trading',      'UK',           'Slough',         'Bath Road 278, Slough SL1 4DX'),

-- Франция (3)
('DC Paris Central',       'France',       'Paris',          '114 Rue Ambroise Croizat, 93200 Saint-Denis'),
('DC Marseille Port',      'France',       'Marseille',      '27 Boulevard de Dunkerque, 13002 Marseille'),
('DC Lyon Hub',            'France',       'Lyon',           '12 Rue du Lac, 69003 Lyon'),

-- Испания (2)
('DC Madrid Hub',          'Spain',        'Madrid',         'Calle de Albasanz 15, 28037 Madrid'),
('DC Barcelona Beach',     'Spain',        'Barcelona',      'Carrer de Llull 48, 08005 Barcelona'),

-- Италия (2)
('DC Milan North',         'Italy',        'Milan',          'Via Caldera 21, 20153 Milano'),
('DC Rome Central',        'Italy',        'Rome',           'Via Pontina 29, 00171 Roma'),

-- Швейцария (2)
('DC Zurich Vault',        'Switzerland',  'Zurich',         'Thurgauerstrasse 40, 8050 Zürich'),
('DC Geneva Lake',         'Switzerland',  'Geneva',         'Route des Acacias 45, 1227 Genève'),

-- Польша (2)
('DC Warsaw East',         'Poland',       'Warsaw',         'ul. Cybernetyki 9, 02-677 Warszawa'),
('DC Krakow Tech',         'Poland',       'Krakow',         'ul. Pasternik 120, 31-354 Kraków'),

-- Швеция (2)
('DC Stockholm Arctic',    'Sweden',       'Stockholm',      'Johannesfredsvägen 9, 168 69 Bromma'),
('DC Gothenburg West',     'Sweden',       'Gothenburg',     'Lindholmsallén 12, 417 55 Göteborg'),

-- Ирландия (1)
('DC Dublin Green',        'Ireland',      'Dublin',         'Ballycoolin Road 22, Dublin 15'),

-- Финляндия (1)
('DC Helsinki Nordic',     'Finland',      'Helsinki',       'Äyritie 8, 01510 Vantaa'),

-- Норвегия (1)
('DC Oslo Fjord',          'Norway',       'Oslo',           'Nydalsveien 36, 0484 Oslo'),

-- Дания (1)
('DC Copenhagen Breeze',   'Denmark',      'Copenhagen',     'Lautrupvang 4, 2750 Ballerup'),

-- Австрия (1)
('DC Vienna East',         'Austria',      'Vienna',         'Donau-City-Straße 11, 1220 Wien');

INSERT INTO racks (datacenter_id, code, max_units, power_limit_kw, status) VALUES
-- DC Frankfurt Alpha (id=1) — 5 стоек
(1,  'FRA-A-R01', 47, 10.0, 'active'),
(1,  'FRA-A-R02', 47, 10.0, 'active'),
(1,  'FRA-A-R03', 42,  8.5, 'active'),
(1,  'FRA-A-R04', 42,  8.5, 'offline'),
(1,  'FRA-A-R05', 47, 12.0, 'active'),

-- DC Frankfurt Beta (id=2) — 4 стойки
(2,  'FRA-B-R01', 47, 11.0, 'active'),
(2,  'FRA-B-R02', 47, 11.0, 'active'),
(2,  'FRA-B-R03', 42,  9.0, 'active'),
(2,  'FRA-B-R04', 42,  9.0, 'offline'),

-- DC Munich Central (id=3) — 4 стойки
(3,  'MUC-C-R01', 47, 10.5, 'active'),
(3,  'MUC-C-R02', 47, 10.5, 'active'),
(3,  'MUC-C-R03', 42,  8.0, 'active'),
(3,  'MUC-C-R04', 42,  8.0, 'active'),

-- DC Berlin Gate (id=4) — 3 стойки
(4,  'BER-G-R01', 47, 12.0, 'active'),
(4,  'BER-G-R02', 47, 12.0, 'active'),
(4,  'BER-G-R03', 42,  9.5, 'offline'),

-- DC Hamburg Port (id=5) — 3 стойки
(5,  'HAM-P-R01', 47, 10.0, 'active'),
(5,  'HAM-P-R02', 42,  8.0, 'active'),
(5,  'HAM-P-R03', 42,  8.0, 'active'),

-- DC Amsterdam Ring (id=6) — 5 стоек
(6,  'AMS-R-R01', 48, 15.0, 'active'),
(6,  'AMS-R-R02', 48, 15.0, 'active'),
(6,  'AMS-R-R03', 48, 15.0, 'active'),
(6,  'AMS-R-R04', 42, 10.0, 'active'),
(6,  'AMS-R-R05', 42, 10.0, 'offline'),

-- DC Rotterdam Dock (id=7) — 3 стойки
(7,  'ROT-D-R01', 47, 11.0, 'active'),
(7,  'ROT-D-R02', 47, 11.0, 'active'),
(7,  'ROT-D-R03', 42,  9.0, 'active'),

-- DC Eindhoven Tech (id=8) — 4 стойки
(8,  'EIN-T-R01', 47, 10.0, 'active'),
(8,  'EIN-T-R02', 47, 10.0, 'active'),
(8,  'EIN-T-R03', 42,  8.5, 'active'),
(8,  'EIN-T-R04', 42,  8.5, 'active'),

-- DC London Docks (id=9) — 5 стоек
(9,  'LON-D-R01', 47, 12.0, 'active'),
(9,  'LON-D-R02', 47, 12.0, 'active'),
(9,  'LON-D-R03', 47, 12.0, 'active'),
(9,  'LON-D-R04', 42, 10.0, 'offline'),
(9,  'LON-D-R05', 42, 10.0, 'active'),

-- DC London West (id=10) — 4 стойки
(10, 'LON-W-R01', 47, 11.0, 'active'),
(10, 'LON-W-R02', 47, 11.0, 'active'),
(10, 'LON-W-R03', 42,  9.0, 'active'),
(10, 'LON-W-R04', 42,  9.0, 'active'),

-- DC Manchester North (id=11) — 3 стойки
(11, 'MAN-N-R01', 47, 10.0, 'active'),
(11, 'MAN-N-R02', 42,  8.0, 'active'),
(11, 'MAN-N-R03', 42,  8.0, 'offline'),

-- DC Slough Trading (id=12) — 3 стойки
(12, 'SLO-T-R01', 47, 10.5, 'active'),
(12, 'SLO-T-R02', 47, 10.5, 'active'),
(12, 'SLO-T-R03', 42,  8.5, 'active'),

-- DC Paris Central (id=13) — 5 стоек
(13, 'PAR-C-R01', 47, 12.0, 'active'),
(13, 'PAR-C-R02', 47, 12.0, 'active'),
(13, 'PAR-C-R03', 47, 12.0, 'active'),
(13, 'PAR-C-R04', 42, 10.0, 'active'),
(13, 'PAR-C-R05', 42, 10.0, 'offline'),

-- DC Marseille Port (id=14) — 3 стойки
(14, 'MAR-P-R01', 47, 10.0, 'active'),
(14, 'MAR-P-R02', 42,  8.0, 'active'),
(14, 'MAR-P-R03', 42,  8.0, 'active'),

-- DC Lyon Hub (id=15) — 3 стойки
(15, 'LYO-H-R01', 47, 10.5, 'active'),
(15, 'LYO-H-R02', 47, 10.5, 'active'),
(15, 'LYO-H-R03', 42,  8.5, 'active'),

-- DC Madrid Hub (id=16) — 4 стойки
(16, 'MAD-H-R01', 47, 11.0, 'active'),
(16, 'MAD-H-R02', 47, 11.0, 'active'),
(16, 'MAD-H-R03', 42,  9.0, 'active'),
(16, 'MAD-H-R04', 42,  9.0, 'offline'),

-- DC Barcelona Beach (id=17) — 3 стойки
(17, 'BCN-B-R01', 47, 10.0, 'active'),
(17, 'BCN-B-R02', 42,  8.0, 'active'),
(17, 'BCN-B-R03', 42,  8.0, 'active'),

-- DC Milan North (id=18) — 4 стойки
(18, 'MIL-N-R01', 47, 11.0, 'active'),
(18, 'MIL-N-R02', 47, 11.0, 'active'),
(18, 'MIL-N-R03', 42,  9.0, 'offline'),
(18, 'MIL-N-R04', 42,  9.0, 'active'),

-- DC Rome Central (id=19) — 3 стойки
(19, 'ROM-C-R01', 47, 10.0, 'active'),
(19, 'ROM-C-R02', 47, 10.0, 'active'),
(19, 'ROM-C-R03', 42,  8.0, 'active'),

-- DC Zurich Vault (id=20) — 4 стойки
(20, 'ZUR-V-R01', 47, 13.0, 'active'),
(20, 'ZUR-V-R02', 47, 13.0, 'active'),
(20, 'ZUR-V-R03', 42, 10.0, 'active'),
(20, 'ZUR-V-R04', 42, 10.0, 'active'),

-- DC Geneva Lake (id=21) — 3 стойки
(21, 'GEN-L-R01', 47, 12.0, 'active'),
(21, 'GEN-L-R02', 47, 12.0, 'active'),
(21, 'GEN-L-R03', 42,  9.0, 'active'),

-- DC Warsaw East (id=22) — 4 стойки
(22, 'WAW-E-R01', 47, 10.0, 'active'),
(22, 'WAW-E-R02', 47, 10.0, 'active'),
(22, 'WAW-E-R03', 42,  8.0, 'active'),
(22, 'WAW-E-R04', 42,  8.0, 'offline'),

-- DC Krakow Tech (id=23) — 3 стойки
(23, 'KRK-T-R01', 47,  9.5, 'active'),
(23, 'KRK-T-R02', 42,  7.5, 'active'),
(23, 'KRK-T-R03', 42,  7.5, 'active'),

-- DC Stockholm Arctic (id=24) — 4 стойки
(24, 'STO-A-R01', 47, 11.0, 'active'),
(24, 'STO-A-R02', 47, 11.0, 'active'),
(24, 'STO-A-R03', 42,  9.0, 'active'),
(24, 'STO-A-R04', 42,  9.0, 'offline'),

-- DC Gothenburg West (id=25) — 3 стойки
(25, 'GOT-W-R01', 47, 10.0, 'active'),
(25, 'GOT-W-R02', 42,  8.0, 'active'),
(25, 'GOT-W-R03', 42,  8.0, 'active'),

-- DC Dublin Green (id=26) — 4 стойки
(26, 'DUB-G-R01', 47, 12.0, 'active'),
(26, 'DUB-G-R02', 47, 12.0, 'active'),
(26, 'DUB-G-R03', 42, 10.0, 'active'),
(26, 'DUB-G-R04', 42, 10.0, 'active'),

-- DC Helsinki Nordic (id=27) — 3 стойки
(27, 'HEL-N-R01', 47, 11.0, 'active'),
(27, 'HEL-N-R02', 42,  9.0, 'active'),
(27, 'HEL-N-R03', 42,  9.0, 'active'),

-- DC Oslo Fjord (id=28) — 3 стойки
(28, 'OSL-F-R01', 47, 10.5, 'active'),
(28, 'OSL-F-R02', 47, 10.5, 'active'),
(28, 'OSL-F-R03', 42,  8.5, 'offline'),

-- DC Copenhagen Breeze (id=29) — 3 стойки
(29, 'CPH-B-R01', 47, 10.0, 'active'),
(29, 'CPH-B-R02', 42,  8.0, 'active'),
(29, 'CPH-B-R03', 42,  8.0, 'active'),

-- DC Vienna East (id=30) — 3 стойки
(30, 'VIE-E-R01', 47, 10.0, 'active'),
(30, 'VIE-E-R02', 47, 10.0, 'active'),
(30, 'VIE-E-R03', 42,  8.0, 'active');

-- ============================================================
-- seed_servers.sql — Заполнение таблицы servers
-- ============================================================
-- ~300 серверов, распределённых по всем стойкам (rack_id: 1–106)
-- По 2–5 серверов на стойку
-- Разные производители: Dell, HPE, Lenovo, Supermicro, Cisco
-- Разные ОС: Ubuntu 22.04, CentOS 7, RHEL 8/9, Windows Server 2022, Debian 11
-- Статусы: ~80% online, ~12% offline, ~8% failure

INSERT INTO servers (rack_id, ip_address, manufacturer, model, cpu, ram_gb, storage_tb, os, status, install_date) VALUES
-- ====================
-- DC Frankfurt Alpha, rack_id 1–5
-- ====================
-- Rack FRA-A-R01 (id=1) — 4 сервера
(1,  '10.10.1.11',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338 2.0GHz', 256, 4.0, 'Ubuntu 22.04', 'online',  '2024-03-15'),
(1,  '10.10.1.12',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338 2.0GHz', 256, 4.0, 'Ubuntu 22.04', 'online',  '2024-03-15'),
(1,  '10.10.1.13',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'RHEL 9',       'online',  '2024-06-01'),
(1,  '10.10.1.14',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'RHEL 9',       'offline', '2024-06-01'),

-- Rack FRA-A-R02 (id=2) — 3 сервера
(2,  '10.10.1.21',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317 3.0GHz', 192, 3.0, 'CentOS 7',     'online',  '2023-11-10'),
(2,  '10.10.1.22',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317 3.0GHz', 192, 3.0, 'CentOS 7',     'online',  '2023-11-10'),
(2,  '10.10.1.23',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543 2.8GHz',        512, 8.0, 'Debian 11',    'online',  '2024-01-20'),

-- Rack FRA-A-R03 (id=3) — 2 сервера
(3,  '10.10.1.31',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-04-05'),
(3,  '10.10.1.32',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'failure', '2024-04-05'),

-- Rack FRA-A-R04 (id=4) — 2 сервера (offline rack)
(4,  '10.10.1.41',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'offline', '2024-02-10'),
(4,  '10.10.1.42',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'offline', '2024-02-10'),

-- Rack FRA-A-R05 (id=5) — 3 сервера
(5,  '10.10.1.51',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'Ubuntu 22.04', 'online',  '2024-07-01'),
(5,  '10.10.1.52',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'Ubuntu 22.04', 'online',  '2024-07-01'),
(5,  '10.10.1.53',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',     'online',  '2024-08-15'),

-- ====================
-- DC Frankfurt Beta, rack_id 6–9
-- ====================
-- Rack FRA-B-R01 (id=6) — 4 сервера
(6,  '10.10.2.11',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-03-20'),
(6,  '10.10.2.12',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-03-20'),
(6,  '10.10.2.13',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2023-12-05'),
(6,  '10.10.2.14',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'failure', '2023-12-05'),

-- Rack FRA-B-R02 (id=7) — 3 сервера
(7,  '10.10.2.21',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'RHEL 9',       'online',  '2024-06-10'),
(7,  '10.10.2.22',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'RHEL 9',       'online',  '2024-06-10'),
(7,  '10.10.2.23',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-01-25'),

-- Rack FRA-B-R03 (id=8) — 2 сервера
(8,  '10.10.2.31',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-04-10'),
(8,  '10.10.2.32',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-04-10'),

-- Rack FRA-B-R04 (id=9) — 2 сервера (offline rack)
(9,  '10.10.2.41',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'offline', '2024-02-15'),
(9,  '10.10.2.42',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'offline', '2024-02-15'),

-- ====================
-- DC Munich Central, rack_id 10–13
-- ====================
(10, '10.10.3.11',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-03-25'),
(10, '10.10.3.12',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-03-25'),
(10, '10.10.3.13',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-07-05'),
(11, '10.10.3.21',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2023-12-10'),
(11, '10.10.3.22',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2023-12-10'),
(11, '10.10.3.23',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'failure', '2024-01-30'),
(12, '10.10.3.31',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-04-15'),
(12, '10.10.3.32',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-04-15'),
(13, '10.10.3.41',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'RHEL 9',       'offline', '2024-06-15'),
(13, '10.10.3.42',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'RHEL 9',       'online',  '2024-06-15'),

-- ====================
-- DC Berlin Gate, rack_id 14–16
-- ====================
(14, '10.10.4.11',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',    'online',  '2024-08-20'),
(14, '10.10.4.12',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',    'online',  '2024-08-20'),
(14, '10.10.4.13',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'Ubuntu 22.04', 'online',  '2024-06-20'),
(15, '10.10.4.21',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2023-12-15'),
(15, '10.10.4.22',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2023-12-15'),
(16, '10.10.4.31',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'offline', '2024-02-20'), -- offline rack

-- ====================
-- DC Hamburg Port, rack_id 17–19
-- ====================
(17, '10.10.5.11',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-01-15'),
(17, '10.10.5.12',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-01-15'),
(18, '10.10.5.21',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-04-20'),
(18, '10.10.5.22',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'failure', '2024-04-20'),
(19, '10.10.5.31',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-07-10'),
(19, '10.10.5.32',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-07-10'),

-- ====================
-- DC Amsterdam Ring, rack_id 20–24
-- ====================
(20, '10.20.1.11',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-08-01'),
(20, '10.20.1.12',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-08-01'),
(20, '10.20.1.13',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-08-01'),
(21, '10.20.1.21',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'Ubuntu 22.04', 'online',  '2024-06-25'),
(21, '10.20.1.22',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'Ubuntu 22.04', 'online',  '2024-06-25'),
(21, '10.20.1.23',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'Ubuntu 22.04', 'failure', '2024-06-25'),
(22, '10.20.1.31',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2023-11-20'),
(22, '10.20.1.32',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2023-11-20'),
(23, '10.20.1.41',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-02-01'),
(23, '10.20.1.42',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-02-01'),
(24, '10.20.1.51',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'offline', '2024-02-25'), -- offline rack

-- ====================
-- DC Rotterdam Dock, rack_id 25–27
-- ====================
(25, '10.20.2.11',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-03-30'),
(25, '10.20.2.12',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-03-30'),
(26, '10.20.2.21',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-07-15'),
(26, '10.20.2.22',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-07-15'),
(27, '10.20.2.31',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'offline', '2023-12-20'),
(27, '10.20.2.32',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2023-12-20'),

-- ====================
-- DC Eindhoven Tech, rack_id 28–31
-- ====================
(28, '10.20.3.11',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-02-05'),
(28, '10.20.3.12',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-02-05'),
(29, '10.20.3.21',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-04-25'),
(29, '10.20.3.22',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'failure', '2024-04-25'),
(30, '10.20.3.31',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'RHEL 9',       'online',  '2024-06-30'),
(30, '10.20.3.32',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'RHEL 9',       'online',  '2024-06-30'),
(31, '10.20.3.41',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'online',  '2024-03-01'),
(31, '10.20.3.42',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'online',  '2024-03-01'),

-- ====================
-- DC London Docks, rack_id 32–36
-- ====================
(32, '10.30.1.11',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-08-05'),
(32, '10.30.1.12',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-08-05'),
(32, '10.30.1.13',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-08-05'),
(33, '10.30.1.21',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'Ubuntu 22.04', 'online',  '2024-07-01'),
(33, '10.30.1.22',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'Ubuntu 22.04', 'failure', '2024-07-01'),
(34, '10.30.1.31',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2023-12-25'),
(34, '10.30.1.32',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2023-12-25'),
(35, '10.30.1.41',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'offline', '2024-02-10'), -- offline rack
(36, '10.30.1.51',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-05-01'),
(36, '10.30.1.52',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-05-01'),

-- ====================
-- DC London West, rack_id 37–40
-- ====================
(37, '10.30.2.11',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-07-20'),
(37, '10.30.2.12',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-07-20'),
(38, '10.30.2.21',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'online',  '2024-03-05'),
(38, '10.30.2.22',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'failure', '2024-03-05'),
(39, '10.30.2.31',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-04-01'),
(39, '10.30.2.32',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-04-01'),
(40, '10.30.2.41',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2024-01-05'),
(40, '10.30.2.42',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'offline', '2024-01-05'),

-- ====================
-- DC Manchester North, rack_id 41–43
-- ====================
(41, '10.30.3.11',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-02-15'),
(41, '10.30.3.12',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-02-15'),
(42, '10.30.3.21',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-05-05'),
(42, '10.30.3.22',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-05-05'),
(43, '10.30.3.31',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'RHEL 9',       'offline', '2024-07-01'), -- offline rack

-- ====================
-- DC Slough Trading, rack_id 44–46
-- ====================
(44, '10.30.4.11',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-08-10'),
(44, '10.30.4.12',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-08-10'),
(45, '10.30.4.21',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2024-01-10'),
(45, '10.30.4.22',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'failure', '2024-01-10'),
(46, '10.30.4.31',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-07-25'),
(46, '10.30.4.32',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-07-25'),

-- ====================
-- DC Paris Central, rack_id 47–51
-- ====================
(47, '10.40.1.11',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-08-15'),
(47, '10.40.1.12',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-08-15'),
(47, '10.40.1.13',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-08-15'),
(48, '10.40.1.21',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'Ubuntu 22.04', 'online',  '2024-07-05'),
(48, '10.40.1.22',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'Ubuntu 22.04', 'online',  '2024-07-05'),
(49, '10.40.1.31',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2024-01-15'),
(49, '10.40.1.32',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'failure', '2024-01-15'),
(50, '10.40.1.41',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-02-20'),
(50, '10.40.1.42',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-02-20'),
(51, '10.40.1.51',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'offline', '2024-03-10'), -- offline rack

-- ====================
-- DC Marseille Port, rack_id 52–54
-- ====================
(52, '10.40.2.11',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-04-05'),
(52, '10.40.2.12',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-04-05'),
(53, '10.40.2.21',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-08-01'),
(53, '10.40.2.22',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-08-01'),
(54, '10.40.2.31',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'failure', '2024-01-20'),
(54, '10.40.2.32',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2024-01-20'),

-- ====================
-- DC Lyon Hub, rack_id 55–57
-- ====================
(55, '10.40.3.11',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-02-25'),
(55, '10.40.3.12',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-02-25'),
(56, '10.40.3.21',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-05-10'),
(56, '10.40.3.22',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-05-10'),
(57, '10.40.3.31',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'RHEL 9',       'offline', '2024-07-10'),
(57, '10.40.3.32',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'RHEL 9',       'online',  '2024-07-10'),

-- ====================
-- DC Madrid Hub, rack_id 58–61
-- ====================
(58, '10.50.1.11',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-08-20'),
(58, '10.50.1.12',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-08-20'),
(59, '10.50.1.21',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'Ubuntu 22.04', 'online',  '2024-07-15'),
(59, '10.50.1.22',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'Ubuntu 22.04', 'failure', '2024-07-15'),
(60, '10.50.1.31',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2024-01-25'),
(60, '10.50.1.32',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2024-01-25'),
(61, '10.50.1.41',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'offline', '2024-03-15'), -- offline rack

-- ====================
-- DC Barcelona Beach, rack_id 62–64
-- ====================
(62, '10.50.2.11',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-03-01'),
(62, '10.50.2.12',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-03-01'),
(63, '10.50.2.21',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-05-15'),
(63, '10.50.2.22',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'failure', '2024-05-15'),
(64, '10.50.2.31',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-08-05'),
(64, '10.50.2.32',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-08-05'),

-- ====================
-- DC Milan North, rack_id 65–68
-- ====================
(65, '10.60.1.11',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-04-10'),
(65, '10.60.1.12',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-04-10'),
(66, '10.60.1.21',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2024-01-30'),
(66, '10.60.1.22',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2024-01-30'),
(67, '10.60.1.31',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'offline', '2024-03-20'), -- offline rack
(68, '10.60.1.41',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'RHEL 9',       'online',  '2024-07-20'),
(68, '10.60.1.42',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'RHEL 9',       'failure', '2024-07-20'),

-- ====================
-- DC Rome Central, rack_id 69–71
-- ====================
(69, '10.60.2.11',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-03-05'),
(69, '10.60.2.12',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-03-05'),
(70, '10.60.2.21',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-05-20'),
(70, '10.60.2.22',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-05-20'),
(71, '10.60.2.31',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'offline', '2024-08-10'),
(71, '10.60.2.32',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-08-10'),

-- ====================
-- DC Zurich Vault, rack_id 72–75
-- ====================
(72, '10.70.1.11',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-08-25'),
(72, '10.70.1.12',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-08-25'),
(73, '10.70.1.21',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'Ubuntu 22.04', 'online',  '2024-07-25'),
(73, '10.70.1.22',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'Ubuntu 22.04', 'online',  '2024-07-25'),
(74, '10.70.1.31',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2024-02-01'),
(74, '10.70.1.32',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'failure', '2024-02-01'),
(75, '10.70.1.41',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-03-10'),
(75, '10.70.1.42',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-03-10'),

-- ====================
-- DC Geneva Lake, rack_id 76–78
-- ====================
(76, '10.70.2.11',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-04-15'),
(76, '10.70.2.12',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-04-15'),
(77, '10.70.2.21',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'online',  '2024-03-25'),
(77, '10.70.2.22',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'online',  '2024-03-25'),
(78, '10.70.2.31',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'offline', '2024-08-15'),
(78, '10.70.2.32',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-08-15'),

-- ====================
-- DC Warsaw East, rack_id 79–82
-- ====================
(79, '10.80.1.11',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-04-20'),
(79, '10.80.1.12',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-04-20'),
(80, '10.80.1.21',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2024-02-05'),
(80, '10.80.1.22',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'failure', '2024-02-05'),
(81, '10.80.1.31',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'RHEL 9',       'online',  '2024-07-30'),
(81, '10.80.1.32',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'RHEL 9',       'online',  '2024-07-30'),
(82, '10.80.1.41',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'offline', '2024-03-15'), -- offline rack

-- ====================
-- DC Krakow Tech, rack_id 83–85
-- ====================
(83, '10.80.2.11',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-05-25'),
(83, '10.80.2.12',  'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-05-25'),
(84, '10.80.2.21',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'online',  '2024-04-01'),
(84, '10.80.2.22',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'failure', '2024-04-01'),
(85, '10.80.2.31',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-08-20'),
(85, '10.80.2.32',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-08-20'),

-- ====================
-- DC Stockholm Arctic, rack_id 86–89
-- ====================
(86, '10.90.1.11',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-09-01'),
(86, '10.90.1.12',  'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-09-01'),
(87, '10.90.1.21',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-03-20'),
(87, '10.90.1.22',  'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-03-20'),
(88, '10.90.1.31',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2024-02-10'),
(88, '10.90.1.32',  'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'failure', '2024-02-10'),
(89, '10.90.1.41',  'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'RHEL 9',       'offline', '2024-08-01'), -- offline rack

-- ====================
-- DC Gothenburg West, rack_id 90–92
-- ====================
(90, '10.90.2.11',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-04-25'),
(90, '10.90.2.12',  'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-04-25'),
(91, '10.90.2.21',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-08-25'),
(91, '10.90.2.22',  'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-08-25'),
(92, '10.90.2.31',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'offline', '2024-04-05'),
(92, '10.90.2.32',  'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'online',  '2024-04-05'),

-- ====================
-- DC Dublin Green, rack_id 93–96
-- ====================
(93, '10.100.1.11', 'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-09-05'),
(93, '10.100.1.12', 'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-09-05'),
(94, '10.100.1.21', 'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-03-25'),
(94, '10.100.1.22', 'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-03-25'),
(95, '10.100.1.31', 'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2024-02-15'),
(95, '10.100.1.32', 'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'failure', '2024-02-15'),
(96, '10.100.1.41', 'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'Ubuntu 22.04', 'online',  '2024-08-05'),
(96, '10.100.1.42', 'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'Ubuntu 22.04', 'online',  '2024-08-05'),

-- ====================
-- DC Helsinki Nordic, rack_id 97–99
-- ====================
(97, '10.110.1.11', 'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-05-01'),
(97, '10.110.1.12', 'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-05-01'),
(98, '10.110.1.21', 'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-09-01'),
(98, '10.110.1.22', 'HPE',        'ProLiant DL360 Gen11','Intel Xeon Gold 6426Y',     512, 6.0, 'RHEL 9',       'online',  '2024-09-01'),
(99, '10.110.1.31', 'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'offline', '2024-04-10'),
(99, '10.110.1.32', 'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'failure', '2024-04-10'),

-- ====================
-- DC Oslo Fjord, rack_id 100–102
-- ====================
(100, '10.120.1.11', 'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-09-10'),
(100, '10.120.1.12', 'Dell',       'PowerEdge R760',   'Intel Xeon Platinum 8468',    1024, 12.0, 'RHEL 9',       'online',  '2024-09-10'),
(101, '10.120.1.21', 'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-04-01'),
(101, '10.120.1.22', 'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-04-01'),
(102, '10.120.1.31', 'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'offline', '2024-02-20'), -- offline rack

-- ====================
-- DC Copenhagen Breeze, rack_id 103–105
-- ====================
(103, '10.130.1.11', 'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-06-01'),
(103, '10.130.1.12', 'Dell',       'PowerEdge R650',   'Intel Xeon Gold 5315Y',       128, 1.5, 'Windows Server 2022', 'online',  '2024-06-01'),
(104, '10.130.1.21', 'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'RHEL 9',       'online',  '2024-08-10'),
(104, '10.130.1.22', 'HPE',        'ProLiant DL380 G11','Intel Xeon Silver 4410Y',    128, 2.5, 'RHEL 9',       'failure', '2024-08-10'),
(105, '10.130.1.31', 'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'online',  '2024-04-15'),
(105, '10.130.1.32', 'Cisco',      'UCS C240 M6',      'Intel Xeon Gold 6330',        256, 4.0, 'RHEL 8',       'online',  '2024-04-15'),

-- ====================
-- DC Vienna East, rack_id 106–108
-- ====================
(106, '10.140.1.11', 'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-05-05'),
(106, '10.140.1.12', 'Dell',       'PowerEdge R750',   'Intel Xeon Gold 6338',        256, 4.0, 'Ubuntu 22.04', 'online',  '2024-05-05'),
(107, '10.140.1.21', 'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2024-02-25'),
(107, '10.140.1.22', 'Lenovo',     'ThinkSystem SR650', 'Intel Xeon Gold 5317',        192, 3.0, 'CentOS 7',     'online',  '2024-02-25'),
(108, '10.140.1.31', 'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'failure', '2024-04-05'),
(108, '10.140.1.32', 'Supermicro', 'SYS-620P-TR',      'AMD EPYC 7543',               512, 8.0, 'Debian 11',    'online',  '2024-04-05');


-- ============================================================
-- seed_network_devices.sql — Заполнение таблицы network_devices
-- ============================================================
-- ~150 устройств: по 1–2 на стойку (в некоторых стойках до 3)
-- Типы: switch (~60%), router (~25%), firewall (~15%)
-- Вендоры: Cisco, Juniper, Arista, HPE Aruba, Fortinet, Palo Alto
-- Статусы: ~85% active, ~10% offline, ~5% offline

INSERT INTO network_devices (rack_id, type, vendor, model, ip_address, status) VALUES
-- ====================
-- DC Frankfurt Alpha (rack_id 1–5)
-- ====================
(1,  'switch',   'Cisco',      'Nexus 93180YC-FX3',  '10.10.1.1',   'active'),
(1,  'router',   'Juniper',    'MX304',               '10.10.1.2',   'active'),
(2,  'switch',   'Arista',     '7050SX3-48YC8',       '10.10.1.3',   'active'),
(2,  'firewall', 'Fortinet',   'FortiGate 600F',       '10.10.1.4',   'active'),
(3,  'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.10.1.5',   'active'),
(3,  'switch',   'HPE Aruba',  'CX 8325',              '10.10.1.6',   'active'),
(4,  'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.10.1.7',   'offline'),
(5,  'switch',   'Arista',     '7050SX3-48YC8',       '10.10.1.8',   'active'),
(5,  'router',   'Cisco',      'ASR 9902',             '10.10.1.9',   'active'),

-- ====================
-- DC Frankfurt Beta (rack_id 6–9)
-- ====================
(6,  'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.10.2.1',   'active'),
(6,  'router',   'Juniper',    'MX304',               '10.10.2.2',   'active'),
(7,  'switch',   'Arista',     '7050SX3-48YC8',       '10.10.2.3',   'active'),
(7,  'firewall', 'Palo Alto',  'PA-5250',              '10.10.2.4',   'active'),
(8,  'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.10.2.5',   'active'),
(9,  'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.10.2.6',   'offline'),

-- ====================
-- DC Munich Central (rack_id 10–13)
-- ====================
(10, 'switch',   'HPE Aruba',  'CX 8325',              '10.10.3.1',   'active'),
(10, 'router',   'Cisco',      'ASR 9902',             '10.10.3.2',   'active'),
(11, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.10.3.3',   'active'),
(11, 'firewall', 'Fortinet',   'FortiGate 400F',       '10.10.3.4',   'active'),
(12, 'switch',   'Arista',     '7050SX3-48YC8',       '10.10.3.5',   'active'),
(13, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.10.3.6',   'active'),

-- ====================
-- DC Berlin Gate (rack_id 14–16)
-- ====================
(14, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.10.4.1',   'active'),
(14, 'router',   'Juniper',    'MX304',               '10.10.4.2',   'active'),
(15, 'switch',   'Arista',     '7050SX3-48YC8',       '10.10.4.3',   'active'),
(15, 'firewall', 'Palo Alto',  'PA-5250',              '10.10.4.4',   'offline'),
(16, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.10.4.5',   'offline'),

-- ====================
-- DC Hamburg Port (rack_id 17–19)
-- ====================
(17, 'switch',   'HPE Aruba',  'CX 8325',              '10.10.5.1',   'active'),
(17, 'router',   'Cisco',      'ASR 9902',             '10.10.5.2',   'active'),
(18, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.10.5.3',   'active'),
(19, 'switch',   'Arista',     '7050SX3-48YC8',       '10.10.5.4',   'active'),
(19, 'firewall', 'Fortinet',   'FortiGate 600F',       '10.10.5.5',   'active'),

-- ====================
-- DC Amsterdam Ring (rack_id 20–24)
-- ====================
(20, 'switch',   'Cisco',      'Nexus 93360YC-FX2',   '10.20.1.1',   'active'),
(20, 'router',   'Juniper',    'MX480',               '10.20.1.2',   'active'),
(21, 'switch',   'Arista',     '7050SX3-48YC8',       '10.20.1.3',   'active'),
(21, 'firewall', 'Palo Alto',  'PA-5280',              '10.20.1.4',   'active'),
(22, 'switch',   'Cisco',      'Nexus 93360YC-FX2',   '10.20.1.5',   'active'),
(23, 'switch',   'HPE Aruba',  'CX 8325',              '10.20.1.6',   'active'),
(23, 'router',   'Cisco',      'ASR 9902',             '10.20.1.7',   'active'),
(24, 'switch',   'Cisco',      'Nexus 93360YC-FX2',   '10.20.1.8',   'offline'),

-- ====================
-- DC Rotterdam Dock (rack_id 25–27)
-- ====================
(25, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.20.2.1',   'active'),
(25, 'firewall', 'Fortinet',   'FortiGate 400F',       '10.20.2.2',   'active'),
(26, 'switch',   'Arista',     '7050SX3-48YC8',       '10.20.2.3',   'active'),
(27, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.20.2.4',   'active'),
(27, 'router',   'Juniper',    'MX304',               '10.20.2.5',   'offline'),

-- ====================
-- DC Eindhoven Tech (rack_id 28–31)
-- ====================
(28, 'switch',   'HPE Aruba',  'CX 8325',              '10.20.3.1',   'active'),
(28, 'router',   'Cisco',      'ASR 9902',             '10.20.3.2',   'active'),
(29, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.20.3.3',   'active'),
(30, 'switch',   'Arista',     '7050SX3-48YC8',       '10.20.3.4',   'active'),
(30, 'firewall', 'Palo Alto',  'PA-5250',              '10.20.3.5',   'active'),
(31, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.20.3.6',   'active'),

-- ====================
-- DC London Docks (rack_id 32–36)
-- ====================
(32, 'switch',   'Cisco',      'Nexus 93360YC-FX2',   '10.30.1.1',   'active'),
(32, 'router',   'Juniper',    'MX480',               '10.30.1.2',   'active'),
(33, 'switch',   'Arista',     '7050SX3-48YC8',       '10.30.1.3',   'active'),
(33, 'firewall', 'Fortinet',   'FortiGate 600F',       '10.30.1.4',   'active'),
(34, 'switch',   'Cisco',      'Nexus 93360YC-FX2',   '10.30.1.5',   'active'),
(35, 'switch',   'HPE Aruba',  'CX 8325',              '10.30.1.6',   'offline'),
(36, 'switch',   'Cisco',      'Nexus 93360YC-FX2',   '10.30.1.7',   'active'),
(36, 'router',   'Cisco',      'ASR 9902',             '10.30.1.8',   'active'),

-- ====================
-- DC London West (rack_id 37–40)
-- ====================
(37, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.30.2.1',   'active'),
(37, 'firewall', 'Palo Alto',  'PA-5250',              '10.30.2.2',   'active'),
(38, 'switch',   'Arista',     '7050SX3-48YC8',       '10.30.2.3',   'active'),
(38, 'router',   'Juniper',    'MX304',               '10.30.2.4',   'active'),
(39, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.30.2.5',   'active'),
(40, 'switch',   'HPE Aruba',  'CX 8325',              '10.30.2.6',   'active'),

-- ====================
-- DC Manchester North (rack_id 41–43)
-- ====================
(41, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.30.3.1',   'active'),
(41, 'router',   'Cisco',      'ASR 9902',             '10.30.3.2',   'active'),
(42, 'switch',   'Arista',     '7050SX3-48YC8',       '10.30.3.3',   'active'),
(43, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.30.3.4',   'offline'),

-- ====================
-- DC Slough Trading (rack_id 44–46)
-- ====================
(44, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.30.4.1',   'active'),
(44, 'firewall', 'Fortinet',   'FortiGate 400F',       '10.30.4.2',   'active'),
(45, 'switch',   'Arista',     '7050SX3-48YC8',       '10.30.4.3',   'active'),
(46, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.30.4.4',   'active'),
(46, 'router',   'Juniper',    'MX304',               '10.30.4.5',   'active'),

-- ====================
-- DC Paris Central (rack_id 47–51)
-- ====================
(47, 'switch',   'Cisco',      'Nexus 93360YC-FX2',   '10.40.1.1',   'active'),
(47, 'router',   'Juniper',    'MX480',               '10.40.1.2',   'active'),
(48, 'switch',   'Arista',     '7050SX3-48YC8',       '10.40.1.3',   'active'),
(48, 'firewall', 'Palo Alto',  'PA-5280',              '10.40.1.4',   'active'),
(49, 'switch',   'Cisco',      'Nexus 93360YC-FX2',   '10.40.1.5',   'active'),
(50, 'switch',   'HPE Aruba',  'CX 8325',              '10.40.1.6',   'active'),
(50, 'router',   'Cisco',      'ASR 9902',             '10.40.1.7',   'active'),
(51, 'switch',   'Cisco',      'Nexus 93360YC-FX2',   '10.40.1.8',   'offline'),

-- ====================
-- DC Marseille Port (rack_id 52–54)
-- ====================
(52, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.40.2.1',   'active'),
(52, 'firewall', 'Fortinet',   'FortiGate 400F',       '10.40.2.2',   'active'),
(53, 'switch',   'Arista',     '7050SX3-48YC8',       '10.40.2.3',   'active'),
(54, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.40.2.4',   'active'),
(54, 'router',   'Juniper',    'MX304',               '10.40.2.5',   'offline'),

-- ====================
-- DC Lyon Hub (rack_id 55–57)
-- ====================
(55, 'switch',   'HPE Aruba',  'CX 8325',              '10.40.3.1',   'active'),
(55, 'router',   'Cisco',      'ASR 9902',             '10.40.3.2',   'active'),
(56, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.40.3.3',   'active'),
(57, 'switch',   'Arista',     '7050SX3-48YC8',       '10.40.3.4',   'active'),
(57, 'firewall', 'Palo Alto',  'PA-5250',              '10.40.3.5',   'active'),

-- ====================
-- DC Madrid Hub (rack_id 58–61)
-- ====================
(58, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.50.1.1',   'active'),
(58, 'router',   'Juniper',    'MX304',               '10.50.1.2',   'active'),
(59, 'switch',   'Arista',     '7050SX3-48YC8',       '10.50.1.3',   'active'),
(59, 'firewall', 'Fortinet',   'FortiGate 600F',       '10.50.1.4',   'active'),
(60, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.50.1.5',   'active'),
(61, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.50.1.6',   'offline'),

-- ====================
-- DC Barcelona Beach (rack_id 62–64)
-- ====================
(62, 'switch',   'HPE Aruba',  'CX 8325',              '10.50.2.1',   'active'),
(62, 'router',   'Cisco',      'ASR 9902',             '10.50.2.2',   'active'),
(63, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.50.2.3',   'active'),
(64, 'switch',   'Arista',     '7050SX3-48YC8',       '10.50.2.4',   'active'),
(64, 'firewall', 'Palo Alto',  'PA-5250',              '10.50.2.5',   'active'),

-- ====================
-- DC Milan North (rack_id 65–68)
-- ====================
(65, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.60.1.1',   'active'),
(65, 'router',   'Juniper',    'MX304',               '10.60.1.2',   'active'),
(66, 'switch',   'Arista',     '7050SX3-48YC8',       '10.60.1.3',   'active'),
(67, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.60.1.4',   'offline'),
(68, 'switch',   'HPE Aruba',  'CX 8325',              '10.60.1.5',   'active'),
(68, 'firewall', 'Fortinet',   'FortiGate 400F',       '10.60.1.6',   'active'),

-- ====================
-- DC Rome Central (rack_id 69–71)
-- ====================
(69, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.60.2.1',   'active'),
(69, 'router',   'Cisco',      'ASR 9902',             '10.60.2.2',   'active'),
(70, 'switch',   'Arista',     '7050SX3-48YC8',       '10.60.2.3',   'active'),
(71, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.60.2.4',   'active'),
(71, 'firewall', 'Palo Alto',  'PA-5250',              '10.60.2.5',   'offline'),

-- ====================
-- DC Zurich Vault (rack_id 72–75)
-- ====================
(72, 'switch',   'Cisco',      'Nexus 93360YC-FX2',   '10.70.1.1',   'active'),
(72, 'router',   'Juniper',    'MX480',               '10.70.1.2',   'active'),
(73, 'switch',   'Arista',     '7050SX3-48YC8',       '10.70.1.3',   'active'),
(73, 'firewall', 'Palo Alto',  'PA-5280',              '10.70.1.4',   'active'),
(74, 'switch',   'Cisco',      'Nexus 93360YC-FX2',   '10.70.1.5',   'active'),
(75, 'switch',   'HPE Aruba',  'CX 8325',              '10.70.1.6',   'active'),
(75, 'router',   'Cisco',      'ASR 9902',             '10.70.1.7',   'active'),

-- ====================
-- DC Geneva Lake (rack_id 76–78)
-- ====================
(76, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.70.2.1',   'active'),
(76, 'firewall', 'Fortinet',   'FortiGate 600F',       '10.70.2.2',   'active'),
(77, 'switch',   'Arista',     '7050SX3-48YC8',       '10.70.2.3',   'active'),
(78, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.70.2.4',   'active'),
(78, 'router',   'Juniper',    'MX304',               '10.70.2.5',   'offline'),

-- ====================
-- DC Warsaw East (rack_id 79–82)
-- ====================
(79, 'switch',   'HPE Aruba',  'CX 8325',              '10.80.1.1',   'active'),
(79, 'router',   'Cisco',      'ASR 9902',             '10.80.1.2',   'active'),
(80, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.80.1.3',   'active'),
(81, 'switch',   'Arista',     '7050SX3-48YC8',       '10.80.1.4',   'active'),
(81, 'firewall', 'Palo Alto',  'PA-5250',              '10.80.1.5',   'active'),
(82, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.80.1.6',   'offline'),

-- ====================
-- DC Krakow Tech (rack_id 83–85)
-- ====================
(83, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.80.2.1',   'active'),
(83, 'router',   'Juniper',    'MX304',               '10.80.2.2',   'active'),
(84, 'switch',   'Arista',     '7050SX3-48YC8',       '10.80.2.3',   'active'),
(85, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.80.2.4',   'active'),
(85, 'firewall', 'Fortinet',   'FortiGate 400F',       '10.80.2.5',   'active'),

-- ====================
-- DC Stockholm Arctic (rack_id 86–89)
-- ====================
(86, 'switch',   'Cisco',      'Nexus 93360YC-FX2',   '10.90.1.1',   'active'),
(86, 'router',   'Juniper',    'MX480',               '10.90.1.2',   'active'),
(87, 'switch',   'Arista',     '7050SX3-48YC8',       '10.90.1.3',   'active'),
(87, 'firewall', 'Palo Alto',  'PA-5280',              '10.90.1.4',   'active'),
(88, 'switch',   'Cisco',      'Nexus 93360YC-FX2',   '10.90.1.5',   'active'),
(89, 'switch',   'Cisco',      'Nexus 93360YC-FX2',   '10.90.1.6',   'offline'),

-- ====================
-- DC Gothenburg West (rack_id 90–92)
-- ====================
(90, 'switch',   'HPE Aruba',  'CX 8325',              '10.90.2.1',   'active'),
(90, 'router',   'Cisco',      'ASR 9902',             '10.90.2.2',   'active'),
(91, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.90.2.3',   'active'),
(92, 'switch',   'Arista',     '7050SX3-48YC8',       '10.90.2.4',   'active'),
(92, 'firewall', 'Fortinet',   'FortiGate 400F',       '10.90.2.5',   'active'),

-- ====================
-- DC Dublin Green (rack_id 93–96)
-- ====================
(93, 'switch',   'Cisco',      'Nexus 93360YC-FX2',   '10.100.1.1',  'active'),
(93, 'router',   'Juniper',    'MX480',               '10.100.1.2',  'active'),
(94, 'switch',   'Arista',     '7050SX3-48YC8',       '10.100.1.3',  'active'),
(94, 'firewall', 'Palo Alto',  'PA-5280',              '10.100.1.4',  'active'),
(95, 'switch',   'Cisco',      'Nexus 93360YC-FX2',   '10.100.1.5',  'active'),
(96, 'switch',   'HPE Aruba',  'CX 8325',              '10.100.1.6',  'active'),
(96, 'router',   'Cisco',      'ASR 9902',             '10.100.1.7',  'active'),

-- ====================
-- DC Helsinki Nordic (rack_id 97–99)
-- ====================
(97, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.110.1.1',  'active'),
(97, 'firewall', 'Fortinet',   'FortiGate 600F',       '10.110.1.2',  'active'),
(98, 'switch',   'Arista',     '7050SX3-48YC8',       '10.110.1.3',  'active'),
(99, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.110.1.4',  'active'),
(99, 'router',   'Juniper',    'MX304',               '10.110.1.5',  'offline'),

-- ====================
-- DC Oslo Fjord (rack_id 100–102)
-- ====================
(100, 'switch',   'Cisco',      'Nexus 93360YC-FX2',   '10.120.1.1',  'active'),
(100, 'router',   'Juniper',    'MX480',               '10.120.1.2',  'active'),
(101, 'switch',   'Arista',     '7050SX3-48YC8',       '10.120.1.3',  'active'),
(101, 'firewall', 'Palo Alto',  'PA-5280',              '10.120.1.4',  'active'),
(102, 'switch',   'Cisco',      'Nexus 93360YC-FX2',   '10.120.1.5',  'offline'),

-- ====================
-- DC Copenhagen Breeze (rack_id 103–105)
-- ====================
(103, 'switch',   'HPE Aruba',  'CX 8325',              '10.130.1.1',  'active'),
(103, 'router',   'Cisco',      'ASR 9902',             '10.130.1.2',  'active'),
(104, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.130.1.3',  'active'),
(105, 'switch',   'Arista',     '7050SX3-48YC8',       '10.130.1.4',  'active'),
(105, 'firewall', 'Fortinet',   'FortiGate 400F',       '10.130.1.5',  'active'),

-- ====================
-- DC Vienna East (rack_id 106–108)
-- ====================
(106, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.140.1.1',  'active'),
(106, 'router',   'Juniper',    'MX304',               '10.140.1.2',  'active'),
(107, 'switch',   'Arista',     '7050SX3-48YC8',       '10.140.1.3',  'active'),
(108, 'switch',   'Cisco',      'Nexus 93180YC-FX3',   '10.140.1.4',  'active'),
(108, 'firewall', 'Palo Alto',  'PA-5250',              '10.140.1.5',  'offline');


-- ============================================================
-- seed_services.sql — Заполнение таблицы services
-- ============================================================
-- 40 сервисов: инфраструктурные, платформенные, бизнес-приложения
-- Разные команды-владельцы: Platform, DevOps, SRE, Data, Security, Backend, Frontend

INSERT INTO services (name, description, owner_team) VALUES
-- ====================
-- Инфраструктурные сервисы (Infrastructure)
-- ====================
('Kubernetes Production Cluster',   'Основной кластер Kubernetes для продакшен-нагрузок',           'Platform Engineering'),
('Kubernetes Staging Cluster',      'Кластер Kubernetes для стейджинг-среды',                       'Platform Engineering'),
('Service Mesh Istio',              'Service mesh на базе Istio для управления трафиком',           'Platform Engineering'),
('Vault Secret Management',         'Хранилище секретов HashiCorp Vault',                          'Security'),
('Consul Service Discovery',        'Обнаружение сервисов и health checking через Consul',          'Platform Engineering'),
('Prometheus Monitoring',           'Система мониторинга и алертинга Prometheus + Alertmanager',   'SRE'),
('Grafana Dashboards',              'Визуализация метрик и дашборды Grafana',                      'SRE'),
('ELK Logging Stack',               'Централизованное логирование Elasticsearch + Logstash + Kibana', 'SRE'),
('Jaeger Distributed Tracing',      'Распределённая трассировка на базе Jaeger',                   'SRE'),
('Nginx Ingress Controller',        'Ingress-контроллер на базе Nginx',                            'Platform Engineering'),
('Cert Manager',                     'Автоматическое управление TLS-сертификатами',                'Security'),
('Harbor Container Registry',       'Реестр контейнеров Harbor',                                  'Platform Engineering'),

-- ====================
-- Базы данных и хранилища (Data Layer)
-- ====================
('PostgreSQL Primary Cluster',      'Основной кластер PostgreSQL (Patroni + etcd)',               'Data Engineering'),
('PostgreSQL Reporting Replica',    'Реплика PostgreSQL для аналитических запросов',               'Data Engineering'),
('MongoDB Atlas Cluster',           'Кластер MongoDB для документо-ориентированных данных',       'Data Engineering'),
('Redis Cache Cluster',             'Кластер Redis для кеширования',                              'Backend'),
('Elasticsearch Search Engine',     'Полнотекстовый поиск на базе Elasticsearch',                 'Data Engineering'),
('Kafka Message Broker',            'Брокер сообщений Apache Kafka',                              'Data Engineering'),
('RabbitMQ Message Queue',          'Очередь сообщений RabbitMQ',                                 'Backend'),
('MinIO Object Storage',            'Объектное хранилище MinIO (S3-совместимое)',                 'Data Engineering'),

-- ====================
-- CI/CD и инструменты разработки
-- ====================
('GitLab CI Runners',               'Раннеры GitLab CI/CD для сборки и деплоя',                   'DevOps'),
('ArgoCD GitOps',                   'Continuous Deployment через ArgoCD',                         'DevOps'),
('SonarQube Code Quality',          'Статический анализ кода SonarQube',                          'DevOps'),
('Artifactory Binary Repository',   'Хранилище артефактов JFrog Artifactory',                      'DevOps'),

-- ====================
-- Бизнес-приложения и API
-- ====================
('User Authentication Service',     'Сервис аутентификации и авторизации (OAuth2/OIDC)',          'Security'),
('Payment Processing API',          'API для обработки платежей',                                 'Backend'),
('Notification Service',            'Сервис отправки уведомлений (email, SMS, push)',             'Backend'),
('Order Management System',         'Система управления заказами',                                'Backend'),
('Inventory Management API',        'API управления складскими запасами',                         'Backend'),
('Customer CRM Gateway',            'Шлюз к CRM-системе',                                         'Backend'),
('Analytics Data Pipeline',         'Пайплайн обработки и агрегации данных',                      'Data Engineering'),
('ML Model Serving Platform',       'Платформа для инференса ML-моделей',                         'Data Engineering'),
('Real-time Chat WebSocket',        'Чат на WebSocket для поддержки клиентов',                    'Frontend'),
('Content Delivery CDN',            'Сеть доставки контента',                                     'Platform Engineering'),
('Video Transcoding Service',       'Сервис транскодирования видео',                              'Backend'),

-- ====================
-- Служебные и внутренние сервисы
-- ====================
('LDAP Directory Service',          'Служба каталогов LDAP для аутентификации',                   'Security'),
('DNS Internal Resolver',           'Внутренний DNS-резолвер',                                    'Platform Engineering'),
('DHCP Management',                  'Управление DHCP-пулами',                                    'Platform Engineering'),
('Backup & Restore Service',        'Система резервного копирования и восстановления',            'SRE'),
('Scheduled Job Runner',            'Планировщик периодических задач (Cron)',                     'Platform Engineering');

-- ============================================================
-- seed_server_services.sql — Заполнение таблицы server_services
-- ============================================================
-- Связывает серверы (1–226) с сервисами (1–39)
-- Каждый сервис развёрнут на 2–6 серверах (отказоустойчивость)
-- Продакшен-сервисы на мощных серверах (R760, R750, DL360 Gen11)
-- Инструментальные на средних серверах
-- Всего ~150 связей

INSERT INTO server_services (server_id, service_id, deployed_at) VALUES
-- ====================
-- Kubernetes Production Cluster (id=1) — на 6 мощных серверах
-- ====================
(5,  1,  '2024-07-05 10:00:00'),  -- HPE DL360 Gen11, FRA-A-R05
(14, 1,  '2024-08-25 10:00:00'),  -- Dell R760, BER-G-R01
(20, 1,  '2024-08-05 10:00:00'),  -- Dell R760, AMS-R-R01
(32, 1,  '2024-08-10 10:00:00'),  -- Dell R760, LON-D-R01
(47, 1,  '2024-08-20 10:00:00'),  -- Dell R760, PAR-C-R01
(86, 1,  '2024-09-05 10:00:00'),  -- Dell R760, STO-A-R01

-- ====================
-- Kubernetes Staging Cluster (id=2) — на 3 серверах
-- ====================
(1,  2,  '2024-03-20 08:00:00'),  -- Dell R750, FRA-A-R01
(10, 2,  '2024-03-30 08:00:00'),  -- Dell R750, MUC-C-R01
(37, 2,  '2024-04-05 08:00:00'),  -- Dell R750, LON-W-R01

-- ====================
-- Service Mesh Istio (id=3) — на 3 серверах
-- ====================
(6,  3,  '2024-03-25 09:00:00'),  -- Dell R750, FRA-B-R01
(21, 3,  '2024-06-28 09:00:00'),  -- HPE DL380 G11, AMS-R-R02
(48, 3,  '2024-07-08 09:00:00'),  -- HPE DL380 G11, PAR-C-R02

-- ====================
-- Vault Secret Management (id=4) — на 3 серверах (Security)
-- ====================
(8,  4,  '2024-04-12 11:00:00'),  -- Dell R650, FRA-B-R03
(29, 4,  '2024-04-28 11:00:00'),  -- Dell R650, EIN-T-R02
(63, 4,  '2024-05-18 11:00:00'),  -- Dell R650, BCN-B-R02

-- ====================
-- Consul Service Discovery (id=5) — на 4 серверах
-- ====================
(2,  5,  '2024-03-18 09:30:00'),  -- Dell R750, FRA-A-R01
(11, 5,  '2024-03-28 09:30:00'),  -- Dell R750, MUC-C-R01
(25, 5,  '2024-04-02 09:30:00'),  -- Dell R750, ROT-D-R01
(39, 5,  '2024-04-08 09:30:00'),  -- Dell R750, LON-W-R02

-- ====================
-- Prometheus Monitoring (id=6) — на 4 серверах (SRE)
-- ====================
(3,  6,  '2024-06-05 10:30:00'),  -- HPE DL380 G11, FRA-A-R01
(17, 6,  '2024-01-20 10:30:00'),  -- Supermicro, HAM-P-R01
(30, 6,  '2024-07-02 10:30:00'),  -- HPE DL380 G11, EIN-T-R03
(50, 6,  '2024-02-25 10:30:00'),  -- Supermicro, PAR-C-R04

-- ====================
-- Grafana Dashboards (id=7) — на 2 серверах
-- ====================
(3,  7,  '2024-06-05 11:00:00'),  -- HPE DL380 G11, FRA-A-R01
(30, 7,  '2024-07-02 11:00:00'),  -- HPE DL380 G11, EIN-T-R03

-- ====================
-- ELK Logging Stack (id=8) — на 5 серверах (SRE)
-- ====================
(16, 8,  '2024-02-01 08:00:00'),  -- Supermicro, HAM-P-R01
(23, 8,  '2024-02-05 08:00:00'),  -- Supermicro, AMS-R-R04
(28, 8,  '2024-02-10 08:00:00'),  -- Supermicro, EIN-T-R01
(41, 8,  '2024-02-20 08:00:00'),  -- Supermicro, MAN-N-R01
(55, 8,  '2024-03-01 08:00:00'),  -- Supermicro, LYO-H-R01

-- ====================
-- Jaeger Distributed Tracing (id=9) — на 2 серверах
-- ====================
(18, 9,  '2024-04-25 10:00:00'),  -- Dell R650, HAM-P-R02
(29, 9,  '2024-04-28 10:00:00'),  -- Dell R650, EIN-T-R02

-- ====================
-- Nginx Ingress Controller (id=10) — на 4 серверах
-- ====================
(6,  10, '2024-03-25 14:00:00'),  -- Dell R750, FRA-B-R01
(21, 10, '2024-06-28 14:00:00'),  -- HPE DL380 G11, AMS-R-R02
(33, 10, '2024-07-05 14:00:00'),  -- HPE DL380 G11, LON-D-R02
(48, 10, '2024-07-08 14:00:00'),  -- HPE DL380 G11, PAR-C-R02

-- ====================
-- Cert Manager (id=11) — на 2 серверах
-- ====================
(8,  11, '2024-04-12 15:00:00'),  -- Dell R650, FRA-B-R03
(63, 11, '2024-05-18 15:00:00'),  -- Dell R650, BCN-B-R02

-- ====================
-- Harbor Container Registry (id=12) — на 3 серверах
-- ====================
(12, 12, '2024-04-01 09:00:00'),  -- Lenovo SR650, MUC-C-R02
(34, 12, '2024-01-05 09:00:00'),  -- Lenovo SR650, LON-D-R03
(45, 12, '2024-01-15 09:00:00'),  -- Lenovo SR650, SLO-T-R02

-- ====================
-- PostgreSQL Primary Cluster (id=13) — на 4 серверах (Data)
-- ====================
(5,  13, '2024-07-05 08:00:00'),  -- HPE DL360 Gen11, FRA-A-R05
(26, 13, '2024-07-20 08:00:00'),  -- HPE DL360 Gen11, ROT-D-R02
(46, 13, '2024-07-30 08:00:00'),  -- HPE DL360 Gen11, SLO-T-R03
(53, 13, '2024-08-05 08:00:00'),  -- HPE DL360 Gen11, MAR-P-R02

-- ====================
-- PostgreSQL Reporting Replica (id=14) — на 2 серверах
-- ====================
(64, 14, '2024-08-10 08:00:00'),  -- HPE DL360 Gen11, BCN-B-R03
(85, 14, '2024-08-25 08:00:00'),  -- HPE DL360 Gen11, KRK-T-R03

-- ====================
-- MongoDB Atlas Cluster (id=15) — на 4 серверах
-- ====================
(9,  15, '2024-01-25 10:00:00'),  -- Supermicro, FRA-B-R02
(22, 15, '2024-01-30 10:00:00'),  -- Supermicro, MUC-C-R03
(35, 15, '2024-02-15 10:00:00'),  -- Supermicro, LON-D-R04
(69, 15, '2024-03-10 10:00:00'),  -- Supermicro, ROM-C-R01

-- ====================
-- Redis Cache Cluster (id=16) — на 4 серверах (Backend)
-- ====================
(2,  16, '2024-03-18 11:00:00'),  -- Dell R750, FRA-A-R01
(11, 16, '2024-03-28 11:00:00'),  -- Dell R750, MUC-C-R01
(25, 16, '2024-04-02 11:00:00'),  -- Dell R750, ROT-D-R01
(39, 16, '2024-04-08 11:00:00'),  -- Dell R750, LON-W-R02

-- ====================
-- Elasticsearch Search Engine (id=17) — на 4 серверах
-- ====================
(16, 17, '2024-02-01 14:00:00'),  -- Supermicro, HAM-P-R01
(28, 17, '2024-02-10 14:00:00'),  -- Supermicro, EIN-T-R01
(41, 17, '2024-02-20 14:00:00'),  -- Supermicro, MAN-N-R01
(55, 17, '2024-03-01 14:00:00'),  -- Supermicro, LYO-H-R01

-- ====================
-- Kafka Message Broker (id=18) — на 5 серверах (Data)
-- ====================
(7,  18, '2024-06-15 10:00:00'),  -- HPE DL380 G11, FRA-B-R02
(19, 18, '2024-07-15 10:00:00'),  -- HPE DL360 Gen11, HAM-P-R03
(33, 18, '2024-07-05 10:00:00'),  -- HPE DL380 G11, LON-D-R02
(52, 18, '2024-04-10 10:00:00'),  -- Dell R750, MAR-P-R01
(76, 18, '2024-04-20 10:00:00'),  -- Dell R750, GEN-L-R01

-- ====================
-- RabbitMQ Message Queue (id=19) — на 3 серверах
-- ====================
(4,  19, '2024-06-05 08:00:00'),  -- HPE DL380 G11, FRA-A-R01
(26, 19, '2024-07-20 08:00:00'),  -- HPE DL360 Gen11, ROT-D-R02
(53, 19, '2024-08-05 08:00:00'),  -- HPE DL360 Gen11, MAR-P-R02

-- ====================
-- MinIO Object Storage (id=20) — на 4 серверах
-- ====================
(12, 20, '2024-04-01 12:00:00'),  -- Lenovo SR650, MUC-C-R02
(34, 20, '2024-01-05 12:00:00'),  -- Lenovo SR650, LON-D-R03
(45, 20, '2024-01-15 12:00:00'),  -- Lenovo SR650, SLO-T-R02
(60, 20, '2024-01-30 12:00:00'),  -- Lenovo SR650, MAD-H-R03

-- ====================
-- GitLab CI Runners (id=21) — на 4 серверах (DevOps)
-- ====================
(13, 21, '2024-04-01 08:00:00'),  -- Lenovo SR650, MUC-C-R02
(22, 21, '2024-01-30 08:00:00'),  -- Supermicro, MUC-C-R03
(49, 21, '2024-01-20 08:00:00'),  -- Lenovo SR650, PAR-C-R03
(66, 21, '2024-02-05 08:00:00'),  -- Lenovo SR650, MIL-N-R02

-- ====================
-- ArgoCD GitOps (id=22) — на 2 серверах
-- ====================
(10, 22, '2024-03-30 10:00:00'),  -- Dell R750, MUC-C-R01
(37, 22, '2024-04-05 10:00:00'),  -- Dell R750, LON-W-R01

-- ====================
-- SonarQube Code Quality (id=23) — на 2 серверах
-- ====================
(13, 23, '2024-04-01 14:00:00'),  -- Lenovo SR650, MUC-C-R02
(49, 23, '2024-01-20 14:00:00'),  -- Lenovo SR650, PAR-C-R03

-- ====================
-- Artifactory Binary Repository (id=24) — на 2 серверах
-- ====================
(34, 24, '2024-01-05 10:00:00'),  -- Lenovo SR650, LON-D-R03
(60, 24, '2024-01-30 10:00:00'),  -- Lenovo SR650, MAD-H-R03

-- ====================
-- User Authentication Service (id=25) — на 4 серверах (Security)
-- ====================
(1,  25, '2024-03-20 08:30:00'),  -- Dell R750, FRA-A-R01
(17, 25, '2024-01-20 08:30:00'),  -- Supermicro, HAM-P-R01
(36, 25, '2024-05-05 08:30:00'),  -- Dell R650, LON-D-R05
(70, 25, '2024-05-25 08:30:00'),  -- Dell R650, ROM-C-R02

-- ====================
-- Payment Processing API (id=26) — на 4 серверах (Backend)
-- ====================
(5,  26, '2024-07-05 09:00:00'),  -- HPE DL360 Gen11, FRA-A-R05
(20, 26, '2024-08-05 09:00:00'),  -- Dell R760, AMS-R-R01
(47, 26, '2024-08-20 09:00:00'),  -- Dell R760, PAR-C-R01
(72, 26, '2024-08-30 09:00:00'),  -- Dell R760, ZUR-V-R01

-- ====================
-- Notification Service (id=27) — на 3 серверах
-- ====================
(17, 27, '2024-01-20 11:00:00'),  -- Supermicro, HAM-P-R01
(36, 27, '2024-05-05 11:00:00'),  -- Dell R650, LON-D-R05
(62, 27, '2024-03-05 11:00:00'),  -- Supermicro, BCN-B-R01

-- ====================
-- Order Management System (id=28) — на 4 серверах
-- ====================
(14, 28, '2024-08-25 09:00:00'),  -- Dell R760, BER-G-R01
(44, 28, '2024-08-15 09:00:00'),  -- Dell R760, SLO-T-R01
(58, 28, '2024-08-25 09:00:00'),  -- Dell R760, MAD-H-R01
(93, 28, '2024-09-10 09:00:00'),  -- Dell R760, DUB-G-R01

-- ====================
-- Inventory Management API (id=29) — на 3 серверах
-- ====================
(15, 29, '2023-12-20 08:00:00'),  -- Lenovo SR650, BER-G-R02
(40, 29, '2024-01-10 08:00:00'),  -- Lenovo SR650, LON-W-R04
(60, 29, '2024-01-30 08:00:00'),  -- Lenovo SR650, MAD-H-R03

-- ====================
-- Customer CRM Gateway (id=30) — на 3 серверах
-- ====================
(3,  30, '2024-06-05 09:00:00'),  -- HPE DL380 G11, FRA-A-R01
(30, 30, '2024-07-02 09:00:00'),  -- HPE DL380 G11, EIN-T-R03
(48, 30, '2024-07-08 09:00:00'),  -- HPE DL380 G11, PAR-C-R02

-- ====================
-- Analytics Data Pipeline (id=31) — на 4 серверах (Data)
-- ====================
(7,  31, '2024-06-15 12:00:00'),  -- HPE DL380 G11, FRA-B-R02
(19, 31, '2024-07-15 12:00:00'),  -- HPE DL360 Gen11, HAM-P-R03
(52, 31, '2024-04-10 12:00:00'),  -- Dell R750, MAR-P-R01
(76, 31, '2024-04-20 12:00:00'),  -- Dell R750, GEN-L-R01

-- ====================
-- ML Model Serving Platform (id=32) — на 3 серверах (GPU-эквивалент)
-- ====================
(20, 32, '2024-08-05 14:00:00'),  -- Dell R760, AMS-R-R01
(32, 32, '2024-08-10 14:00:00'),  -- Dell R760, LON-D-R01
(86, 32, '2024-09-05 14:00:00'),  -- Dell R760, STO-A-R01

-- ====================
-- Real-time Chat WebSocket (id=33) — на 3 серверах
-- ====================
(18, 33, '2024-04-25 09:00:00'),  -- Dell R650, HAM-P-R02
(56, 33, '2024-05-15 09:00:00'),  -- Dell R650, LYO-H-R02
(70, 33, '2024-05-25 09:00:00'),  -- Dell R650, ROM-C-R02

-- ====================
-- Content Delivery CDN (id=34) — на 4 серверах
-- ====================
(6,  34, '2024-03-25 16:00:00'),  -- Dell R750, FRA-B-R01
(11, 34, '2024-03-28 16:00:00'),  -- Dell R750, MUC-C-R01
(33, 34, '2024-07-05 16:00:00'),  -- HPE DL380 G11, LON-D-R02
(59, 34, '2024-07-20 16:00:00'),  -- HPE DL380 G11, MAD-H-R02

-- ====================
-- Video Transcoding Service (id=35) — на 3 серверах
-- ====================
(9,  35, '2024-01-25 14:00:00'),  -- Supermicro, FRA-B-R02
(35, 35, '2024-02-15 14:00:00'),  -- Supermicro, LON-D-R04
(69, 35, '2024-03-10 14:00:00'),  -- Supermicro, ROM-C-R01

-- ====================
-- LDAP Directory Service (id=36) — на 2 серверах (Security)
-- ====================
(8,  36, '2024-04-12 10:00:00'),  -- Dell R650, FRA-B-R03
(63, 36, '2024-05-18 10:00:00'),  -- Dell R650, BCN-B-R02

-- ====================
-- DNS Internal Resolver (id=37) — на 3 серверах
-- ====================
(2,  37, '2024-03-18 08:00:00'),  -- Dell R750, FRA-A-R01
(25, 37, '2024-04-02 08:00:00'),  -- Dell R750, ROT-D-R01
(39, 37, '2024-04-08 08:00:00'),  -- Dell R750, LON-W-R02

-- ====================
-- DHCP Management (id=38) — на 2 серверах
-- ====================
(2,  38, '2024-03-18 08:30:00'),  -- Dell R750, FRA-A-R01
(25, 38, '2024-04-02 08:30:00'),  -- Dell R750, ROT-D-R01

-- ====================
-- Backup & Restore Service (id=39) — на 3 серверах (SRE)
-- ====================
(12, 39, '2024-04-01 16:00:00'),  -- Lenovo SR650, MUC-C-R02
(34, 39, '2024-01-05 16:00:00'),  -- Lenovo SR650, LON-D-R03
(45, 39, '2024-01-15 16:00:00');  -- Lenovo SR650, SLO-T-R02

-- ============================================================
-- seed_employees.sql — Заполнение таблицы employees
-- ============================================================
-- 50 сотрудников: 5 admin, 30 engineer, 15 operator
-- Распределены по командам: Platform, SRE, Data, DevOps, Security, Backend, Network, DC Ops

INSERT INTO employees (first_name, last_name, email, role, phone) VALUES
-- ====================
-- Admin (5) — администраторы системы
-- ====================
('Thomas',   'Mueller',     'thomas.mueller@dc-ops.com',    'admin',    '+49-170-111-1001'),
('Anna',     'Schmidt',     'anna.schmidt@dc-ops.com',      'admin',    '+49-170-111-1002'),
('Robert',   'Johnson',     'robert.johnson@dc-ops.com',    'admin',    '+44-7700-200-1001'),
('Sophie',   'Dubois',      'sophie.dubois@dc-ops.com',     'admin',    '+33-6-11-22-33-01'),
('Marco',    'Ricci',       'marco.ricci@dc-ops.com',       'admin',    '+39-320-111-1001'),

-- ====================
-- Engineer (30) — инженеры по командам
-- ====================
-- Platform Engineering (6)
('Jan',      'De Vries',    'jan.devries@dc-ops.com',       'engineer', '+31-6-1111-1001'),
('Klaus',    'Weber',       'klaus.weber@dc-ops.com',       'engineer', '+49-171-222-2001'),
('Emma',     'Williams',    'emma.williams@dc-ops.com',     'engineer', '+44-7700-300-2001'),
('Lucas',    'Bernard',     'lucas.bernard@dc-ops.com',     'engineer', '+33-6-22-33-44-02'),
('Sofia',    'Martinez',    'sofia.martinez@dc-ops.com',    'engineer', '+34-612-345-201'),
('Erik',     'Larsson',     'erik.larsson@dc-ops.com',      'engineer', '+46-70-222-2001'),

-- SRE (6)
('Piotr',    'Nowak',       'piotr.nowak@dc-ops.com',       'engineer', '+48-601-222-001'),
('Mikael',   'Andersen',    'mikael.andersen@dc-ops.com',   'engineer', '+45-20-333-001'),
('Lena',     'Johansson',   'lena.johansson@dc-ops.com',    'engineer', '+46-70-333-3001'),
('David',    'Brown',       'david.brown@dc-ops.com',       'engineer', '+44-7700-400-3001'),
('Antoine',  'Leroy',       'antoine.leroy@dc-ops.com',     'engineer', '+33-6-33-44-55-03'),
('Giulia',   'Ferrari',     'giulia.ferrari@dc-ops.com',    'engineer', '+39-321-222-2001'),

-- Data Engineering (5)
('Henrik',   'Nilsson',     'henrik.nilsson@dc-ops.com',    'engineer', '+46-70-444-4001'),
('Fiona',    'O''Brien',    'fiona.obrien@dc-ops.com',      'engineer', '+353-87-111-3001'),
('Matteo',   'Conti',       'matteo.conti@dc-ops.com',      'engineer', '+39-322-333-3001'),
('Carlos',   'Garcia',      'carlos.garcia@dc-ops.com',     'engineer', '+34-623-456-302'),
('Ingrid',   'Haugen',      'ingrid.haugen@dc-ops.com',     'engineer', '+47-900-111-001'),

-- DevOps (4)
('Mark',     'Taylor',      'mark.taylor@dc-ops.com',       'engineer', '+44-7700-500-4001'),
('Nina',     'Hoffmann',    'nina.hoffmann@dc-ops.com',     'engineer', '+49-172-333-3001'),
('Oscar',    'Nilsson',     'oscar.nilsson@dc-ops.com',     'engineer', '+46-70-555-5001'),
('Julie',    'Moreau',      'julie.moreau@dc-ops.com',      'engineer', '+33-6-44-55-66-04'),

-- Security (4)
('Stefan',   'Gruber',      'stefan.gruber@dc-ops.com',     'engineer', '+49-173-444-4001'),
('Catherine','Smith',       'catherine.smith@dc-ops.com',   'engineer', '+44-7700-600-5001'),
('Anders',   'Lindberg',    'anders.lindberg@dc-ops.com',   'engineer', '+46-70-666-6001'),
('Chiara',   'Romano',      'chiara.romano@dc-ops.com',     'engineer', '+39-323-444-4001'),

-- Backend (3)
('Daniel',   'Kowalski',    'daniel.kowalski@dc-ops.com',   'engineer', '+48-602-333-002'),
('Isabelle', 'Petit',       'isabelle.petit@dc-ops.com',    'engineer', '+33-6-55-66-77-05'),
('Simon',    'Jensen',      'simon.jensen@dc-ops.com',      'engineer', '+45-21-444-002'),

-- Network (2)
('Michael',  'Davies',      'michael.davies@dc-ops.com',    'engineer', '+44-7700-700-6001'),
('Laura',    'Bianchi',     'laura.bianchi@dc-ops.com',     'engineer', '+39-324-555-5001'),

-- ====================
-- Operator (15) — операторы дата-центров
-- ====================
-- Germany DC Ops (5)
('Felix',    'Bauer',       'felix.bauer@dc-ops.com',       'operator', '+49-174-555-5001'),
('Sarah',    'Klein',       'sarah.klein@dc-ops.com',       'operator', '+49-174-555-5002'),
('Tobias',   'Wagner',      'tobias.wagner@dc-ops.com',     'operator', '+49-174-555-5003'),
('Hannah',   'Schroeder',   'hannah.schroeder@dc-ops.com',  'operator', '+49-174-555-5004'),
('Max',      'Fischer',     'max.fischer@dc-ops.com',       'operator', '+49-174-555-5005'),

-- UK & Ireland DC Ops (3)
('James',    'Wilson',      'james.wilson@dc-ops.com',      'operator', '+44-7700-800-7001'),
('Olivia',   'Clark',       'olivia.clark@dc-ops.com',      'operator', '+44-7700-800-7002'),
('Sean',     'Murphy',      'sean.murphy@dc-ops.com',       'operator', '+353-88-222-4001'),

-- France & Benelux DC Ops (3)
('Pierre',   'Laurent',     'pierre.laurent@dc-ops.com',    'operator', '+33-6-66-77-88-06'),
('Anouk',    'Bakker',      'anouk.bakker@dc-ops.com',      'operator', '+31-6-2222-2002'),
('Victor',   'Simon',       'victor.simon@dc-ops.com',      'operator', '+33-6-77-88-99-07'),

-- Nordic DC Ops (2)
('Johan',    'Svensson',    'johan.svensson@dc-ops.com',    'operator', '+46-70-777-7001'),
('Freja',    'Pedersen',    'freja.pedersen@dc-ops.com',    'operator', '+45-22-555-003'),

-- Southern Europe DC Ops (2)
('Alejandro','Lopez',       'alejandro.lopez@dc-ops.com',   'operator', '+34-634-567-403'),
('Francesca','Russo',       'francesca.russo@dc-ops.com',   'operator', '+39-325-666-6001');

-- ============================================================
-- seed_incidents.sql — Заполнение таблицы incidents
-- ============================================================
-- 60 инцидентов за последние 6 месяцев (2024-04 — 2024-10)
-- Распределение severity: critical ~8%, high ~17%, medium ~35%, low ~40%
-- Статусы: ~50% resolved, ~30% in_progress, ~20% open
-- Привязка к сервисам (affected_service_id: 1–39)

INSERT INTO incidents (title, description, severity, status, detected_at, resolved_at, affected_service_id) VALUES
-- ====================
-- CRITICAL (5 инцидентов)
-- ====================
('Kubernetes Production Cluster API server unavailable',
 'Все три master-ноды потеряли связь с etcd. Продакшен полностью недоступен.',
 'critical', 'resolved', '2024-04-15 02:30:00', '2024-04-15 04:45:00', 1),

('Payment Processing API database connection pool exhaustion',
 'Исчерпание пула подключений к PostgreSQL, платёжный API возвращает 502 ошибки. Потери ~€50K/час.',
 'critical', 'resolved', '2024-05-22 14:15:00', '2024-05-22 15:50:00', 26),

('Critical firewall failure in Amsterdam Ring',
 'Отказ обоих Palo Alto PA-5280 в active/passive кластере. Полная потеря связности дата-центра.',
 'critical', 'resolved', '2024-06-10 08:00:00', '2024-06-10 10:20:00', 10),

('PostgreSQL Primary Cluster split-brain detected',
 'Обнаружен split-brain в кластере Patroni. Данные рассогласованы между нодами.',
 'critical', 'resolved', '2024-07-03 11:00:00', '2024-07-03 14:30:00', 13),

('Kafka Message Broker complete outage — all brokers down',
 'Все 5 брокеров Kafka остановлены из-за ошибки в конфигурации Zookeeper.',
 'critical', 'in_progress', '2024-10-05 09:45:00', NULL, 18),

-- ====================
-- HIGH (10 инцидентов)
-- ====================
('Degraded performance on PostgreSQL Primary — replication lag > 5min',
 'Задержка репликации превысила 5 минут, пользователи получают устаревшие данные.',
 'high', 'resolved', '2024-04-20 10:00:00', '2024-04-20 12:15:00', 13),

('Redis Cache Cluster memory exhaustion',
 'Кластер Redis заполнен на 98%, eviction policy вызывает потерю кеша.',
 'high', 'resolved', '2024-05-10 16:30:00', '2024-05-10 18:00:00', 16),

('User Authentication Service LDAP connection timeout',
 'Таймауты при подключении к LDAP, пользователи не могут войти в систему.',
 'high', 'resolved', '2024-05-28 08:15:00', '2024-05-28 09:45:00', 25),

('Nginx Ingress Controller misconfiguration causes routing errors',
 'Некорректный конфиг ingress перенаправляет трафик на неправильные поды.',
 'high', 'resolved', '2024-06-18 13:00:00', '2024-06-18 14:30:00', 10),

('Elasticsearch Search Engine high CPU on all data nodes',
 'Все data-ноды Elasticsearch под 100% нагрузкой CPU, поиск не работает.',
 'high', 'resolved', '2024-07-12 11:30:00', '2024-07-12 14:00:00', 17),

('MongoDB Atlas Cluster replication failure',
 'Репликация MongoDB нарушена, secondary ноды отстают на 30+ минут.',
 'high', 'in_progress', '2024-09-15 08:00:00', NULL, 15),

('Order Management System partial outage — checkout flow broken',
 'Сломана цепочка оформления заказа, ошибка 500 на этапе валидации.',
 'high', 'in_progress', '2024-09-28 10:15:00', NULL, 28),

('Prometheus Monitoring — Alertmanager not sending alerts',
 'Alertmanager перестал отправлять алерты в Slack и PagerDuty.',
 'high', 'resolved', '2024-08-05 06:00:00', '2024-08-05 07:30:00', 6),

('Backup & Restore Service — last 3 scheduled backups failed',
 'Три последних плановых бэкапа завершились с ошибкой. Риск потери данных.',
 'high', 'in_progress', '2024-10-08 09:00:00', NULL, 39),

('Harbor Container Registry image pull failures',
 'Невозможно загрузить образы из Harbor, ошибки аутентификации.',
 'high', 'resolved', '2024-08-20 14:00:00', '2024-08-20 16:20:00', 12),

-- ====================
-- MEDIUM (20 инцидентов)
-- ====================
('Service Mesh Istio — high latency on east-west traffic',
 'Задержка между сервисами выросла до 500ms, норма 20ms.',
 'medium', 'resolved', '2024-04-08 15:00:00', '2024-04-08 17:00:00', 3),

('GitLab CI Runners queue backlog — 200+ jobs pending',
 'Очередь CI/CD заданий превысила 200, сборки ожидают более 30 минут.',
 'medium', 'resolved', '2024-04-25 10:00:00', '2024-04-25 11:30:00', 21),

('ELK Logging Stack — Logstash pipeline errors',
 'Logstash отбрасывает события из-за ошибок парсинга логов.',
 'medium', 'resolved', '2024-05-05 09:00:00', '2024-05-05 10:45:00', 8),

('Consul Service Discovery — stale health checks',
 'Устаревшие health check-и приводят к маршрутизации трафика на нездоровые ноды.',
 'medium', 'resolved', '2024-05-18 11:00:00', '2024-05-18 12:00:00', 5),

('MinIO Object Storage — disk usage > 85%',
 'Использование дискового пространства MinIO превысило 85% порог.',
 'medium', 'in_progress', '2024-10-12 08:00:00', NULL, 20),

('RabbitMQ Message Queue — dead letter queue overflow',
 'Очередь недоставленных сообщений переполнена, 5000+ сообщений.',
 'medium', 'resolved', '2024-06-05 14:00:00', '2024-06-05 15:30:00', 19),

('Notification Service — email delivery delays',
 'Задержка отправки email-уведомлений до 15 минут.',
 'medium', 'resolved', '2024-06-22 10:00:00', '2024-06-22 11:00:00', 27),

('ArgoCD GitOps — sync failures on staging environment',
 'ArgoCD не может синхронизировать стейджинг-окружение.',
 'medium', 'resolved', '2024-07-01 09:00:00', '2024-07-01 10:20:00', 22),

('SonarQube Code Quality — analysis queue stuck',
 'Очередь анализа кода заблокирована, новые проекты не сканируются.',
 'medium', 'resolved', '2024-07-18 13:00:00', '2024-07-18 14:00:00', 23),

('DNS Internal Resolver — intermittent resolution failures',
 'Периодические сбои разрешения имён во внутренней сети.',
 'medium', 'in_progress', '2024-09-20 07:30:00', NULL, 37),

('Cert Manager — TLS certificate renewal failed',
 'Автоматическое обновление сертификатов не выполнено для 3 доменов.',
 'medium', 'resolved', '2024-08-10 06:00:00', '2024-08-10 07:15:00', 11),

('Analytics Data Pipeline — ETL job duration tripled',
 'Время выполнения ETL выросло с 30 минут до 90 минут.',
 'medium', 'resolved', '2024-08-28 16:00:00', '2024-08-28 18:30:00', 31),

('Real-time Chat WebSocket — connection drops every 5 minutes',
 'WebSocket-соединения обрываются каждые 5 минут для 30% пользователей.',
 'medium', 'in_progress', '2024-10-02 11:00:00', NULL, 33),

('Video Transcoding Service — queue processing slowdown',
 'Обработка очереди транскодирования замедлилась в 2 раза.',
 'medium', 'resolved', '2024-07-25 12:00:00', '2024-07-25 14:45:00', 35),

('Inventory Management API — stock count mismatch reported',
 'Обнаружено расхождение данных складских запасов между БД и кешем.',
 'medium', 'in_progress', '2024-10-10 09:00:00', NULL, 29),

('Artifactory Binary Repository — slow artifact uploads',
 'Скорость загрузки артефактов упала до 1 MB/s (норма 50 MB/s).',
 'medium', 'resolved', '2024-06-30 15:00:00', '2024-06-30 16:45:00', 24),

('Grafana Dashboards — data source connection errors',
 'Дашборды Grafana показывают ошибки подключения к источникам данных.',
 'medium', 'in_progress', '2024-10-15 08:00:00', NULL, 7),

('LDAP Directory Service — slow query response',
 'Время ответа LDAP-запросов выросло до 5 секунд (норма 200ms).',
 'medium', 'resolved', '2024-08-15 10:00:00', '2024-08-15 11:30:00', 36),

('Content Delivery CDN — cache miss ratio increased',
 'Коэффициент промахов кеша CDN вырос с 5% до 35%.',
 'medium', 'resolved', '2024-09-05 14:00:00', '2024-09-05 16:00:00', 34),

('Customer CRM Gateway — API rate limiting triggered',
 'Сработало ограничение частоты запросов, часть клиентов получает 429 ошибки.',
 'medium', 'in_progress', '2024-10-18 13:00:00', NULL, 30),

-- ====================
-- LOW (25 инцидентов)
-- ====================
('Kubernetes Staging Cluster — node pool scaling delay',
 'Задержка масштабирования node pool в стейджинг-кластере на 10 минут.',
 'low', 'resolved', '2024-04-05 10:00:00', '2024-04-05 10:30:00', 2),

('Jaeger Distributed Tracing — span retention too short',
 'Хранение спанов сократилось до 6 часов вместо 72.',
 'low', 'resolved', '2024-04-12 09:00:00', '2024-04-12 10:00:00', 9),

('Prometheus — disk space for metrics < 20%',
 'Свободное место на диске для метрик Prometheus менее 20%.',
 'low', 'in_progress', '2024-10-20 08:00:00', NULL, 6),

('Vault Secret Management — audit log growth rate anomaly',
 'Аномальный рост аудит-логов Vault, 2GB/день вместо 200MB.',
 'low', 'resolved', '2024-05-12 11:00:00', '2024-05-12 13:00:00', 4),

('GitLab CI Runners — disk cleanup needed',
 'Необходима очистка диска на раннерах, занято 90%.',
 'low', 'resolved', '2024-05-20 08:00:00', '2024-05-20 09:00:00', 21),

('Harbor Container Registry — old images not purged',
 'Старые образы контейнеров не удалены, 500+ неиспользуемых тегов.',
 'low', 'open', '2024-10-22 10:00:00', NULL, 12),

('Redis Cache Cluster — slow log entries detected',
 'Обнаружены записи в slow log Redis (команды > 100ms).',
 'low', 'resolved', '2024-06-08 15:00:00', '2024-06-08 15:45:00', 16),

('PostgreSQL Reporting Replica — stale statistics',
 'Устаревшая статистика планировщика на реплике для отчётов.',
 'low', 'resolved', '2024-06-15 09:00:00', '2024-06-15 09:30:00', 14),

('Kafka — topic partition imbalance',
 'Неравномерное распределение партиций в Kafka-топиках.',
 'low', 'open', '2024-10-25 11:00:00', NULL, 18),

('Service Mesh Istio — outdated sidecar versions',
 'Устаревшие версии sidecar-прокси у 15% подов.',
 'low', 'open', '2024-10-26 14:00:00', NULL, 3),

('ELK Logging Stack — index rotation misconfigured',
 'Некорректная настройка ротации индексов, создаются лишние индексы.',
 'low', 'resolved', '2024-07-05 10:00:00', '2024-07-05 11:00:00', 8),

('Consul — deprecated API version usage warnings',
 'Предупреждения об использовании устаревших версий API Consul.',
 'low', 'open', '2024-10-28 09:00:00', NULL, 5),

('MinIO — bucket policy audit required',
 'Требуется аудит политик доступа к бакетам MinIO.',
 'low', 'open', '2024-10-30 08:00:00', NULL, 20),

('Notification Service — template rendering errors',
 'Ошибки рендеринга шаблонов для SMS-уведомлений (0.5% сообщений).',
 'low', 'resolved', '2024-07-10 12:00:00', '2024-07-10 12:30:00', 27),

('ArgoCD — application health report false positives',
 'Ложные срабатывания в отчётах о здоровье приложений ArgoCD.',
 'low', 'open', '2024-11-01 10:00:00', NULL, 22),

('SonarQube — quality gate threshold adjustment needed',
 'Необходима корректировка порогов quality gate для новых проектов.',
 'low', 'resolved', '2024-07-22 09:00:00', '2024-07-22 10:00:00', 23),

('DNS — reverse lookup zone incomplete',
 'Неполная зона обратного поиска DNS, отсутствуют записи для /28 подсети.',
 'low', 'open', '2024-11-02 11:00:00', NULL, 37),

('DHCP Management — IP pool nearing exhaustion',
 'Пул IP-адресов DHCP использован на 90%.',
 'low', 'open', '2024-11-03 08:00:00', NULL, 38),

('Cert Manager — non-critical certificate near expiry',
 'Сертификат для внутреннего dev-домена истекает через 14 дней.',
 'low', 'open', '2024-11-04 09:00:00', NULL, 11),

('Grafana — unused dashboard cleanup needed',
 'Требуется очистка неиспользуемых дашбордов (> 90 дней без просмотров).',
 'low', 'open', '2024-11-05 10:00:00', NULL, 7),

('Scheduled Job Runner — missed 2 cron executions',
 'Пропущено 2 выполнения периодической задачи очистки временных файлов.',
 'low', 'open', '2024-11-06 06:00:00', NULL, 40),

('Jaeger — sampling rate too high for staging',
 'Частота сэмплирования трассировки в стейджинге 100%, должно быть 25%.',
 'low', 'open', '2024-11-07 08:00:00', NULL, 9),

('ML Model Serving — model version mismatch on one node',
 'Несоответствие версии ML-модели на одной из нод инференса.',
 'low', 'in_progress', '2024-10-16 14:00:00', NULL, 32),

('Customer CRM Gateway — deprecated endpoint still in use',
 'Устаревший эндпоинт CRM API всё ещё вызывается 2 клиентами.',
 'low', 'open', '2024-11-08 12:00:00', NULL, 30),

('Scheduled Job Runner — job execution time increasing',
 'Время выполнения nightly job растёт: было 5 мин, стало 12 мин.',
 'low', 'open', '2024-11-10 02:00:00', NULL, 40);

 -- ============================================================
-- seed_incident_servers.sql — Заполнение таблицы incident_servers
-- ============================================================
-- Связывает инциденты (1–60) с затронутыми серверами (1–226)
-- Критические/высокие инциденты затрагивают больше серверов
-- Всего ~130 связей

INSERT INTO incident_servers (incident_id, server_id) VALUES
-- ====================
-- CRITICAL инциденты (id: 1–5)
-- ====================
-- 1. K8s Production API server unavailable — все master-ноды
(1, 5), (1, 14), (1, 20), (1, 32), (1, 47), (1, 86),

-- 2. Payment API DB pool exhaustion — серверы БД и API
(2, 5), (2, 26), (2, 46), (2, 53), (2, 20), (2, 47), (2, 72),

-- 3. Firewall failure Amsterdam — затронута вся стойка
(3, 20), (3, 21), (3, 22), (3, 23),

-- 4. PostgreSQL split-brain — ноды кластера
(4, 5), (4, 26), (4, 46), (4, 53),

-- 5. Kafka complete outage — все брокеры
(5, 7), (5, 19), (5, 33), (5, 52), (5, 76),

-- ====================
-- HIGH инциденты (id: 6–15)
-- ====================
-- 6. PostgreSQL replication lag
(6, 5), (6, 26), (6, 46), (6, 53),

-- 7. Redis memory exhaustion
(7, 2), (7, 11), (7, 25), (7, 39),

-- 8. Auth Service LDAP timeout
(8, 1), (8, 17), (8, 36), (8, 70), (8, 8), (8, 63),

-- 9. Nginx Ingress misconfiguration
(9, 6), (9, 21), (9, 33), (9, 48),

-- 10. Elasticsearch high CPU
(10, 16), (10, 28), (10, 41), (10, 55),

-- 11. MongoDB replication failure
(11, 9), (11, 22), (11, 35), (11, 69),

-- 12. Order Management checkout broken
(12, 14), (12, 44), (12, 58), (12, 93),

-- 13. Prometheus Alertmanager not sending
(13, 3), (13, 17), (13, 30), (13, 50),

-- 14. Backup failures
(14, 12), (14, 34), (14, 45),

-- 15. Harbor image pull failures
(15, 12), (15, 34), (15, 45),

-- ====================
-- MEDIUM инциденты (id: 16–35)
-- ====================
-- 16. Istio high latency
(16, 6), (16, 21), (16, 48),

-- 17. GitLab CI backlog
(17, 13), (17, 22), (17, 49), (17, 66),

-- 18. ELK Logstash pipeline errors
(18, 16), (18, 23), (18, 28), (18, 41), (18, 55),

-- 19. Consul stale health checks
(19, 2), (19, 11), (19, 25), (19, 39),

-- 20. MinIO disk usage > 85%
(20, 12), (20, 34), (20, 45), (20, 60),

-- 21. RabbitMQ dead letter overflow
(21, 4), (21, 26), (21, 53),

-- 22. Notification email delays
(22, 17), (22, 36), (22, 62),

-- 23. ArgoCD sync failures
(23, 10), (23, 37),

-- 24. SonarQube analysis stuck
(24, 13), (24, 49),

-- 25. DNS intermittent failures
(25, 2), (25, 25), (25, 39),

-- 26. Cert Manager renewal failed
(26, 8), (26, 63),

-- 27. Analytics ETL job duration tripled
(27, 7), (27, 19), (27, 52), (27, 76),

-- 28. Chat WebSocket connection drops
(28, 18), (28, 56), (28, 70),

-- 29. Video Transcoding slowdown
(29, 9), (29, 35), (29, 69),

-- 30. Inventory stock mismatch
(30, 15), (30, 40), (30, 60),

-- 31. Artifactory slow uploads
(31, 34), (31, 60),

-- 32. Grafana data source errors
(32, 3), (32, 30),

-- 33. LDAP slow queries
(33, 8), (33, 63),

-- 34. CDN cache miss ratio increased
(34, 6), (34, 11), (34, 33), (34, 59),

-- 35. CRM rate limiting
(35, 3), (35, 30), (35, 48),

-- ====================
-- LOW инциденты (id: 36–60)
-- ====================
-- 36. K8s Staging node pool delay
(36, 1), (36, 10), (36, 37),

-- 37. Jaeger span retention
(37, 18), (37, 29),

-- 38. Prometheus disk space < 20%
(38, 3), (38, 17), (38, 30), (38, 50),

-- 39. Vault audit log growth
(39, 8), (39, 29), (39, 63),

-- 40. GitLab CI disk cleanup
(40, 13), (40, 22), (40, 49), (40, 66),

-- 41. Harbor old images not purged
(41, 12), (41, 34), (41, 45),

-- 42. Redis slow log entries
(42, 2), (42, 11), (42, 25), (42, 39),

-- 43. PostgreSQL stale statistics
(43, 64), (43, 85),

-- 44. Kafka partition imbalance
(44, 7), (44, 19), (44, 33), (44, 52), (44, 76),

-- 45. Istio outdated sidecars
(45, 6), (45, 21), (45, 48),

-- 46. ELK index rotation
(46, 16), (46, 23), (46, 28), (46, 41), (46, 55),

-- 47. Consul deprecated API
(47, 2), (47, 11), (47, 25), (47, 39),

-- 48. MinIO bucket policy audit
(48, 12), (48, 34), (48, 45), (48, 60),

-- 49. Notification template errors
(49, 17), (49, 36), (49, 62),

-- 50. ArgoCD false positives
(50, 10), (50, 37),

-- 51. SonarQube quality gate
(51, 13), (51, 49),

-- 52. DNS reverse lookup incomplete
(52, 2), (52, 25), (52, 39),

-- 53. DHCP pool exhaustion
(53, 2), (53, 25),

-- 54. Cert Manager non-critical expiry
(54, 8), (54, 63),

-- 55. Grafana unused dashboards
(55, 3), (55, 30),

-- 56. Cron job missed executions
(56, 3), (56, 7), (56, 30),

-- 57. Jaeger sampling rate
(57, 18), (57, 29),

-- 58. ML model version mismatch
(58, 20), (58, 32), (58, 86),

-- 59. CRM deprecated endpoint
(59, 3), (59, 30), (59, 48),

-- 60. Nightly job execution time
(60, 7), (60, 19), (60, 30);


-- ============================================================
-- seed_incident_assignments.sql — Заполнение таблицы incident_assignments
-- ============================================================
-- Назначает сотрудников (1–50) на инциденты (1–60)
-- Критические: 3–4 сотрудника (admin + engineer)
-- Высокие: 2–3 сотрудника
-- Средние: 1–2 сотрудника
-- Низкие: 1 сотрудник
-- Роль admin — только на critical/high
-- Всего ~120 назначений

INSERT INTO incident_assignments (incident_id, employee_id, assigned_at) VALUES
-- ====================
-- CRITICAL (id: 1–5) — по 3–4 назначения
-- ====================
-- 1. K8s Production API unavailable
(1, 1,  '2024-04-15 02:35:00'),  -- Thomas Mueller (admin)
(1, 6,  '2024-04-15 02:35:00'),  -- Jan De Vries (engineer, Platform)
(1, 7,  '2024-04-15 02:40:00'),  -- Klaus Weber (engineer, Platform)
(1, 12, '2024-04-15 02:45:00'),  -- Piotr Nowak (engineer, SRE)

-- 2. Payment API DB pool exhaustion
(2, 2,  '2024-05-22 14:20:00'),  -- Anna Schmidt (admin)
(2, 26, '2024-05-22 14:20:00'),  -- Daniel Kowalski (engineer, Backend)
(2, 27, '2024-05-22 14:25:00'),  -- Isabelle Petit (engineer, Backend)
(2, 17, '2024-05-22 14:30:00'),  -- Henrik Nilsson (engineer, Data)

-- 3. Firewall failure Amsterdam
(3, 3,  '2024-06-10 08:05:00'),  -- Robert Johnson (admin)
(3, 29, '2024-06-10 08:05:00'),  -- Michael Davies (engineer, Network)
(3, 30, '2024-06-10 08:10:00'),  -- Laura Bianchi (engineer, Network)

-- 4. PostgreSQL split-brain
(4, 1,  '2024-07-03 11:05:00'),  -- Thomas Mueller (admin)
(4, 17, '2024-07-03 11:05:00'),  -- Henrik Nilsson (engineer, Data)
(4, 19, '2024-07-03 11:10:00'),  -- Matteo Conti (engineer, Data)
(4, 12, '2024-07-03 11:15:00'),  -- Piotr Nowak (engineer, SRE)

-- 5. Kafka complete outage
(5, 4,  '2024-10-05 09:50:00'),  -- Sophie Dubois (admin)
(5, 18, '2024-10-05 09:50:00'),  -- Fiona O'Brien (engineer, Data)
(5, 19, '2024-10-05 09:55:00'),  -- Matteo Conti (engineer, Data)

-- ====================
-- HIGH (id: 6–15) — по 2–3 назначения
-- ====================
-- 6. PostgreSQL replication lag
(6, 17, '2024-04-20 10:05:00'),  -- Henrik Nilsson (engineer, Data)
(6, 18, '2024-04-20 10:10:00'),  -- Fiona O'Brien (engineer, Data)

-- 7. Redis memory exhaustion
(7, 12, '2024-05-10 16:35:00'),  -- Piotr Nowak (engineer, SRE)
(7, 26, '2024-05-10 16:35:00'),  -- Daniel Kowalski (engineer, Backend)

-- 8. Auth Service LDAP timeout
(8, 5,  '2024-05-28 08:20:00'),  -- Marco Ricci (admin)
(8, 25, '2024-05-28 08:20:00'),  -- Stefan Gruber (engineer, Security)
(8, 26, '2024-05-28 08:25:00'),  -- Catherine Smith (engineer, Security)

-- 9. Nginx Ingress misconfiguration
(9, 6,  '2024-06-18 13:05:00'),  -- Jan De Vries (engineer, Platform)
(9, 8,  '2024-06-18 13:10:00'),  -- Emma Williams (engineer, Platform)

-- 10. Elasticsearch high CPU
(10, 12, '2024-07-12 11:35:00'), -- Piotr Nowak (engineer, SRE)
(10, 13, '2024-07-12 11:40:00'), -- Mikael Andersen (engineer, SRE)

-- 11. MongoDB replication failure
(11, 17, '2024-09-15 08:05:00'), -- Henrik Nilsson (engineer, Data)
(11, 20, '2024-09-15 08:10:00'), -- Carlos Garcia (engineer, Data)

-- 12. Order Management checkout broken
(12, 27, '2024-09-28 10:20:00'), -- Isabelle Petit (engineer, Backend)
(12, 28, '2024-09-28 10:20:00'), -- Simon Jensen (engineer, Backend)
(12, 12, '2024-09-28 10:25:00'), -- Piotr Nowak (engineer, SRE)

-- 13. Prometheus Alertmanager not sending
(13, 13, '2024-08-05 06:05:00'), -- Mikael Andersen (engineer, SRE)
(13, 14, '2024-08-05 06:10:00'), -- Lena Johansson (engineer, SRE)

-- 14. Backup failures
(14, 12, '2024-10-08 09:05:00'), -- Piotr Nowak (engineer, SRE)
(14, 15, '2024-10-08 09:10:00'), -- David Brown (engineer, SRE)

-- 15. Harbor image pull failures
(15, 7,  '2024-08-20 14:05:00'), -- Klaus Weber (engineer, Platform)
(15, 6,  '2024-08-20 14:10:00'), -- Jan De Vries (engineer, Platform)

-- ====================
-- MEDIUM (id: 16–35) — по 1–2 назначения
-- ====================
-- 16. Istio high latency
(16, 8,  '2024-04-08 15:05:00'), -- Emma Williams (engineer, Platform)

-- 17. GitLab CI backlog
(17, 22, '2024-04-25 10:05:00'), -- Mark Taylor (engineer, DevOps)
(17, 23, '2024-04-25 10:10:00'), -- Nina Hoffmann (engineer, DevOps)

-- 18. ELK Logstash errors
(18, 14, '2024-05-05 09:05:00'), -- Lena Johansson (engineer, SRE)

-- 19. Consul stale health checks
(19, 9,  '2024-05-18 11:05:00'), -- Lucas Bernard (engineer, Platform)

-- 20. MinIO disk usage > 85%
(20, 21, '2024-10-12 08:05:00'), -- Ingrid Haugen (engineer, Data)

-- 21. RabbitMQ dead letter overflow
(21, 28, '2024-06-05 14:05:00'), -- Simon Jensen (engineer, Backend)

-- 22. Notification email delays
(22, 27, '2024-06-22 10:05:00'), -- Isabelle Petit (engineer, Backend)

-- 23. ArgoCD sync failures
(23, 24, '2024-07-01 09:05:00'), -- Oscar Nilsson (engineer, DevOps)

-- 24. SonarQube analysis stuck
(24, 22, '2024-07-18 13:05:00'), -- Mark Taylor (engineer, DevOps)

-- 25. DNS intermittent failures
(25, 10, '2024-09-20 07:35:00'), -- Sofia Martinez (engineer, Platform)
(25, 29, '2024-09-20 07:40:00'), -- Michael Davies (engineer, Network)

-- 26. Cert Manager renewal failed
(26, 25, '2024-08-10 06:05:00'), -- Stefan Gruber (engineer, Security)

-- 27. Analytics ETL job duration tripled
(27, 20, '2024-08-28 16:05:00'), -- Carlos Garcia (engineer, Data)

-- 28. Chat WebSocket connection drops
(28, 26, '2024-10-02 11:05:00'), -- Daniel Kowalski (engineer, Backend)

-- 29. Video Transcoding slowdown
(29, 26, '2024-07-25 12:05:00'), -- Daniel Kowalski (engineer, Backend)

-- 30. Inventory stock mismatch
(30, 28, '2024-10-10 09:05:00'), -- Simon Jensen (engineer, Backend)

-- 31. Artifactory slow uploads
(31, 23, '2024-06-30 15:05:00'), -- Nina Hoffmann (engineer, DevOps)

-- 32. Grafana data source errors
(32, 15, '2024-10-15 08:05:00'), -- David Brown (engineer, SRE)

-- 33. LDAP slow queries
(33, 25, '2024-08-15 10:05:00'), -- Stefan Gruber (engineer, Security)

-- 34. CDN cache miss ratio increased
(34, 11, '2024-09-05 14:05:00'), -- Erik Larsson (engineer, Platform)

-- 35. CRM rate limiting
(35, 27, '2024-10-18 13:05:00'), -- Isabelle Petit (engineer, Backend)

-- ====================
-- LOW (id: 36–60) — по 1 назначению
-- ====================
-- 36. K8s Staging node pool delay
(36, 9,  '2024-04-05 10:05:00'), -- Lucas Bernard (engineer, Platform)

-- 37. Jaeger span retention
(37, 16, '2024-04-12 09:05:00'), -- Antoine Leroy (engineer, SRE)

-- 38. Prometheus disk space < 20%
(38, 14, '2024-10-20 08:05:00'), -- Lena Johansson (engineer, SRE)

-- 39. Vault audit log growth
(39, 26, '2024-05-12 11:05:00'), -- Catherine Smith (engineer, Security)

-- 40. GitLab CI disk cleanup
(40, 24, '2024-05-20 08:05:00'), -- Oscar Nilsson (engineer, DevOps)

-- 41. Harbor old images not purged
(41, 36, '2024-10-22 10:05:00'), -- Felix Bauer (operator, Germany)

-- 42. Redis slow log entries
(42, 15, '2024-06-08 15:05:00'), -- David Brown (engineer, SRE)

-- 43. PostgreSQL stale statistics
(43, 18, '2024-06-15 09:05:00'), -- Fiona O'Brien (engineer, Data)

-- 44. Kafka partition imbalance
(44, 19, '2024-10-25 11:05:00'), -- Matteo Conti (engineer, Data)

-- 45. Istio outdated sidecars
(45, 10, '2024-10-26 14:05:00'), -- Sofia Martinez (engineer, Platform)

-- 46. ELK index rotation
(46, 13, '2024-07-05 10:05:00'), -- Mikael Andersen (engineer, SRE)

-- 47. Consul deprecated API
(47, 8,  '2024-10-28 09:05:00'), -- Emma Williams (engineer, Platform)

-- 48. MinIO bucket policy audit
(48, 17, '2024-10-30 08:05:00'), -- Henrik Nilsson (engineer, Data)

-- 49. Notification template errors
(49, 37, '2024-07-10 12:05:00'), -- Sarah Klein (operator, Germany)

-- 50. ArgoCD false positives
(50, 22, '2024-11-01 10:05:00'), -- Mark Taylor (engineer, DevOps)

-- 51. SonarQube quality gate
(51, 23, '2024-07-22 09:05:00'), -- Nina Hoffmann (engineer, DevOps)

-- 52. DNS reverse lookup incomplete
(52, 38, '2024-11-02 11:05:00'), -- Tobias Wagner (operator, Germany)

-- 53. DHCP pool exhaustion
(53, 39, '2024-11-03 08:05:00'), -- Hannah Schroeder (operator, Germany)

-- 54. Cert Manager non-critical expiry
(54, 25, '2024-11-04 09:05:00'), -- Stefan Gruber (engineer, Security)

-- 55. Grafana unused dashboards
(55, 40, '2024-11-05 10:05:00'), -- Max Fischer (operator, Germany)

-- 56. Cron job missed executions
(56, 41, '2024-11-06 06:05:00'), -- James Wilson (operator, UK)

-- 57. Jaeger sampling rate
(57, 16, '2024-11-07 08:05:00'), -- Antoine Leroy (engineer, SRE)

-- 58. ML model version mismatch
(58, 20, '2024-10-16 14:05:00'), -- Carlos Garcia (engineer, Data)

-- 59. CRM deprecated endpoint
(59, 42, '2024-11-08 12:05:00'), -- Olivia Clark (operator, UK)

-- 60. Nightly job execution time
(60, 43, '2024-11-10 02:05:00'); -- Sean Murphy (operator, Ireland)