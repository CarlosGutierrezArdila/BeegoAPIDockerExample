-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.2-alpha1
-- PostgreSQL version: 11.0
-- Project Site: pgmodeler.io
-- Model Author: ---


-- Database creation must be done outside a multicommand file.
-- These commands were put in this file only as a convenience.
-- -- object: db_prueba_docker | type: DATABASE --
-- -- DROP DATABASE IF EXISTS db_prueba_docker;
-- CREATE DATABASE db_prueba_docker;
-- -- ddl-end --
-- 

-- object: public.test1 | type: TABLE --
-- DROP TABLE IF EXISTS public.test1 CASCADE;
CREATE TABLE public.test1 (
	id integer NOT NULL,
	txt varchar(31),
	test2_id integer,
	CONSTRAINT test1_pk PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.test1 OWNER TO postgres;
-- ddl-end --

-- object: public.test2 | type: TABLE --
-- DROP TABLE IF EXISTS public.test2 CASCADE;
CREATE TABLE public.test2 (
	id integer NOT NULL,
	CONSTRAINT test2_pk PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.test2 OWNER TO postgres;
-- ddl-end --

-- object: test1_test2_fk | type: CONSTRAINT --
-- ALTER TABLE public.test1 DROP CONSTRAINT IF EXISTS test1_test2_fk CASCADE;
ALTER TABLE public.test1 ADD CONSTRAINT test1_test2_fk FOREIGN KEY (test2_id)
REFERENCES public.test2 (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


