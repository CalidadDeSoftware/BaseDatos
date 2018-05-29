/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     25/05/2018 13:27:57                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ADMINISTRADOR') and o.name = 'FK_ADMINIST_RELATIONS_PERFIL')
alter table ADMINISTRADOR
   drop constraint FK_ADMINIST_RELATIONS_PERFIL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ADMINISTRADOR') and o.name = 'FK_ADMINIST_RELATIONS_CLINICA')
alter table ADMINISTRADOR
   drop constraint FK_ADMINIST_RELATIONS_CLINICA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CITA') and o.name = 'FK_CITA_RELATIONS_MEDICO')
alter table CITA
   drop constraint FK_CITA_RELATIONS_MEDICO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CITA') and o.name = 'FK_CITA_RELATIONS_PACIENTE')
alter table CITA
   drop constraint FK_CITA_RELATIONS_PACIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CITA') and o.name = 'FK_CITA_RELATIONS_RECEPCIO')
alter table CITA
   drop constraint FK_CITA_RELATIONS_RECEPCIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CLINICA') and o.name = 'FK_CLINICA_RELATIONS_ADMINIST')
alter table CLINICA
   drop constraint FK_CLINICA_RELATIONS_ADMINIST
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CONSULTA') and o.name = 'FK_CONSULTA_RELATIONS_CITA')
alter table CONSULTA
   drop constraint FK_CONSULTA_RELATIONS_CITA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DIA') and o.name = 'FK_DIA_RELATIONS_MEDICO')
alter table DIA
   drop constraint FK_DIA_RELATIONS_MEDICO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HORA') and o.name = 'FK_HORA_RELATIONS_DIA')
alter table HORA
   drop constraint FK_HORA_RELATIONS_DIA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MEDICO') and o.name = 'FK_MEDICO_RELATIONS_ESPECIAL')
alter table MEDICO
   drop constraint FK_MEDICO_RELATIONS_ESPECIAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MEDICO') and o.name = 'FK_MEDICO_RELATIONS_PERFIL')
alter table MEDICO
   drop constraint FK_MEDICO_RELATIONS_PERFIL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PERFIL') and o.name = 'FK_PERFIL_RELATIONS_RECEPCIO')
alter table PERFIL
   drop constraint FK_PERFIL_RELATIONS_RECEPCIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PERFIL') and o.name = 'FK_PERFIL_RELATIONS_ADMINIST')
alter table PERFIL
   drop constraint FK_PERFIL_RELATIONS_ADMINIST
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PERFIL') and o.name = 'FK_PERFIL_RELATIONS_USUARIO')
alter table PERFIL
   drop constraint FK_PERFIL_RELATIONS_USUARIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PERFIL') and o.name = 'FK_PERFIL_RELATIONS_MEDICO')
alter table PERFIL
   drop constraint FK_PERFIL_RELATIONS_MEDICO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RECEPCIONISTA') and o.name = 'FK_RECEPCIO_RELATIONS_PERFIL')
alter table RECEPCIONISTA
   drop constraint FK_RECEPCIO_RELATIONS_PERFIL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('USUARIO') and o.name = 'FK_USUARIO_RELATIONS_PERFIL')
