-- Table: public.list

-- DROP TABLE IF EXISTS public.list;

CREATE TABLE IF NOT EXISTS public.list
(
    list_id uuid NOT NULL DEFAULT uuid_generate_v4(),
    title text COLLATE pg_catalog."default" NOT NULL,
    description text COLLATE pg_catalog."default",
    CONSTRAINT list_primary_key PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.list
    OWNER to postgres;