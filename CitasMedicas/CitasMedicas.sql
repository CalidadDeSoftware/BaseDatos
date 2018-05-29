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
create table ADMINISTRADOR (
   ID_ADMINISTRADOR     int                  identity,
   ID_CLINICA           int                  null,
   ID_PERFIL            int                  null,
   NOMBRES_ADMINISTRADOR varchar(50)          not null,
   APELLIDOS_ADMINISTRADOR varchar(50)          not null,
   CEDULA_ADMINISTRADOR varchar(10)          not null,
   CORREO_ADMINISTRADOR varchar(30)          not null,
   DIRECCION_ADMINISTRADOR varchar(50)          not null,
   constraint PK_ADMINISTRADOR primary key nonclustered (ID_ADMINISTRADOR)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_14_FK on ADMINISTRADOR (
ID_PERFIL ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_15_FK on ADMINISTRADOR (
ID_CLINICA ASC
)
go

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
create table CLINICA (
   ID_CLINICA           int                  identity,
   ID_ADMINISTRADOR     int                  null,
   NOMBRE_CLINICA       varchar(20)          not null,
   TELEFONO_CLINICA     varchar(10)          not null,
   CORREO_CLINICA       varchar(30)          not null,
   DIRECCION_CLINICA    varchar(50)          null,
   constraint PK_CLINICA primary key nonclustered (ID_CLINICA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_16_FK on CLINICA (
ID_ADMINISTRADOR ASC
)
go

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
create table DIA (
   ID_DIA               int                  identity,
   ID_MEDICO            int                  null,
   NOMBRE_DIA           varchar(10)          not null,
   constraint PK_DIA primary key nonclustered (ID_DIA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_18_FK on DIA (
ID_MEDICO ASC
)
go

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
create table HORA (
   ID_HORA              int                  identity,
   ID_DIA               int                  null,
   HORA_INICIAL         datetime             not null,
   HORA_FINAL           datetime             not null,
   constraint PK_HORA primary key nonclustered (ID_HORA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_17_FK on HORA (
ID_DIA ASC
)
go

/*==============================================================*/
/* Table: MEDICO                                                */
/*==============================================================*/
create table MEDICO (
   ID_MEDICO            int                  identity,
   ID_PERFIL            int                  null,
   ID_ESPECIALIDAD      int                  null,
   NOMBRES_MEDICO       varchar(50)          not null,
   APELLIDOS_MEDICO     varchar(50)          not null,
   CEDULA_MEDICO        varchar(10)          not null,
   TELEFONO_MEDICO      varchar(10)          not null,
   CORREO_MEDICO        varchar(30)          not null,
   DIRECCION_MEDICO     varchar(50)          not null,
   constraint PK_MEDICO primary key nonclustered (ID_MEDICO)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on MEDICO (
ID_ESPECIALIDAD ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_10_FK on MEDICO (
ID_PERFIL ASC
)
go

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
create table PERFIL (
   ID_PERFIL            int                  identity,
   ID_RECEPCIONISTA     int                  null,
   ID_MEDICO            int                  null,
   ID_USUARIO           int                  null,
   ID_ADMINISTRADOR     int                  null,
   FOTO                 image                not null,
   COLOR                varchar(10)          not null,
   LETRA                varchar(30)          not null,
   constraint PK_PERFIL primary key nonclustered (ID_PERFIL)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_8_FK on PERFIL (
ID_USUARIO ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_9_FK on PERFIL (
ID_MEDICO ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_11_FK on PERFIL (
ID_RECEPCIONISTA ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_13_FK on PERFIL (
ID_ADMINISTRADOR ASC
)
go

/*==============================================================*/
/* Table: RECEPCIONISTA                                         */
/*==============================================================*/
create table RECEPCIONISTA (
   ID_RECEPCIONISTA     int                  identity,
   ID_PERFIL            int                  null,
   NOMBRES_RECEPCINISTA varchar(50)          not null,
   APELLIDOS_RECEPCIONISTA varchar(50)          not null,
   CEDULA_RECEPCIONISTA varchar(10)          not null,
   TELEFONO_RECEPCIONISTA varchar(10)          not null,
   CORREO_RECEPCIONISTA varchar(30)          not null,
   DIRECCION_RECEPCIONISTA varchar(50)          not null,
   constraint PK_RECEPCIONISTA primary key nonclustered (ID_RECEPCIONISTA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_12_FK on RECEPCIONISTA (
ID_PERFIL ASC
)
go

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   ID_USUARIO           int                  identity,
   ID_PERFIL            int                  null,
   NOMBRE_USUARIO       varchar(20)          not null,
   CONTRASENA_USUARIO   varchar(10)          not null,
   ROL_USUARIO          varchar(15)          not null,
   ESTADO_USUARIO       bit                  not null,
   constraint PK_USUARIO primary key nonclustered (ID_USUARIO)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_7_FK on USUARIO (
ID_PERFIL ASC
)
go

alter table ADMINISTRADOR
   add constraint FK_ADMINIST_RELATIONS_PERFIL foreign key (ID_PERFIL)
      references PERFIL (ID_PERFIL)
go

alter table ADMINISTRADOR
   add constraint FK_ADMINIST_RELATIONS_CLINICA foreign key (ID_CLINICA)
      references CLINICA (ID_CLINICA)
go

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

alter table CLINICA
   add constraint FK_CLINICA_RELATIONS_ADMINIST foreign key (ID_ADMINISTRADOR)
      references ADMINISTRADOR (ID_ADMINISTRADOR)
go

alter table CONSULTA
   add constraint FK_CONSULTA_RELATIONS_CITA foreign key (ID_CITA)
      references CITA (ID_CITA)
go

alter table DIA
   add constraint FK_DIA_RELATIONS_MEDICO foreign key (ID_MEDICO)
      references MEDICO (ID_MEDICO)
go

alter table HORA
   add constraint FK_HORA_RELATIONS_DIA foreign key (ID_DIA)
      references DIA (ID_DIA)
go

alter table MEDICO
   add constraint FK_MEDICO_RELATIONS_ESPECIAL foreign key (ID_ESPECIALIDAD)
      references ESPECIALIDAD (ID_ESPECIALIDAD)
go

alter table MEDICO
   add constraint FK_MEDICO_RELATIONS_PERFIL foreign key (ID_PERFIL)
      references PERFIL (ID_PERFIL)
go

alter table PERFIL
   add constraint FK_PERFIL_RELATIONS_RECEPCIO foreign key (ID_RECEPCIONISTA)
      references RECEPCIONISTA (ID_RECEPCIONISTA)
go

alter table PERFIL
   add constraint FK_PERFIL_RELATIONS_ADMINIST foreign key (ID_ADMINISTRADOR)
      references ADMINISTRADOR (ID_ADMINISTRADOR)
go

alter table PERFIL
   add constraint FK_PERFIL_RELATIONS_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO)
go

alter table PERFIL
   add constraint FK_PERFIL_RELATIONS_MEDICO foreign key (ID_MEDICO)
      references MEDICO (ID_MEDICO)
go

alter table RECEPCIONISTA
   add constraint FK_RECEPCIO_RELATIONS_PERFIL foreign key (ID_PERFIL)
      references PERFIL (ID_PERFIL)
go

alter table USUARIO
   add constraint FK_USUARIO_RELATIONS_PERFIL foreign key (ID_PERFIL)
      references PERFIL (ID_PERFIL)
go

