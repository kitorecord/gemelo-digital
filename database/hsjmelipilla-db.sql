-- ============================================
-- HOSPITAL SAN JOSE - MELIPILLA
-- Dump de estructura y datos
-- Fecha: 2026-05-15 12:21:32.576541
-- ============================================

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Table: auth_group
DROP TABLE IF EXISTS public.auth_group CASCADE;
CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    PRIMARY KEY (id)
);

-- Table: auth_group_permissions
DROP TABLE IF EXISTS public.auth_group_permissions CASCADE;
CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL,
    PRIMARY KEY (id)
);

-- Table: auth_permission
DROP TABLE IF EXISTS public.auth_permission CASCADE;
CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 3, 'add_permission'),
(6, 'Can change permission', 3, 'change_permission'),
(7, 'Can delete permission', 3, 'delete_permission'),
(8, 'Can view permission', 3, 'view_permission'),
(9, 'Can add group', 2, 'add_group'),
(10, 'Can change group', 2, 'change_group'),
(11, 'Can delete group', 2, 'delete_group'),
(12, 'Can view group', 2, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add indicador', 9, 'add_indicador'),
(26, 'Can change indicador', 9, 'change_indicador'),
(27, 'Can delete indicador', 9, 'delete_indicador'),
(28, 'Can view indicador', 9, 'view_indicador'),
(29, 'Can add lista espera', 10, 'add_listaespera'),
(30, 'Can change lista espera', 10, 'change_listaespera'),
(31, 'Can delete lista espera', 10, 'delete_listaespera'),
(32, 'Can view lista espera', 10, 'view_listaespera'),
(33, 'Can add valor indicador', 12, 'add_valorindicador'),
(34, 'Can change valor indicador', 12, 'change_valorindicador'),
(35, 'Can delete valor indicador', 12, 'delete_valorindicador'),
(36, 'Can view valor indicador', 12, 'view_valorindicador'),
(37, 'Can add cama', 7, 'add_cama'),
(38, 'Can change cama', 7, 'change_cama'),
(39, 'Can delete cama', 7, 'delete_cama'),
(40, 'Can view cama', 7, 'view_cama'),
(41, 'Can add gestion clinica', 8, 'add_gestionclinica'),
(42, 'Can change gestion clinica', 8, 'change_gestionclinica'),
(43, 'Can delete gestion clinica', 8, 'delete_gestionclinica'),
(44, 'Can view gestion clinica', 8, 'view_gestionclinica'),
(45, 'Can add servicio', 11, 'add_servicio'),
(46, 'Can change servicio', 11, 'change_servicio'),
(47, 'Can delete servicio', 11, 'delete_servicio'),
(48, 'Can view servicio', 11, 'view_servicio'),
(49, 'Can add egreso', 13, 'add_egreso'),
(50, 'Can change egreso', 13, 'change_egreso'),
(51, 'Can delete egreso', 13, 'delete_egreso'),
(52, 'Can view egreso', 13, 'view_egreso'),
(53, 'Can add nivel', 14, 'add_nivel'),
(54, 'Can change nivel', 14, 'change_nivel'),
(55, 'Can delete nivel', 14, 'delete_nivel'),
(56, 'Can view nivel', 14, 'view_nivel'),
(57, 'Can add servicio grd', 16, 'add_serviciogrd'),
(58, 'Can change servicio grd', 16, 'change_serviciogrd'),
(59, 'Can delete servicio grd', 16, 'delete_serviciogrd'),
(60, 'Can view servicio grd', 16, 'view_serviciogrd'),
(61, 'Can add oportunidad hospitalizacion', 15, 'add_oportunidadhospitalizacion'),
(62, 'Can change oportunidad hospitalizacion', 15, 'change_oportunidadhospitalizacion'),
(63, 'Can delete oportunidad hospitalizacion', 15, 'delete_oportunidadhospitalizacion'),
(64, 'Can view oportunidad hospitalizacion', 15, 'view_oportunidadhospitalizacion');

-- Table: auth_user
DROP TABLE IF EXISTS public.auth_user CASCADE;
CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES
(1, 'pbkdf2_sha256$1200000$C1Xrda1y1NNd97s23jp5nc$Oi759UuRACabxpVjcMcH0g+lUMPOKAOwbI4p8fUTgH8=', '2026-05-14 16:22:20.955179+00:00', True, 'Admin', '', '', 'orellanamarco329@gmail.com', True, True, '2026-05-04 01:15:05.454407+00:00');

-- Table: auth_user_groups
DROP TABLE IF EXISTS public.auth_user_groups CASCADE;
CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL,
    PRIMARY KEY (id)
);

-- Table: auth_user_user_permissions
DROP TABLE IF EXISTS public.auth_user_user_permissions CASCADE;
CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL,
    PRIMARY KEY (id)
);

-- Table: authuser
DROP TABLE IF EXISTS public.authuser CASCADE;
CREATE TABLE public.authuser (
    id integer DEFAULT nextval('authuser_id_seq'::regclass) NOT NULL,
    username character varying(150) NOT NULL,
    password character varying(128) NOT NULL,
    is_staff boolean DEFAULT false,
    is_active boolean DEFAULT true,
    PRIMARY KEY (id)
);

INSERT INTO public.authuser (id, username, password, is_staff, is_active) VALUES
(1, 'admin_medico', 'hash_de_tu_password', True, True);

