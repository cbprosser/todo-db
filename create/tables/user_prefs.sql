-- Table: public.user_prefs

-- DROP TABLE IF EXISTS public.user_prefs;

CREATE TABLE IF NOT EXISTS public.user_prefs
(
    user_id uuid NOT NULL,
    prefs json NOT NULL DEFAULT '{}'::json,
    CONSTRAINT user_prefs_pkey PRIMARY KEY (user_id),
    CONSTRAINT primary_foreign_key FOREIGN KEY (user_id)
        REFERENCES public.users (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.user_prefs
    OWNER to postgres;