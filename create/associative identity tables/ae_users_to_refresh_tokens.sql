-- Table: public.ae_users_to_refresh_tokens

-- DROP TABLE IF EXISTS public.ae_users_to_refresh_tokens;

CREATE TABLE IF NOT EXISTS public.ae_users_to_refresh_tokens
(
    user_id uuid NOT NULL,
    refresh_token_id uuid NOT NULL,
    CONSTRAINT ae_user_to_refresh_token_composite_key PRIMARY KEY (refresh_token_id, user_id),
    CONSTRAINT "refresh_token_id_to_refresh_token.id" FOREIGN KEY (refresh_token_id)
        REFERENCES public.refresh_tokens (refresh_token_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "user_id_to_user.id" FOREIGN KEY (user_id)
        REFERENCES public.users (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.ae_users_to_refresh_tokens
    OWNER to postgres;