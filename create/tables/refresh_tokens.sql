-- Table: public.refresh_tokens

-- DROP TABLE IF EXISTS public.refresh_tokens;

CREATE TABLE IF NOT EXISTS public.refresh_tokens
(
    refresh_token_id uuid NOT NULL DEFAULT uuid_generate_v4(),
    token character varying COLLATE pg_catalog."default" NOT NULL,
    expire_date timestamp without time zone NOT NULL DEFAULT (CURRENT_DATE + '30 days'::interval),
    device text COLLATE pg_catalog."default" NOT NULL,
    address text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "refreshTokens_pkey" PRIMARY KEY (refresh_token_id),
    CONSTRAINT device_address_unique UNIQUE (device, address)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.refresh_tokens
    OWNER to postgres;