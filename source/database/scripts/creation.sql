CREATE TABLE comentarios
(
  codigo         int  NOT NULL,
  contenido      text,
  codigo_usuario int  NOT NULL,
  codigo_noticia int  NOT NULL,
  CONSTRAINT PK_comentarios PRIMARY KEY (codigo)
)
GO

CREATE TABLE competiciones
(
  codigo       int         NOT NULL,
  nombre       varchar(50),
  fecha_inicio date       ,
  fecha_fin    date       ,
  CONSTRAINT PK_competiciones PRIMARY KEY (codigo)
)
GO

CREATE TABLE equipos
(
  codigo int         NOT NULL,
  pais   varchar(20),
  nombre varchar(20),
  CONSTRAINT PK_equipos PRIMARY KEY (codigo)
)
GO

CREATE TABLE equipos_competiciones
(
  codigo_equipo      int NOT NULL,
  codigo_competicion int NOT NULL,
  CONSTRAINT PK_equipos_competiciones PRIMARY KEY (codigo_equipo, codigo_competicion)
)
GO

CREATE TABLE estadisticas
(
  codigo         int NOT NULL,
  ritmo          int,
  tiro           int,
  pase           int,
  regate         int,
  defensa        int,
  fisico         int,
  promedio       int,
  codigo_jugador int NOT NULL,
  CONSTRAINT PK_estadisticas PRIMARY KEY (codigo)
)
GO

CREATE TABLE fases
(
  codigo             int         NOT NULL,
  nombre             varchar(50),
  codigo_competicion int         NOT NULL,
  CONSTRAINT PK_fases PRIMARY KEY (codigo)
)
GO

CREATE TABLE jugadores
(
  codigo   int         NOT NULL,
  nombre   varchar(50),
  apellido varchar(50),
  edad     int        ,
  pais     varchar(50),
  altura   float      ,
  peso     float      ,
  CONSTRAINT PK_jugadores PRIMARY KEY (codigo)
)
GO

CREATE TABLE jugadores_equipos_historial
(
  codigo_jugador int  NOT NULL,
  codigo_equipo  int  NOT NULL,
  fecha_inicio   date NOT NULL,
  fecha_fin      date,
  CONSTRAINT PK_jugadores_equipos_historial PRIMARY KEY (codigo_jugador, codigo_equipo, fecha_inicio)
)
GO

CREATE TABLE noticias
(
  codigo    int   NOT NULL,
  imagen    image,
  contenido text ,
  CONSTRAINT PK_noticias PRIMARY KEY (codigo)
)
GO

CREATE TABLE partidos
(
  codigo           int         NOT NULL,
  codigo_fase      int         NOT NULL,
  fecha            date       ,
  goles_local      int        ,
  goles_visita     int        ,
  equipo_ganador   varchar(20),
  codigo_visitante int         NOT NULL,
  codigo_local     int         NOT NULL,
  CONSTRAINT PK_partidos PRIMARY KEY (codigo)
)
GO

CREATE TABLE usuarios
(
  codigo      int         NOT NULL,
  nombre      varchar(50),
  apellido    varchar(50),
  correo      varchar(50),
  contrasenia varchar(50),
  edad        int        ,
  CONSTRAINT PK_usuarios PRIMARY KEY (codigo)
)
GO

CREATE TABLE usuarios_equipos_favoritos
(
  codigo_usuario int NOT NULL,
  codigo_equipo  int NOT NULL,
  CONSTRAINT PK_usuarios_equipos_favoritos PRIMARY KEY (codigo_usuario, codigo_equipo)
)
GO

CREATE TABLE usuarios_jugadores_favoritos
(
  codigo_usuario int NOT NULL,
  codigo_jugador int NOT NULL,
  CONSTRAINT PK_usuarios_jugadores_favoritos PRIMARY KEY (codigo_usuario, codigo_jugador)
)
GO