alter table USUARIO
   drop constraint FK_USUARIO_RELATIONS_PERFIL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ADMINISTRADOR')
            and   name  = 'RELATIONSHIP_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index ADMINISTRADOR.RELATIONSHIP_15_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ADMINISTRADOR')
            and   name  = 'RELATIONSHIP_14_FK'
            and   indid > 0
            and   indid < 255)
   drop index ADMINISTRADOR.RELATIONSHIP_14_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ADMINISTRADOR')
            and   type = 'U')
   drop table ADMINISTRADOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CITA')
            and   name  = 'RELATIONSHIP_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index CITA.RELATIONSHIP_6_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CITA')
            and   name  = 'RELATIONSHIP_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index CITA.RELATIONSHIP_3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CITA')
            and   name  = 'RELATIONSHIP_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CITA.RELATIONSHIP_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CITA')
            and   type = 'U')
   drop table CITA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CLINICA')
            and   name  = 'RELATIONSHIP_16_FK'
            and   indid > 0
            and   indid < 255)
   drop index CLINICA.RELATIONSHIP_16_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLINICA')
            and   type = 'U')
   drop table CLINICA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CONSULTA')
            and   name  = 'RELATIONSHIP_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index CONSULTA.RELATIONSHIP_5_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CONSULTA')
            and   type = 'U')
   drop table CONSULTA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DIA')
            and   name  = 'RELATIONSHIP_18_FK'
            and   indid > 0
            and   indid < 255)
   drop index DIA.RELATIONSHIP_18_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DIA')
            and   type = 'U')
   drop table DIA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ESPECIALIDAD')
            and   type = 'U')
   drop table ESPECIALIDAD
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HORA')
            and   name  = 'RELATIONSHIP_17_FK'
            and   indid > 0
            and   indid < 255)
   drop index HORA.RELATIONSHIP_17_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HORA')
            and   type = 'U')
   drop table HORA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MEDICO')
            and   name  = 'RELATIONSHIP_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index MEDICO.RELATIONSHIP_10_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MEDICO')
            and   name  = 'RELATIONSHIP_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index MEDICO.RELATIONSHIP_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MEDICO')
            and   type = 'U')
   drop table MEDICO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PACIENTE')
            and   type = 'U')
   drop table PACIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PERFIL')
            and   name  = 'RELATIONSHIP_13_FK'
            and   indid > 0
            and   indid < 255)
   drop index PERFIL.RELATIONSHIP_13_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PERFIL')
            and   name  = 'RELATIONSHIP_11_FK'
            and   indid > 0
            and   indid < 255)
   drop index PERFIL.RELATIONSHIP_11_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PERFIL')
            and   name  = 'RELATIONSHIP_9_FK'
            and   indid > 0
            and   indid < 255)
   drop index PERFIL.RELATIONSHIP_9_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PERFIL')
            and   name  = 'RELATIONSHIP_8_FK'
            and   indid > 0
            and   indid < 255)
   drop index PERFIL.RELATIONSHIP_8_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PERFIL')
            and   type = 'U')
   drop table PERFIL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RECEPCIONISTA')
            and   name  = 'RELATIONSHIP_12_FK'
            and   indid > 0
            and   indid < 255)
   drop index RECEPCIONISTA.RELATIONSHIP_12_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RECEPCIONISTA')
            and   type = 'U')
   drop table RECEPCIONISTA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('USUARIO')
            and   name  = 'RELATIONSHIP_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index USUARIO.RELATIONSHIP_7_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('USUARIO')
            and   type = 'U')
   drop table USUARIO
go

/*==============================================================*/
/* Table: ADMINISTRADOR                                         */
/*==============================================================*/
CREATE TABLE [dbo].[ADMINISTRADOR]
(
[ID_ADMINISTRADOR] [int] NOT NULL IDENTITY(1, 1),
[ID_USUARIO] [int] NULL,
[NOMBRES_ADMINISTRADOR] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL,
[APELLIDOS_ADMINISTRADOR] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CEDULA_ADMINISTRADOR] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CORREO_ADMINISTRADOR] [varchar] (30) COLLATE Modern_Spanish_CI_AS NOT NULL,
[DIRECCION_ADMINISTRADOR] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADMINISTRADOR] ADD CONSTRAINT [PK_ADMINISTRADOR] PRIMARY KEY NONCLUSTERED  ([ID_ADMINISTRADOR]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RELATIONSHIP_8_FK] ON [dbo].[ADMINISTRADOR] ([ID_USUARIO]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADMINISTRADOR] ADD CONSTRAINT [FK_ADMINIST_RELATIONS_USUARIO] FOREIGN KEY ([ID_USUARIO]) REFERENCES [dbo].[USUARIO] ([ID_USUARIO])
GO

