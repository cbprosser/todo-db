-- Table: public.auth

-- DROP TABLE IF EXISTS public.auth;

CREATE TABLE IF NOT EXISTS public.auth
(
    auth_id uuid NOT NULL DEFAULT uuid_generate_v4(),
    password text COLLATE pg_catalog."default" NOT NULL,
    current boolean NOT NULL DEFAULT true,
    create_date timestamp without time zone DEFAULT CURRENT_DATE,
    CONSTRAINT auth_pkey PRIMARY KEY (auth_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.auth
    OWNER to postgres;