-- Table: public.user

-- DROP TABLE IF EXISTS public."user";

CREATE TABLE IF NOT EXISTS public."user"
(
    user_id uuid NOT NULL DEFAULT uuid_generate_v4(),
    username character varying(20) COLLATE pg_catalog."default" NOT NULL,
    email text COLLATE pg_catalog."default" NOT NULL,
    create_date timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    password character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT user_primary_key PRIMARY KEY (user_id),
    CONSTRAINT unique_email UNIQUE (email),
    CONSTRAINT unique_username UNIQUE (username)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."user"
    OWNER to postgres;