/*==============================================================*/
/* Table: CITA                                                  */
/*==============================================================*/
create table CITA (
   ID_CITA              int                  identity,
   ID_PACIENTE          int                  null,
   ID_RECEPCIONISTA     int                  null,
   ID_MEDICO            int                  null,
   FECHA_CITA           datetime             not null,
   HORA_CITA            datetime             not null,
   constraint PK_CITA primary key nonclustered (ID_CITA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_2_FK on CITA (
ID_MEDICO ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on CITA (
ID_PACIENTE ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_6_FK on CITA (
ID_RECEPCIONISTA ASC
)
go

/*==============================================================*/
/* Table: CLINICA                                               */
/*==============================================================*/
CREATE TABLE [dbo].[CLINICA]
(
[ID_CLINICA] [int] NOT NULL IDENTITY(1, 1),
[NOMBRE_CLINICA] [varchar] (20) COLLATE Modern_Spanish_CI_AS NOT NULL,
[TELEFONO_CLINICA] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CORREO_CLINICA] [varchar] (30) COLLATE Modern_Spanish_CI_AS NOT NULL,
[DIRECCION_CLINICA] [varchar] (50) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLINICA] ADD CONSTRAINT [PK_CLINICA] PRIMARY KEY NONCLUSTERED  ([ID_CLINICA]) ON [PRIMARY]
GO

/*==============================================================*/
/* Table: CONSULTA                                              */
/*==============================================================*/
create table CONSULTA (
   ID_CONSULTA          int                  identity,
   ID_CITA              int                  null,
   DESCRIPCION_CONSULTA varchar(50)          not null,
   DIAGNOSTICO          varchar(50)          not null,
   RECETA               varchar(50)          not null,
   TRATAMIENTO          bit                  not null,
   constraint PK_CONSULTA primary key nonclustered (ID_CONSULTA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_5_FK on CONSULTA (
ID_CITA ASC
)
go

/*==============================================================*/
/* Table: DIA                                                   */
/*==============================================================*/
CREATE TABLE [dbo].[DIA]
(
[ID_DIA] [int] NOT NULL IDENTITY(1, 1),
[ID_MEDICO] [int] NULL,
[NOMBRE_DIA] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DIA] ADD CONSTRAINT [PK_DIA] PRIMARY KEY NONCLUSTERED  ([ID_DIA]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RELATIONSHIP_13_FK] ON [dbo].[DIA] ([ID_MEDICO]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DIA] ADD CONSTRAINT [FK_DIA_RELATIONS_MEDICO] FOREIGN KEY ([ID_MEDICO]) REFERENCES [dbo].[MEDICO] ([ID_MEDICO])
GO

/*==============================================================*/
/* Table: ESPECIALIDAD                                          */
/*==============================================================*/
create table ESPECIALIDAD (
   ID_ESPECIALIDAD      int                  identity,
   NOMBRE_ESPECIALIDAD  varchar(20)          not null,
   DESCRIPCION_ESPECIALIDAD varchar(50)          not null,
   constraint PK_ESPECIALIDAD primary key nonclustered (ID_ESPECIALIDAD)
)
go

/*==============================================================*/
/* Table: HORA                                                  */
/*==============================================================*/
CREATE TABLE [dbo].[HORA]
(
[ID_HORA] [int] NOT NULL IDENTITY(1, 1),
[ID_DIA] [int] NULL,
[HORA_INICIAL] [datetime] NOT NULL,
[HORA_FINAL] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HORA] ADD CONSTRAINT [PK_HORA] PRIMARY KEY NONCLUSTERED  ([ID_HORA]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RELATIONSHIP_12_FK] ON [dbo].[HORA] ([ID_DIA]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HORA] ADD CONSTRAINT [FK_HORA_RELATIONS_DIA] FOREIGN KEY ([ID_DIA]) REFERENCES [dbo].[DIA] ([ID_DIA])
GO

/*==============================================================*/
/* Table: MEDICO                                                */
/*==============================================================*/
CREATE TABLE [dbo].[MEDICO]
(
[ID_MEDICO] [int] NOT NULL IDENTITY(1, 1),
[ID_USUARIO] [int] NULL,
[ID_ESPECIALIDAD] [int] NULL,
[NOMBRES_MEDICO] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL,
[APELLIDOS_MEDICO] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CEDULA_MEDICO] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[TELEFONO_MEDICO] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CORREO_MEDICO] [varchar] (30) COLLATE Modern_Spanish_CI_AS NOT NULL,
[DIRECCION_MEDICO] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MEDICO] ADD CONSTRAINT [PK_MEDICO] PRIMARY KEY NONCLUSTERED  ([ID_MEDICO]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RELATIONSHIP_1_FK] ON [dbo].[MEDICO] ([ID_ESPECIALIDAD]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RELATIONSHIP_10_FK] ON [dbo].[MEDICO] ([ID_USUARIO]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MEDICO] ADD CONSTRAINT [FK_MEDICO_RELATIONS_ESPECIAL] FOREIGN KEY ([ID_ESPECIALIDAD]) REFERENCES [dbo].[ESPECIALIDAD] ([ID_ESPECIALIDAD])
GO
ALTER TABLE [dbo].[MEDICO] ADD CONSTRAINT [FK_MEDICO_RELATIONS_USUARIO] FOREIGN KEY ([ID_USUARIO]) REFERENCES [dbo].[USUARIO] ([ID_USUARIO])
GO

/*==============================================================*/
/* Table: PACIENTE                                              */
/*==============================================================*/
create table PACIENTE (
   ID_PACIENTE          int                  identity,
   NOMBRES_PACIENTE     varchar(50)          not null,
   APELLIDOS_PACIENTE   varchar(50)          not null,
   CEDULA_PACIENTE      varchar(10)          not null,
   TELEFONO_PACIENTE    varchar(10)          not null,
   CORREO_PACIENTE      varchar(30)          not null,
   DIRECCION_PACIENTE   varchar(50)          not null,
   constraint PK_PACIENTE primary key nonclustered (ID_PACIENTE)
)
go

/*==============================================================*/
/* Table: PERFIL                                                */
/*==============================================================*/
CREATE TABLE [dbo].[PERFIL]
(
[ID_PERFIL] [int] NOT NULL IDENTITY(1, 1),
[ID_USUARIO] [int] NULL,
[FOTO] [image] NOT NULL,
[COLOR] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[LETRA] [varchar] (30) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PERFIL] ADD CONSTRAINT [PK_PERFIL] PRIMARY KEY NONCLUSTERED  ([ID_PERFIL]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RELATIONSHIP_11_FK] ON [dbo].[PERFIL] ([ID_USUARIO]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PERFIL] ADD CONSTRAINT [FK_PERFIL_RELATIONS_USUARIO] FOREIGN KEY ([ID_USUARIO]) REFERENCES [dbo].[USUARIO] ([ID_USUARIO])
GO

/*==============================================================*/
/* Table: RECEPCIONISTA                                         */
/*==============================================================*/
CREATE TABLE [dbo].[RECEPCIONISTA]
(
[ID_RECEPCIONISTA] [int] NOT NULL IDENTITY(1, 1),
[ID_USUARIO] [int] NULL,
[NOMBRES_RECEPCINISTA] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL,
[APELLIDOS_RECEPCIONISTA] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CEDULA_RECEPCIONISTA] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[TELEFONO_RECEPCIONISTA] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CORREO_RECEPCIONISTA] [varchar] (30) COLLATE Modern_Spanish_CI_AS NOT NULL,
[DIRECCION_RECEPCIONISTA] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RECEPCIONISTA] ADD CONSTRAINT [PK_RECEPCIONISTA] PRIMARY KEY NONCLUSTERED  ([ID_RECEPCIONISTA]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RELATIONSHIP_9_FK] ON [dbo].[RECEPCIONISTA] ([ID_USUARIO]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RECEPCIONISTA] ADD CONSTRAINT [FK_RECEPCIO_RELATIONS_USUARIO] FOREIGN KEY ([ID_USUARIO]) REFERENCES [dbo].[USUARIO] ([ID_USUARIO])
GO

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
CREATE TABLE [dbo].[USUARIO]
(
[ID_USUARIO] [int] NOT NULL IDENTITY(1, 1),
[NOMBRE_USUARIO] [varchar] (20) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CONTRASENA_USUARIO] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[ROL_USUARIO] [varchar] (15) COLLATE Modern_Spanish_CI_AS NOT NULL,
[ESTADO_USUARIO] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[USUARIO] ADD CONSTRAINT [PK_USUARIO] PRIMARY KEY NONCLUSTERED  ([ID_USUARIO]) ON [PRIMARY]
GO

alter table CITA
   add constraint FK_CITA_RELATIONS_MEDICO foreign key (ID_MEDICO)
      references MEDICO (ID_MEDICO)
go

alter table CITA
   add constraint FK_CITA_RELATIONS_PACIENTE foreign key (ID_PACIENTE)
      references PACIENTE (ID_PACIENTE)
go

alter table CITA
   add constraint FK_CITA_RELATIONS_RECEPCIO foreign key (ID_RECEPCIONISTA)
      references RECEPCIONISTA (ID_RECEPCIONISTA)
go

alter table CONSULTA
   add constraint FK_CONSULTA_RELATIONS_CITA foreign key (ID_CITA)
      references CITA (ID_CITA)
go
