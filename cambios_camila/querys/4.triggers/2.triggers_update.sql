USE Gym;
GO

-- Actualizar modifiedDate en todas las tablas
-- 1.Clientes
CREATE TRIGGER trg_clienteModifiedDate
ON CLIENTES
AFTER UPDATE
AS
BEGIN
    UPDATE CLIENTES
    SET ModifiedDate = GETDATE()
    FROM CLIENTES c
    INNER JOIN inserted i ON c.ClienteID = i.ClienteID;
END;

-- 2.Servicios
CREATE TRIGGER trg_servicioModifiedDate
ON SERVICIOS
AFTER UPDATE
AS
BEGIN
    UPDATE SERVICIOS
    SET ModifiedDate = GETDATE()
    FROM SERVICIOS s
    INNER JOIN inserted i ON s.ServicioID = i.ServicioID;
END;

-- 3.Descuentos
CREATE TRIGGER trg_descuentosModifiedDate
ON DESCUENTOS
AFTER UPDATE
AS
BEGIN
    UPDATE DESCUENTOS
    SET ModifiedDate = GETDATE()
    FROM DESCUENTOS d
    INNER JOIN inserted i ON d.DescuentoID = i.DescuentoID;
END;

-- 4.Inscripcion
CREATE TRIGGER trg_inscripcionModifiedDate
ON INSCRIPCION
AFTER UPDATE
AS
BEGIN
    UPDATE INSCRIPCION
    SET ModifiedDate = GETDATE()
    FROM INSCRIPCION i
    INNER JOIN inserted i2 ON i.InscripcionID = i2.InscripcionID;
END;

-- 5.nventario
CREATE TRIGGER trg_inventarioModifiedDate
ON INVENTARIO
AFTER UPDATE
AS
BEGIN
    UPDATE INVENTARIO
    SET ModifiedDate = GETDATE()
    FROM INVENTARIO i
    INNER JOIN inserted i2 ON i.EquipoID = i2.EquipoID;
END;

-- 6.Entrenadores
CREATE TRIGGER trg_entrenadoresModifiedDate
ON ENTRENADORES
AFTER UPDATE
AS
BEGIN
    UPDATE ENTRENADORES
    SET ModifiedDate = GETDATE()
    FROM ENTRENADORES e
    INNER JOIN inserted i ON e.EntrenadorID = i.EntrenadorID;
END;

-- 7.Asistencia
CREATE TRIGGER trg_asistenciaModifiedDate
ON ASISTENCIA
AFTER UPDATE
AS
BEGIN
    UPDATE ASISTENCIA
    SET ModifiedDate = GETDATE()
    FROM ASISTENCIA a
    INNER JOIN inserted i ON a.AsistenciaID = i.AsistenciaID;
END;

-- 8.Pagos
CREATE TRIGGER trg_pagosModifiedDate
ON PAGOS
AFTER UPDATE
AS
BEGIN
    UPDATE PAGOS
    SET ModifiedDate = GETDATE()
    FROM PAGOS p
    INNER JOIN inserted i ON p.PagoID = i.PagoID;
END;