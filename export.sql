--------------------------------------------------------
--  File created - miércoles-noviembre-20-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CURSO
--------------------------------------------------------

  CREATE TABLE "CURSO" 
   (	"ID_CURSO" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(100), 
	"CREDITOS" NUMBER(*,0), 
	"ID_DEPARTAMENTO" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table DEPARTAMENTO
--------------------------------------------------------

  CREATE TABLE "DEPARTAMENTO" 
   (	"ID_DEPARTAMENTO" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(100), 
	"ID_FACULTAD" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table ESTUDIANTE
--------------------------------------------------------

  CREATE TABLE "ESTUDIANTE" 
   (	"CODIGO_ESTUDIANTE" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(100), 
	"APELLIDO" VARCHAR2(100), 
	"FECHA_NACIMIENTO" DATE, 
	"GENERO" VARCHAR2(100), 
	"ID_DEPARTAMENTO" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table FACULTAD
--------------------------------------------------------

  CREATE TABLE "FACULTAD" 
   (	"ID_FACULTAD" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table GRUPO
--------------------------------------------------------

  CREATE TABLE "GRUPO" 
   (	"ID_GRUPO" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(50), 
	"AÑO" VARCHAR2(100), 
	"PERIODO" VARCHAR2(10), 
	"ID_CURSO" NUMBER(*,0), 
	"ID_PROFESOR" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table INSCRIPCION
--------------------------------------------------------

  CREATE TABLE "INSCRIPCION" 
   (	"CODIGO_ESTUDIANTE" NUMBER(*,0), 
	"ID_GRUPO" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PROFESOR
--------------------------------------------------------

  CREATE TABLE "PROFESOR" 
   (	"ID_PROFESOR" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(100), 
	"APELLIDO" VARCHAR2(100), 
	"ID_DEPARTAMENTO" NUMBER(*,0)
   ) ;

---------------------------------------------------
--   DATA FOR TABLE INSCRIPCION
--   FILTER = none used
---------------------------------------------------
REM INSERTING into INSCRIPCION
Insert into INSCRIPCION (CODIGO_ESTUDIANTE,ID_GRUPO) values (1,1);
Insert into INSCRIPCION (CODIGO_ESTUDIANTE,ID_GRUPO) values (2,2);
Insert into INSCRIPCION (CODIGO_ESTUDIANTE,ID_GRUPO) values (3,3);

---------------------------------------------------
--   END DATA FOR TABLE INSCRIPCION
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE FACULTAD
--   FILTER = none used
---------------------------------------------------
REM INSERTING into FACULTAD
Insert into FACULTAD (ID_FACULTAD,NOMBRE) values (1,'Jota');
Insert into FACULTAD (ID_FACULTAD,NOMBRE) values (2,'Manuel');
Insert into FACULTAD (ID_FACULTAD,NOMBRE) values (3,'Andres');

---------------------------------------------------
--   END DATA FOR TABLE FACULTAD
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE ESTUDIANTE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ESTUDIANTE
Insert into ESTUDIANTE (CODIGO_ESTUDIANTE,NOMBRE,APELLIDO,FECHA_NACIMIENTO,GENERO,ID_DEPARTAMENTO) values (1,'Jose','Perez',to_timestamp('12/03/02 12:00:00,000000000 AM','DD/MM/RR HH12:MI:SS,FF AM'),'M',1);
Insert into ESTUDIANTE (CODIGO_ESTUDIANTE,NOMBRE,APELLIDO,FECHA_NACIMIENTO,GENERO,ID_DEPARTAMENTO) values (2,' luis','Rolon',to_timestamp('12/08/09 12:00:00,000000000 AM','DD/MM/RR HH12:MI:SS,FF AM'),'M',2);
Insert into ESTUDIANTE (CODIGO_ESTUDIANTE,NOMBRE,APELLIDO,FECHA_NACIMIENTO,GENERO,ID_DEPARTAMENTO) values (3,'Pedro','Carrillo',to_timestamp('11/04/05 12:00:00,000000000 AM','DD/MM/RR HH12:MI:SS,FF AM'),'M',3);

---------------------------------------------------
--   END DATA FOR TABLE ESTUDIANTE
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE DEPARTAMENTO
--   FILTER = none used
---------------------------------------------------
REM INSERTING into DEPARTAMENTO
Insert into DEPARTAMENTO (ID_DEPARTAMENTO,NOMBRE,ID_FACULTAD) values (1,'SISTEMAS',1);
Insert into DEPARTAMENTO (ID_DEPARTAMENTO,NOMBRE,ID_FACULTAD) values (2,'Osea',2);
Insert into DEPARTAMENTO (ID_DEPARTAMENTO,NOMBRE,ID_FACULTAD) values (3,'Penal',3);

---------------------------------------------------
--   END DATA FOR TABLE DEPARTAMENTO
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE PROFESOR
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PROFESOR
Insert into PROFESOR (ID_PROFESOR,NOMBRE,APELLIDO,ID_DEPARTAMENTO) values (1,'Jose','Perez',1);
Insert into PROFESOR (ID_PROFESOR,NOMBRE,APELLIDO,ID_DEPARTAMENTO) values (2,'Luis','Perez',2);
Insert into PROFESOR (ID_PROFESOR,NOMBRE,APELLIDO,ID_DEPARTAMENTO) values (3,'Jose','Perez',3);

---------------------------------------------------
--   END DATA FOR TABLE PROFESOR
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE GRUPO
--   FILTER = none used
---------------------------------------------------
REM INSERTING into GRUPO
Insert into GRUPO (ID_GRUPO,NOMBRE,AÑO,PERIODO,ID_CURSO,ID_PROFESOR) values (1,'Jose','12/03/02','2',1,1);
Insert into GRUPO (ID_GRUPO,NOMBRE,AÑO,PERIODO,ID_CURSO,ID_PROFESOR) values (2,'Pedro','12/03/02','2',2,2);
Insert into GRUPO (ID_GRUPO,NOMBRE,AÑO,PERIODO,ID_CURSO,ID_PROFESOR) values (3,'Juan','12/03/02','2',3,3);

---------------------------------------------------
--   END DATA FOR TABLE GRUPO
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE CURSO
--   FILTER = none used
---------------------------------------------------
REM INSERTING into CURSO
Insert into CURSO (ID_CURSO,NOMBRE,CREDITOS,ID_DEPARTAMENTO) values (1,'PROGRAMACION',2,1);
Insert into CURSO (ID_CURSO,NOMBRE,CREDITOS,ID_DEPARTAMENTO) values (2,'OSEA',2,2);
Insert into CURSO (ID_CURSO,NOMBRE,CREDITOS,ID_DEPARTAMENTO) values (3,'CONSTITUCION',3,3);

---------------------------------------------------
--   END DATA FOR TABLE CURSO
---------------------------------------------------
--------------------------------------------------------
--  Constraints for Table CURSO
--------------------------------------------------------

  ALTER TABLE "CURSO" ADD PRIMARY KEY ("ID_CURSO") ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPARTAMENTO
--------------------------------------------------------

  ALTER TABLE "DEPARTAMENTO" ADD PRIMARY KEY ("ID_DEPARTAMENTO") ENABLE;
--------------------------------------------------------
--  Constraints for Table ESTUDIANTE
--------------------------------------------------------

  ALTER TABLE "ESTUDIANTE" ADD PRIMARY KEY ("CODIGO_ESTUDIANTE") ENABLE;
--------------------------------------------------------
--  Constraints for Table FACULTAD
--------------------------------------------------------

  ALTER TABLE "FACULTAD" ADD PRIMARY KEY ("ID_FACULTAD") ENABLE;
--------------------------------------------------------
--  Constraints for Table GRUPO
--------------------------------------------------------

  ALTER TABLE "GRUPO" ADD PRIMARY KEY ("ID_GRUPO") ENABLE;

--------------------------------------------------------
--  Constraints for Table PROFESOR
--------------------------------------------------------

  ALTER TABLE "PROFESOR" ADD PRIMARY KEY ("ID_PROFESOR") ENABLE;
--------------------------------------------------------
--  DDL for Index SYS_C004111
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C004111" ON "CURSO" ("ID_CURSO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C004109
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C004109" ON "DEPARTAMENTO" ("ID_DEPARTAMENTO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C004115
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C004115" ON "ESTUDIANTE" ("CODIGO_ESTUDIANTE") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C004106
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C004106" ON "FACULTAD" ("ID_FACULTAD") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C004117
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C004117" ON "GRUPO" ("ID_GRUPO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C004113
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C004113" ON "PROFESOR" ("ID_PROFESOR") 
  ;
--------------------------------------------------------
--  Ref Constraints for Table CURSO
--------------------------------------------------------

  ALTER TABLE "CURSO" ADD CONSTRAINT "FK_CURSO_DEPARTAMENTO" FOREIGN KEY ("ID_DEPARTAMENTO")
	  REFERENCES "DEPARTAMENTO" ("ID_DEPARTAMENTO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DEPARTAMENTO
--------------------------------------------------------

  ALTER TABLE "DEPARTAMENTO" ADD CONSTRAINT "FK_DEPARTAMENTO_FACULTAD" FOREIGN KEY ("ID_FACULTAD")
	  REFERENCES "FACULTAD" ("ID_FACULTAD") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ESTUDIANTE
--------------------------------------------------------

  ALTER TABLE "ESTUDIANTE" ADD CONSTRAINT "FK_ESTUDIANTE_DEPARTAMENTO" FOREIGN KEY ("ID_DEPARTAMENTO")
	  REFERENCES "DEPARTAMENTO" ("ID_DEPARTAMENTO") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table GRUPO
--------------------------------------------------------

  ALTER TABLE "GRUPO" ADD CONSTRAINT "FK_GRUPO_CURSO" FOREIGN KEY ("ID_CURSO")
	  REFERENCES "CURSO" ("ID_CURSO") ENABLE;
 
  ALTER TABLE "GRUPO" ADD CONSTRAINT "FK_GRUPO_PROFESOR" FOREIGN KEY ("ID_PROFESOR")
	  REFERENCES "PROFESOR" ("ID_PROFESOR") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INSCRIPCION
--------------------------------------------------------

  ALTER TABLE "INSCRIPCION" ADD CONSTRAINT "FK_INSCRIPCION_ESTUDIANTE" FOREIGN KEY ("CODIGO_ESTUDIANTE")
	  REFERENCES "ESTUDIANTE" ("CODIGO_ESTUDIANTE") ENABLE;
 
  ALTER TABLE "INSCRIPCION" ADD CONSTRAINT "FK_INSCRIPCION_GRUPO" FOREIGN KEY ("ID_GRUPO")
	  REFERENCES "GRUPO" ("ID_GRUPO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROFESOR
--------------------------------------------------------

  ALTER TABLE "PROFESOR" ADD CONSTRAINT "FK_PROFESOR_DEPARTAMENTO" FOREIGN KEY ("ID_DEPARTAMENTO")
	  REFERENCES "DEPARTAMENTO" ("ID_DEPARTAMENTO") ENABLE;