-- Table: cama
DROP TABLE IF EXISTS public.cama CASCADE;
CREATE TABLE public.cama (
    id integer DEFAULT nextval('cama_id_seq'::regclass) NOT NULL,
    servicio_id integer NOT NULL,
    codigo_cama character varying(20) NOT NULL,
    estado character varying(50) NOT NULL,
    nivel_cuidado character varying(20),
    paciente_nombre character varying(150),
    paciente_edad integer,
    paciente_peso double precision,
    fecha_actualizacion timestamp without time zone NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO public.cama (id, servicio_id, codigo_cama, estado, nivel_cuidado, paciente_nombre, paciente_edad, paciente_peso, fecha_actualizacion) VALUES
(1, 1, 'URG-01', 'Ocupada', 'Básico', 'Juan Pérez', 45, 75.5, '2026-05-04 04:22:33.514390'),
(2, 1, 'URG-02', 'Disponible', 'Básico', NULL, NULL, NULL, '2026-05-04 04:22:33.514390'),
(3, 2, 'UCI-01', 'Ocupada', 'Crítico', 'María González', 62, 68.0, '2026-05-04 04:22:33.514390'),
(4, 3, 'PED-01', 'Mantenimiento', 'Intermedio', NULL, NULL, NULL, '2026-05-04 04:22:33.514390');

-- Table: dashboard_cama
DROP TABLE IF EXISTS public.dashboard_cama CASCADE;
CREATE TABLE public.dashboard_cama (
    id bigint NOT NULL,
    codigo_cama character varying(20) NOT NULL,
    estado character varying(50) NOT NULL,
    nivel_cuidado character varying(20),
    paciente_nombre character varying(150),
    paciente_edad integer,
    paciente_peso double precision,
    fecha_actualizacion timestamp with time zone NOT NULL,
    servicio_id bigint NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO public.dashboard_cama (id, codigo_cama, estado, nivel_cuidado, paciente_nombre, paciente_edad, paciente_peso, fecha_actualizacion, servicio_id) VALUES
(1, 'URG-01', 'Ocupada', 'Básico', 'Juan Pérez', 45, 75.5, '2026-05-04 04:24:58.962648+00:00', 1),
(2, 'URG-02', 'Disponible', 'Básico', NULL, NULL, NULL, '2026-05-04 04:24:58.962648+00:00', 1),
(3, 'UCI-01', 'Ocupada', 'Crítico', 'María González', 62, 68.0, '2026-05-04 04:24:58.962648+00:00', 2),
(4, 'PED-01', 'Mantenimiento', 'Intermedio', NULL, NULL, NULL, '2026-05-04 04:24:58.962648+00:00', 3);

-- Table: dashboard_egreso
DROP TABLE IF EXISTS public.dashboard_egreso CASCADE;
CREATE TABLE public.dashboard_egreso (
    id bigint NOT NULL,
    mes date NOT NULL,
    altas integer NOT NULL,
    traslados integer NOT NULL,
    fallecidos integer NOT NULL,
    dias_cama_disponibles integer NOT NULL,
    dias_cama_ocupados integer NOT NULL,
    dias_estada integer NOT NULL,
    nivel_id bigint NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO public.dashboard_egreso (id, mes, altas, traslados, fallecidos, dias_cama_disponibles, dias_cama_ocupados, dias_estada, nivel_id) VALUES
(1, '2023-01-01', 585, 30, 20, 4197, 3221, 3136, 1),
(2, '2024-01-01', 579, 28, 16, 4209, 3320, 3052, 1),
(3, '2025-01-01', 518, 66, 16, 4247, 3362, 3488, 1),
(4, '2025-02-01', 507, 57, 9, 3836, 3183, 2756, 1),
(5, '2025-03-01', 589, 60, 20, 4247, 3562, 3531, 1),
(6, '2025-04-01', 553, 61, 18, 4110, 3477, 3327, 1),
(7, '2025-05-01', 542, 65, 21, 4247, 3581, 3138, 1),
(8, '2025-06-01', 550, 64, 13, 4110, 3454, 3491, 1),
(9, '2025-07-01', 584, 84, 19, 4250, 3781, 3540, 1),
(10, '2025-08-01', 543, 75, 13, 4375, 3694, 3573, 1),
(11, '2025-09-01', 481, 87, 11, 4174, 3642, 3177, 1),
(12, '2025-10-01', 591, 51, 17, 4420, 3944, 3349, 1),
(13, '2025-11-01', 522, 69, 17, 4290, 3805, 4031, 1),
(14, '2025-12-01', 554, 69, 15, 4421, 3840, 3655, 1),
(15, '2023-01-01', 21, 0, 0, 279, 128, 120, 2),
(16, '2024-01-01', 18, 0, 1, 248, 110, 95, 2),
(17, '2025-01-01', 67, 0, 0, 169, 135, 129, 2),
(18, '2025-02-01', 74, 0, 0, 157, 134, 140, 2),
(19, '2025-03-01', 79, 0, 0, 190, 161, 154, 2),
(20, '2025-04-01', 77, 0, 0, 177, 148, 150, 2),
(21, '2025-05-01', 67, 0, 0, 164, 135, 135, 2),
(22, '2025-06-01', 51, 0, 0, 153, 101, 102, 2),
(23, '2025-07-01', 65, 0, 0, 164, 135, 135, 2),
(24, '2025-08-01', 41, 0, 0, 161, 82, 86, 2),
(25, '2025-09-01', 56, 0, 0, 148, 106, 102, 2),
(26, '2025-10-01', 58, 0, 0, 155, 110, 113, 2),
(27, '2025-11-01', 35, 0, 0, 150, 75, 74, 2),
(28, '2025-12-01', 45, 0, 0, 153, 89, 92, 2),
(29, '2023-01-01', 210, 15, 8, 2108, 1890, 1750, 3),
(30, '2024-01-01', 215, 12, 7, 2139, 1950, 1820, 3),
(31, '2025-01-01', 308, 13, 12, 2482, 2320, 2542, 3),
(32, '2025-02-01', 283, 9, 4, 2251, 2153, 1928, 3),
(33, '2025-03-01', 315, 10, 9, 2495, 2356, 2494, 3),
(34, '2025-04-01', 322, 11, 11, 2417, 2355, 2485, 3),
(35, '2025-05-01', 321, 5, 10, 2465, 2383, 2176, 3),
(36, '2025-06-01', 330, 8, 6, 2343, 2241, 2488, 3),
(37, '2025-07-01', 340, 14, 8, 2470, 2440, 2444, 3),
(38, '2025-08-01', 312, 8, 9, 2478, 2382, 2547, 3),
(39, '2025-09-01', 274, 13, 4, 2427, 2344, 2185, 3),
(40, '2025-10-01', 315, 14, 8, 2686, 2646, 2265, 3),
(41, '2025-11-01', 328, 12, 10, 2621, 2576, 3044, 3),
(42, '2025-12-01', 345, 14, 8, 2673, 2578, 2724, 3),
(43, '2023-01-01', 10, 2, 2, 155, 95, 70, 4),
(44, '2024-01-01', 12, 1, 1, 138, 84, 59, 4),
(45, '2025-01-01', 0, 14, 2, 166, 87, 6, 4),
(46, '2025-02-01', 0, 10, 3, 158, 86, 58, 4),
(47, '2025-03-01', 0, 11, 6, 166, 88, 81, 4),
(48, '2025-04-01', 0, 6, 2, 165, 99, 29, 4),
(49, '2025-05-01', 0, 12, 7, 181, 148, 67, 4),
(50, '2025-06-01', 0, 12, 5, 171, 117, 122, 4),
(51, '2025-07-01', 0, 10, 6, 182, 151, 59, 4),
(52, '2025-08-01', 0, 14, 1, 178, 138, 3, 4),
(53, '2025-09-01', 0, 15, 5, 159, 129, 35, 4),
(54, '2025-10-01', 0, 6, 6, 138, 67, 72, 4),
(55, '2025-11-01', 0, 10, 5, 136, 84, 61, 4),
(56, '2025-12-01', 0, 7, 4, 161, 112, 63, 4),
(57, '2023-01-01', 34, 5, 6, 403, 350, 286, 5),
(58, '2024-01-01', 37, 4, 3, 420, 331, 229, 5),
(59, '2025-01-01', 12, 35, 2, 392, 376, 313, 5),
(60, '2025-02-01', 0, 36, 2, 345, 310, 211, 5),
(61, '2025-03-01', 7, 30, 5, 392, 363, 230, 5),
(62, '2025-04-01', 0, 42, 4, 375, 351, 202, 5),
(63, '2025-05-01', 0, 43, 4, 377, 333, 189, 5),
(64, '2025-06-01', 0, 34, 2, 369, 352, 165, 5),
(65, '2025-07-01', 0, 52, 4, 376, 365, 226, 5),
(66, '2025-08-01', 0, 37, 3, 380, 357, 243, 5),
(67, '2025-09-01', 0, 48, 1, 381, 377, 200, 5),
(68, '2025-10-01', 10, 28, 3, 420, 420, 278, 5),
(69, '2025-11-01', 0, 40, 2, 404, 402, 201, 5),
(70, '2025-12-01', 0, 43, 3, 397, 393, 243, 5),
(71, '2023-01-01', 60, 5, 1, 500, 420, 380, 6),
(72, '2025-01-01', 19, 3, 0, 155, 69, 84, 6),
(73, '2025-02-01', 25, 0, 0, 140, 61, 60, 6),
(74, '2025-03-01', 32, 2, 0, 157, 81, 100, 6),
(75, '2025-04-01', 21, 0, 1, 150, 88, 58, 6),
(76, '2025-05-01', 42, 1, 0, 190, 111, 195, 6),
(77, '2025-06-01', 39, 7, 0, 224, 165, 139, 6),
(78, '2025-07-01', 47, 1, 0, 209, 159, 160, 6),
(79, '2025-08-01', 73, 5, 0, 326, 242, 294, 6),
(80, '2025-09-01', 41, 4, 0, 215, 153, 175, 6),
(81, '2025-10-01', 34, 3, 0, 155, 101, 133, 6),
(82, '2025-11-01', 30, 2, 0, 164, 141, 138, 6),
(83, '2025-12-01', 21, 1, 0, 157, 138, 60, 6),
(84, '2023-01-01', 40, 4, 1, 350, 290, 250, 7),
(85, '2025-01-01', 5, 1, 0, 124, 46, 76, 7),
(86, '2025-02-01', 6, 1, 0, 112, 42, 14, 7),
(87, '2025-03-01', 0, 6, 0, 124, 85, 20, 7),
(88, '2025-04-01', 7, 1, 0, 120, 53, 33, 7),
(89, '2025-05-01', 10, 1, 0, 124, 72, 39, 7),
(90, '2025-06-01', 14, 1, 0, 120, 90, 51, 7),
(91, '2025-07-01', 4, 6, 1, 123, 90, 44, 7),
(92, '2025-08-01', 0, 9, 0, 124, 100, 37, 7),
(93, '2025-09-01', 6, 5, 1, 120, 86, 40, 7),
(94, '2025-10-01', 16, 0, 0, 124, 80, 59, 7),
(95, '2025-11-01', 6, 2, 0, 120, 78, 38, 7),
(96, '2025-12-01', 9, 1, 0, 124, 58, 33, 7),
(97, '2023-01-01', 35, 4, 1, 300, 260, 220, 8),
(98, '2025-01-01', 13, 0, 0, 186, 30, 36, 8),
(99, '2025-02-01', 20, 0, 0, 168, 36, 37, 8),
(100, '2025-03-01', 20, 1, 0, 185, 71, 44, 8),
(101, '2025-04-01', 18, 0, 0, 180, 39, 33, 8),
(102, '2025-05-01', 18, 3, 0, 186, 79, 50, 8),
(103, '2025-06-01', 15, 1, 0, 180, 45, 52, 8),
(104, '2025-07-01', 24, 1, 0, 185, 57, 60, 8),
(105, '2025-08-01', 26, 1, 0, 186, 44, 50, 8),
(106, '2025-09-01', 20, 1, 0, 180, 72, 41, 8),
(107, '2025-10-01', 21, 0, 0, 186, 110, 55, 8),
(108, '2025-11-01', 14, 3, 0, 167, 74, 33, 8),
(109, '2025-12-01', 23, 1, 0, 184, 69, 42, 8),
(110, '2023-01-01', 90, 3, 0, 600, 480, 400, 9),
(111, '2025-01-01', 107, 0, 0, 573, 299, 302, 9),
(112, '2025-02-01', 110, 1, 0, 505, 361, 308, 9),
(113, '2025-03-01', 142, 0, 0, 538, 357, 408, 9),
(114, '2025-04-01', 121, 1, 0, 526, 344, 337, 9),
(115, '2025-05-01', 111, 0, 0, 560, 320, 287, 9),
(116, '2025-06-01', 116, 1, 0, 550, 343, 372, 9),
(117, '2025-07-01', 141, 0, 0, 541, 384, 412, 9),
(118, '2025-08-01', 114, 1, 0, 542, 349, 313, 9),
(119, '2025-09-01', 119, 1, 0, 544, 375, 399, 9),
(120, '2025-10-01', 142, 0, 0, 556, 410, 374, 9),
(121, '2025-11-01', 134, 0, 0, 528, 375, 442, 9),
(122, '2025-12-01', 143, 2, 0, 572, 403, 398, 9);

-- Table: dashboard_gestionclinica
DROP TABLE IF EXISTS public.dashboard_gestionclinica CASCADE;
CREATE TABLE public.dashboard_gestionclinica (
    id bigint NOT NULL,
    anio integer NOT NULL,
    mes integer NOT NULL,
    peso_grd double precision NOT NULL,
    inliers_pct double precision NOT NULL,
    outliers_pct double precision NOT NULL,
    mortalidad_pct double precision NOT NULL,
    estancias_evitables integer NOT NULL,
    total_egresos integer NOT NULL,
    servicio_id bigint NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO public.dashboard_gestionclinica (id, anio, mes, peso_grd, inliers_pct, outliers_pct, mortalidad_pct, estancias_evitables, total_egresos, servicio_id) VALUES
(1, 2026, 5, 1.2, 85.0, 15.0, 2.5, 10, 150, 1),
(2, 2026, 5, 3.5, 90.0, 10.0, 8.0, 2, 45, 2),
(3, 2026, 5, 0.9, 95.0, 5.0, 0.5, 5, 80, 3);

-- Table: dashboard_indicador
DROP TABLE IF EXISTS public.dashboard_indicador CASCADE;
CREATE TABLE public.dashboard_indicador (
    id bigint NOT NULL,
    nombre character varying(150) NOT NULL,
    formula text,
    unidad character varying(50) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO public.dashboard_indicador (id, nombre, formula, unidad) VALUES
(1, 'Ocupación de Camas', '(Camas Ocupadas / Camas Totales) * 100', 'Porcentaje'),
(2, 'Promedio Días Estada', 'Total Días Estada / Egresos', 'Días'),
(3, 'Tasa de Mortalidad', '(Defunciones / Egresos) * 100', 'Porcentaje');

-- Table: dashboard_listaespera
DROP TABLE IF EXISTS public.dashboard_listaespera CASCADE;
CREATE TABLE public.dashboard_listaespera (
    id bigint NOT NULL,
    especialidad character varying(100) NOT NULL,
    tipo_atencion character varying(50) NOT NULL,
    cantidad_pacientes integer NOT NULL,
    dias_espera_promedio integer NOT NULL,
    fecha_corte date NOT NULL,
    servicio_id bigint,
    PRIMARY KEY (id)
);

INSERT INTO public.dashboard_listaespera (id, especialidad, tipo_atencion, cantidad_pacientes, dias_espera_promedio, fecha_corte, servicio_id) VALUES
(1, 'Traumatología General', 'Consulta Nueva', 120, 45, '2026-05-01', 4),
(2, 'Cirugía Pediátrica', 'Intervención Quirúrgica', 30, 90, '2026-05-01', 3),
(3, 'Medicina General', 'Control', 50, 15, '2026-05-01', 1);

-- Table: dashboard_nivel
DROP TABLE IF EXISTS public.dashboard_nivel CASCADE;
CREATE TABLE public.dashboard_nivel (
    id bigint NOT NULL,
    codigo character varying(10) NOT NULL,
    nombre character varying(200) NOT NULL,
    tipo character varying(100) NOT NULL,
    color character varying(50) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO public.dashboard_nivel (id, codigo, nombre, tipo, color) VALUES
(1, '0', 'Total Establecimiento', 'General', 'primary'),
(2, '330', 'Área Pensionado', 'Básico', 'blue'),
(3, '404', 'Área Médico-Quirúrgico', 'Medio', 'orange'),
(4, '405', 'UCI', 'Crítico', 'red'),
(5, '406', 'UTI', 'Crítico', 'red'),
(6, '407', 'Área Pediátrica Básica', 'Básico', 'green'),
(7, '412', 'Área Intermedio Pediátrico', 'Medio', 'orange'),
(8, '413', 'Área Neonatología', 'Crítico', 'purple'),
(9, '416', 'Área Obstetricia', 'Básico', 'pink');

-- Table: dashboard_oportunidadhospitalizacion
DROP TABLE IF EXISTS public.dashboard_oportunidadhospitalizacion CASCADE;
CREATE TABLE public.dashboard_oportunidadhospitalizacion (
    id bigint NOT NULL,
    year integer NOT NULL,
    month integer NOT NULL,
    p1 integer NOT NULL,
    p2 integer NOT NULL,
    servicio_id bigint,
    PRIMARY KEY (id)
);

INSERT INTO public.dashboard_oportunidadhospitalizacion (id, year, month, p1, p2, servicio_id) VALUES
(1, 2023, 1, 314, 343, NULL),
(2, 2023, 2, 324, 342, NULL),
(3, 2023, 3, 317, 325, NULL),
(4, 2023, 4, 351, 399, NULL),
(5, 2023, 5, 417, 478, NULL),
(6, 2023, 6, 382, 455, NULL),
(7, 2023, 7, 242, 270, NULL),
(8, 2023, 8, 258, 308, NULL),
(9, 2023, 9, 324, 397, NULL),
(10, 2023, 10, 333, 422, NULL),
(11, 2023, 11, 313, 373, NULL),
(12, 2023, 12, 342, 380, NULL),
(13, 2024, 1, 371, 447, NULL),
(14, 2024, 2, 389, 419, NULL),
(15, 2024, 3, 422, 487, NULL),
(16, 2024, 4, 388, 460, NULL),
(17, 2024, 5, 400, 475, NULL),
(18, 2024, 6, 415, 465, NULL),
(19, 2024, 7, 431, 534, NULL),
(20, 2024, 8, 462, 498, NULL),
(21, 2024, 9, 395, 474, NULL),
(22, 2024, 10, 437, 545, NULL),
(23, 2024, 11, 365, 472, NULL),
(24, 2024, 12, 364, 454, NULL),
(25, 2025, 1, 303, 438, NULL),
(26, 2025, 2, 287, 372, NULL),
(27, 2025, 3, 334, 404, NULL),
(28, 2025, 4, 369, 391, NULL),
(29, 2025, 5, 373, 395, NULL),
(30, 2025, 6, 386, 436, NULL),
(31, 2025, 7, 357, 435, NULL),
(32, 2025, 8, 370, 434, NULL),
(33, 2025, 9, 264, 388, NULL),
(34, 2025, 10, 322, 389, NULL),
(35, 2025, 11, 271, 372, NULL),
(36, 2025, 12, 248, 386, NULL);

-- Table: dashboard_servicio
DROP TABLE IF EXISTS public.dashboard_servicio CASCADE;
CREATE TABLE public.dashboard_servicio (
    id bigint NOT NULL,
    codigo character varying(50) NOT NULL,
    nombre character varying(100) NOT NULL,
    piso character varying(50),
    PRIMARY KEY (id)
);

INSERT INTO public.dashboard_servicio (id, codigo, nombre, piso) VALUES
(1, 'URG', 'Urgencias', 'Piso 1'),
(2, 'UCI', 'Unidad de Cuidados Intensivos', 'Piso 2'),
(3, 'PED', 'Pediatría', 'Piso 3'),
(4, 'TRA', 'Traumatología', 'Piso 4'),
(5, '20-320', 'UTI Adulto', ''),
(6, '20-323', 'UTI Pediatria', ''),
(7, '20-330', 'Pensionado Adulto', ''),
(8, '20-342', 'Pensionado Maternidad', ''),
(9, '404', 'Area Medico-Quirurgico Cuidados Medios', ''),
(10, '20-150', 'Pediatria', ''),
(11, '20-152', 'Neonatologia Cunas', ''),
(12, '20-160', 'Obstetricia y Ginecologia', ''),
(13, '20-310', 'UCI Adulto', '');

-- Table: dashboard_serviciogrd
DROP TABLE IF EXISTS public.dashboard_serviciogrd CASCADE;
CREATE TABLE public.dashboard_serviciogrd (
    id bigint NOT NULL,
    anio integer NOT NULL,
    egresos integer NOT NULL,
    pct_egresos double precision NOT NULL,
    peso_grd double precision NOT NULL,
    inliers_pct double precision NOT NULL,
    outliers_pct double precision NOT NULL,
    mortalidad_pct double precision NOT NULL,
    estada_media double precision NOT NULL,
    em_norma double precision NOT NULL,
    estada_inliers double precision NOT NULL,
    emaf_inlier double precision NOT NULL,
    emac_inlier double precision NOT NULL,
    iema_inlier double precision NOT NULL,
    if_inlier double precision NOT NULL,
    ic_inlier double precision NOT NULL,
    estancias_evitables double precision NOT NULL,
    estada_outliers double precision NOT NULL,
    outliers_stay_pct double precision NOT NULL,
    servicio_id bigint NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO public.dashboard_serviciogrd (id, anio, egresos, pct_egresos, peso_grd, inliers_pct, outliers_pct, mortalidad_pct, estada_media, em_norma, estada_inliers, emaf_inlier, emac_inlier, iema_inlier, if_inlier, ic_inlier, estancias_evitables, estada_outliers, outliers_stay_pct, servicio_id) VALUES
(1, 2025, 472, 0.0626742796441376, 0.605722435897436, 0.991525423728814, 0.00847457627118644, 0.00211864406779661, 3.40254237288136, 5.07379763784669, 3.18376068376068, 4.53785001353601, 3.79038498943422, 0.701601127023547, 0.747050879830291, 0.894369530957853, -633.713806334852, 29.0, 0.0722291407222914, 10),
(2, 2025, 241, 0.0320010622759262, 0.346723628691983, 0.983402489626556, 0.016597510373444, 0.0, 2.4356846473029, 4.15495333135423, 2.08438818565401, 3.43633875278776, 3.18595447804851, 0.606572382877861, 0.766784660132418, 0.827046293602471, -320.412284410699, 23.25, 0.158432708688245, 11),
(3, 2025, 2065, 0.274199973443102, 0.499458095723014, 0.951089588377724, 0.0368038740920097, 0.0, 2.59418886198547, 2.78305032524718, 2.2622199592668, 2.54108724261738, 2.35679673746095, 0.890256706391813, 0.846839425101531, 0.913058315749894, -547.695344500536, 12.0263157894737, 0.170617883143551, 12),
(4, 2025, 116, 0.0154030009294914, 3.38442956521739, 0.991379310344828, 0.00862068965517241, 0.482758620689655, 8.6551724137931, 10.2435751663493, 8.38260869565217, 15.6048352675665, 5.51709985341081, 0.53718021061554, 0.538591240247331, 1.52337782601813, -830.556055770145, 40.0, 0.0398406374501992, 13),
(5, 2025, 364, 0.048333554640818, 1.20692681564246, 0.983516483516484, 0.0164835164835165, 0.0879120879120879, 6.90934065934066, 7.66499216986174, 6.5391061452514, 8.75376242404726, 5.46703569657331, 0.747005210843736, 0.713247394833531, 1.14204453573567, -792.846947808918, 29.0, 0.0691848906560636, 5),
(6, 2025, 105, 0.0139423715310052, 1.10406153846154, 0.990476190476191, 0.00952380952380952, 0.019047619047619, 4.05714285714286, 6.84365898475799, 3.46153846153846, 6.31096626901657, 3.3456380871433, 0.548495795094444, 0.488866861220674, 0.922162586282014, -296.340491977723, 66.0, 0.154929577464789, 6),
(7, 2025, 240, 0.0318682777851547, 0.844719166666667, 1.0, 0.0, 0.0, 1.70416666666667, 2.80753652809075, 1.70416666666667, 3.10191310230019, 1.25794581697787, 0.549392136550493, 0.448060356255926, 1.104852268622, -335.459144552045, 0.0, 0.0, 7),
(8, 2025, 475, 0.063072633116452, 0.510440631578947, 1.0, 0.0, 0.0, 2.06947368421053, 2.59365970977485, 2.06947368421053, 3.02160872136021, 1.91305978731665, 0.684891352603367, 0.737590895253842, 1.16499813370757, -452.264142646103, 0.0, 0.0, 8),
(9, 2025, 3453, 0.458504846633913, 1.01927906553398, 0.954532290761657, 0.0448885027512308, 0.0283811178685201, 8.10020272227049, 5.75140363766097, 7.02791262135922, 7.83336318151069, 5.43257626361775, 0.89717691603364, 0.944565293251987, 1.36199155458622, -2654.76504625925, 30.9548387096774, 0.171540936717912, 9);

-- Table: dashboard_valorindicador
DROP TABLE IF EXISTS public.dashboard_valorindicador CASCADE;
CREATE TABLE public.dashboard_valorindicador (
    id bigint NOT NULL,
    anio integer NOT NULL,
    mes integer NOT NULL,
    valor_calculado double precision NOT NULL,
    indicador_id bigint NOT NULL,
    servicio_id bigint NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO public.dashboard_valorindicador (id, anio, mes, valor_calculado, indicador_id, servicio_id) VALUES
(1, 2026, 5, 85.5, 1, 1),
(2, 2026, 5, 95.0, 1, 2),
(3, 2026, 5, 4.2, 2, 1),
(4, 2026, 5, 8.0, 3, 2);

-- Table: django_admin_log
DROP TABLE IF EXISTS public.django_admin_log CASCADE;
CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    PRIMARY KEY (id)
);

-- Table: django_content_type
DROP TABLE IF EXISTS public.django_content_type CASCADE;
CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO public.django_content_type (id, app_label, model) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'group'),
(3, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'dashboard', 'cama'),
(8, 'dashboard', 'gestionclinica'),
(9, 'dashboard', 'indicador'),
(10, 'dashboard', 'listaespera'),
(11, 'dashboard', 'servicio'),
(12, 'dashboard', 'valorindicador'),
(13, 'dashboard', 'egreso'),
(14, 'dashboard', 'nivel'),
(15, 'dashboard', 'oportunidadhospitalizacion'),
(16, 'dashboard', 'serviciogrd');

-- Table: django_migrations
DROP TABLE IF EXISTS public.django_migrations CASCADE;
CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO public.django_migrations (id, app, name, applied) VALUES
(1, 'contenttypes', '0001_initial', '2026-05-04 01:14:05.081492+00:00'),
(2, 'auth', '0001_initial', '2026-05-04 01:14:09.198761+00:00'),
(3, 'admin', '0001_initial', '2026-05-04 01:14:10.304558+00:00'),
(4, 'admin', '0002_logentry_remove_auto_add', '2026-05-04 01:14:10.446178+00:00'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2026-05-04 01:14:10.852609+00:00'),
(6, 'contenttypes', '0002_remove_content_type_name', '2026-05-04 01:14:11.679541+00:00'),
(7, 'auth', '0002_alter_permission_name_max_length', '2026-05-04 01:14:12.228564+00:00'),
(8, 'auth', '0003_alter_user_email_max_length', '2026-05-04 01:14:12.766862+00:00'),
(9, 'auth', '0004_alter_user_username_opts', '2026-05-04 01:14:13.038852+00:00'),
(10, 'auth', '0005_alter_user_last_login_null', '2026-05-04 01:14:13.747880+00:00'),
(11, 'auth', '0006_require_contenttypes_0002', '2026-05-04 01:14:14.022499+00:00'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2026-05-04 01:14:14.433637+00:00'),
(13, 'auth', '0008_alter_user_username_max_length', '2026-05-04 01:14:15.121379+00:00'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2026-05-04 01:14:15.657219+00:00'),
(15, 'auth', '0010_alter_group_name_max_length', '2026-05-04 01:14:16.202839+00:00'),
(16, 'auth', '0011_update_proxy_permissions', '2026-05-04 01:14:16.471954+00:00'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2026-05-04 01:14:17.141442+00:00'),
(18, 'sessions', '0001_initial', '2026-05-04 01:14:18.127715+00:00'),
(19, 'dashboard', '0001_initial', '2026-05-04 01:27:15.018073+00:00'),
(20, 'dashboard', '0002_nivel_egreso', '2026-05-11 04:54:01.783297+00:00'),
(21, 'dashboard', '0003_oportunidadhospitalizacion_serviciogrd', '2026-05-11 05:16:49.089064+00:00');

-- Table: django_session
DROP TABLE IF EXISTS public.django_session CASCADE;
CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL,
    PRIMARY KEY (session_key)
);

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES
('lln6butij6v2ffqam5el5wx4sxpeloji', '.eJxVjLsOgzAMAP_FcxXFuHmYsTvfgJzEFNoKJAJT1X-vkBja9e50b-hl38Z-r7r2U4EWEC6_LEl-6nyI8pD5vpi8zNs6JXMk5rTVdEvR1-1s_waj1BFaaLLlJEzXGG2InBNTbpR8xOAoUrARC1keHLPztlBBHQJ6QlF04hU-X63zNpY:1wJhzm:pFVH7Ap5T1ItwPdGAFMrPqO5e9IWAgIYJzlahJQTm8A', '2026-05-18 01:21:14.546596+00:00'),
('xmk5xqtp0qdcfxyaoc81kxlic2naxxyq', '.eJxVjDsOwjAQBe_iGlneLP4sJX3OYK3tDQ6gRIqTCnF3iJQC2jcz76Uib2uNW5MljkVdFKjT75Y4P2TaQbnzdJt1nqd1GZPeFX3Qpvu5yPN6uH8HlVv91l02lJjwHILxgXIizJ2gC-AtBvQmQEFDgyWyzhQsIIMHh8AClp2o9wet8zaW:1wJiIt:mEqCLNwxc1ZoR6m_RgOmJzQpOovCPu5p4W9KHFsIl8Y', '2026-05-18 01:40:59.627103+00:00'),
('j9snj1uy41uk5ooigvki05fgru0gje5p', '.eJxVjDsOwjAQBe_iGlneLP4sJX3OYK3tDQ6gRIqTCnF3iJQC2jcz76Uib2uNW5MljkVdFKjT75Y4P2TaQbnzdJt1nqd1GZPeFX3Qpvu5yPN6uH8HlVv91l02lJjwHILxgXIizJ2gC-AtBvQmQEFDgyWyzhQsIIMHh8AClp2o9wet8zaW:1wJkNN:tHDnSPizl_CkHKcutKhyBcnixFluSKpLV9P1dNw2PWI', '2026-05-18 03:53:45.290665+00:00'),
('uso37tcr5xx9zw148nbcm1dy12na0r1k', '.eJxVjDsOwjAQBe_iGlneLP4sJX3OYK3tDQ6gRIqTCnF3iJQC2jcz76Uib2uNW5MljkVdFKjT75Y4P2TaQbnzdJt1nqd1GZPeFX3Qpvu5yPN6uH8HlVv91l02lJjwHILxgXIizJ2gC-AtBvQmQEFDgyWyzhQsIIMHh8AClp2o9wet8zaW:1wJkqb:SPS0V7TtJVyrAq4yec_3DDTwdNkn93pC7Na7yCbA5XQ', '2026-05-18 04:23:57.799132+00:00'),
('7upywj6mxvtgvemjbhfmwmvxrs7rgufs', '.eJxVjDsOwjAQBe_iGlneLP4sJX3OYK3tDQ6gRIqTCnF3iJQC2jcz76Uib2uNW5MljkVdFKjT75Y4P2TaQbnzdJt1nqd1GZPeFX3Qpvu5yPN6uH8HlVv91l02lJjwHILxgXIizJ2gC-AtBvQmQEFDgyWyzhQsIIMHh8AClp2o9wet8zaW:1wNYpJ:MTBbFLM8vhdkl2BeVY0KiKUocMyd5vJdqhDSaLki364', '2026-05-28 16:22:21.027243+00:00');

-- Table: gestionclinica
DROP TABLE IF EXISTS public.gestionclinica CASCADE;
CREATE TABLE public.gestionclinica (
    id integer DEFAULT nextval('gestionclinica_id_seq'::regclass) NOT NULL,
    servicio_id integer NOT NULL,
    anio integer NOT NULL,
    mes integer NOT NULL,
    peso_grd double precision NOT NULL,
    inliers_pct double precision NOT NULL,
    outliers_pct double precision NOT NULL,
    mortalidad_pct double precision NOT NULL,
    estancias_evitables integer NOT NULL,
    total_egresos integer NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO public.gestionclinica (id, servicio_id, anio, mes, peso_grd, inliers_pct, outliers_pct, mortalidad_pct, estancias_evitables, total_egresos) VALUES
(1, 1, 2026, 5, 1.2, 85.0, 15.0, 2.5, 10, 150),
(2, 2, 2026, 5, 3.5, 90.0, 10.0, 8.0, 2, 45),
(3, 3, 2026, 5, 0.9, 95.0, 5.0, 0.5, 5, 80);

-- Table: indicador
DROP TABLE IF EXISTS public.indicador CASCADE;
CREATE TABLE public.indicador (
    id integer DEFAULT nextval('indicador_id_seq'::regclass) NOT NULL,
    nombre character varying(150) NOT NULL,
    formula text,
    unidad character varying(50) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO public.indicador (id, nombre, formula, unidad) VALUES
(1, 'Ocupación de Camas', '(Camas Ocupadas / Camas Totales) * 100', 'Porcentaje'),
(2, 'Promedio Días Estada', 'Total Días Estada / Egresos', 'Días'),
(3, 'Tasa de Mortalidad', '(Defunciones / Egresos) * 100', 'Porcentaje');

-- Table: listaespera
DROP TABLE IF EXISTS public.listaespera CASCADE;
CREATE TABLE public.listaespera (
    id integer DEFAULT nextval('listaespera_id_seq'::regclass) NOT NULL,
    servicio_id integer NOT NULL,
    especialidad character varying(100) NOT NULL,
    tipo_atencion character varying(50) NOT NULL,
    cantidad_pacientes integer NOT NULL,
    dias_espera_promedio integer NOT NULL,
    fecha_corte date NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO public.listaespera (id, servicio_id, especialidad, tipo_atencion, cantidad_pacientes, dias_espera_promedio, fecha_corte) VALUES
(1, 4, 'Traumatología General', 'Consulta Nueva', 120, 45, '2026-05-01'),
(2, 3, 'Cirugía Pediátrica', 'Intervención Quirúrgica', 30, 90, '2026-05-01'),
(3, 1, 'Medicina General', 'Control', 50, 15, '2026-05-01');

-- Table: servicio
DROP TABLE IF EXISTS public.servicio CASCADE;
CREATE TABLE public.servicio (
    id integer DEFAULT nextval('servicio_id_seq'::regclass) NOT NULL,
    codigo character varying(50) NOT NULL,
    nombre character varying(100) NOT NULL,
    piso character varying(50),
    PRIMARY KEY (id)
);

INSERT INTO public.servicio (id, codigo, nombre, piso) VALUES
(1, 'URG', 'Urgencias', 'Piso 1'),
(2, 'UCI', 'Unidad de Cuidados Intensivos', 'Piso 2'),
(3, 'PED', 'Pediatría', 'Piso 3'),
(4, 'TRA', 'Traumatología', 'Piso 4');

-- Table: valorindicador
DROP TABLE IF EXISTS public.valorindicador CASCADE;
CREATE TABLE public.valorindicador (
    id integer DEFAULT nextval('valorindicador_id_seq'::regclass) NOT NULL,
    servicio_id integer NOT NULL,
    indicador_id integer NOT NULL,
    anio integer NOT NULL,
    mes integer NOT NULL,
    valor_calculado double precision NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO public.valorindicador (id, servicio_id, indicador_id, anio, mes, valor_calculado) VALUES
(1, 1, 1, 2026, 5, 85.5),
(2, 2, 1, 2026, 5, 95.0),
(3, 1, 2, 2026, 5, 4.2),
(4, 2, 3, 2026, 5, 8.0);

-- Fin del dump