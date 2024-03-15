-- Table: public.ae_user_to_auth

-- DROP TABLE IF EXISTS public.ae_user_to_auth;

CREATE TABLE IF NOT EXISTS public.ae_user_to_auth
(
    user_id uuid NOT NULL,
    auth_id uuid NOT NULL,
    CONSTRAINT ae_user_to_auth_composite_key PRIMARY KEY (user_id, auth_id),
    CONSTRAINT "ae_auth_id_to_auth.id" FOREIGN KEY (auth_id)
        REFERENCES public.auth (auth_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "ae_user_id_to_user.id" FOREIGN KEY (user_id)
        REFERENCES public."user" (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.ae_user_to_auth
    OWNER to postgres;