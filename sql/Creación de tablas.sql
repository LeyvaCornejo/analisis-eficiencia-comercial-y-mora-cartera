
/* 
Proyecto: Análisis de la eficiencia comercial y la mora de la cartera
Descripción: Script de creación del modelo de datos base
Autor: Julio Leyva
*/

/* Creación de base de datos (opcional según entorno)
CREATE DATABASE PROYECTO_COBRANZA;
*/

-- ===============================
-- TABLA MAESTRA DE ASESORES
-- ===============================
CREATE TABLE IF NOT EXISTS Mae_Asesores (
    ID_Asesor INT PRIMARY KEY,
    Nombre_Completo VARCHAR(100),
    Agencia VARCHAR(50),
    Zona_Geografica VARCHAR(50),
    Meta_Colocacion_Mes DECIMAL(15,2)
);

-- ===============================
-- TABLA MAESTRA DE CLIENTES
-- ===============================
CREATE TABLE IF NOT EXISTS Mae_Clientes (
    ID_Cliente INT PRIMARY KEY,
    Nombre_Cliente VARCHAR(100),
    Tipo_Segmento VARCHAR(50),
    Score_Riesgo_Interno INT
);

-- ===============================
-- TABLA DE HECHOS: CARTERA
-- ===============================
CREATE TABLE IF NOT EXISTS Hechos_Cartera (
    ID_Credito INT PRIMARY KEY,              -- Número de préstamo
    ID_Asesor INT,                           -- Relación con asesor
    ID_Cliente INT,                          -- Relación con cliente
    Fecha_Desembolso DATE,                   -- Fecha de otorgamiento
    Monto_Otorgado DECIMAL(15,2),             -- Capital inicial
    Saldo_Capital_Actual DECIMAL(15,2),       -- Saldo pendiente
    Dias_Mora_Actual INT,                    -- Días de atraso
    Estado_Prestamo VARCHAR(20),             -- VIGENTE / VENCIDO / CASTIGADO

    CONSTRAINT FK_Asesor_Cartera 
        FOREIGN KEY (ID_Asesor) 
        REFERENCES Mae_Asesores(ID_Asesor),

    CONSTRAINT FK_Cliente_Cartera 
        FOREIGN KEY (ID_Cliente) 
        REFERENCES Mae_Clientes(ID_Cliente)
);

-- =============================================================================
-- 1. LIMPIEZA PREVIA (evita errores por claves duplicadas)
-- =============================================================================
DELETE FROM Hechos_Cartera;
DELETE FROM Mae_Clientes;
DELETE FROM Mae_Asesores;

-- =============================================================================
-- 2. LLENADO DE TABLA MAESTRA: ASESORES
-- =============================================================================
INSERT INTO Mae_Asesores 
(ID_Asesor, Nombre_Completo, Agencia, Zona_Geografica, Meta_Colocacion_Mes) VALUES
(1, 'Carlos Mendoza', 'Sede Central', 'Lima Norte', 500000),
(2, 'Beatriz Luna', 'Sede Sur', 'Lima Sur', 450000),
(3, 'Ricardo Soto', 'Sede Este', 'Lima Este', 300000),
(4, 'Elena Torres', 'Sede Central', 'Lima Norte', 500000),
(5, 'Marcos Ruiz', 'Sede Sur', 'Lima Sur', 450000),
(6, 'Diana Flores', 'Sede Este', 'Lima Este', 300000),
(7, 'Jorge Villa', 'Sede Central', 'Lima Norte', 500000),
(8, 'Lucia Mendez', 'Sede Sur', 'Lima Sur', 450000),
(9, 'Roberto Cano', 'Sede Este', 'Lima Este', 300000),
(10, 'Sofia Rojas', 'Sede Central', 'Lima Norte', 500000);

-- =============================================================================
-- 3. LLENADO DE TABLA MAESTRA: CLIENTES
-- =============================================================================
INSERT INTO Mae_Clientes 
(ID_Cliente, Nombre_Cliente, Tipo_Segmento, Score_Riesgo_Interno) VALUES
(101, 'Corporativo Alfa', 'Corporativo', 900),
(102, 'Bodega Doña Maria', 'Microempresa', 320),
(103, 'Juan Perez', 'Consumo', 750),
(104, 'Textiles Gamarra', 'Pyme', 450),
(105, 'Minera Andes', 'Corporativo', 950),
(106, 'Peluqueria Spa', 'Microempresa', 380),
(107, 'Ana Lopez', 'Consumo', 600),
(108, 'Ferreteria Sol', 'Pyme', 510),
(109, 'Inversiones SAC', 'Corporativo', 880),
(110, 'Tienda Don Jose', 'Microempresa', 300);

-- =============================================================================
-- 4. LLENADO DE TABLA DE HECHOS: CARTERA
-- =============================================================================
INSERT INTO Hechos_Cartera
(ID_Credito, ID_Asesor, ID_Cliente, Fecha_Desembolso, Monto_Otorgado, 
 Saldo_Capital_Actual, Dias_Mora_Actual, Estado_Prestamo) VALUES
(5001, 1, 101, '2025-01-05', 300000, 250000, 0, 'VIGENTE'),
(5002, 1, 105, '2025-02-10', 200000, 200000, 0, 'VIGENTE'),
(5003, 5, 102, '2025-01-15', 150000, 140000, 65, 'VENCIDO'),
(5004, 5, 106, '2025-01-20', 100000, 95000, 40, 'VENCIDO'),
(5005, 10, 110, '2025-01-10', 50000, 48000, 120, 'CASTIGADO'),
(5006, 2, 104, '2025-02-01', 120000, 110000, 0, 'VIGENTE'),
(5007, 3, 107, '2025-02-15', 30000, 30000, 0, 'VIGENTE'),
(5008, 15, 108, '2025-01-25', 250000, 230000, 0, 'VIGENTE'),
(5009, 20, 103, '2025-02-20', 45000, 45000, 0, 'VIGENTE'),
(5010, 30, 109, '2025-02-22', 400000, 400000, 0, 'VIGENTE');

