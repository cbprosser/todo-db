-- Table: public.list_item

-- DROP TABLE IF EXISTS public.list_item;

CREATE TABLE IF NOT EXISTS public.list_item
(
    list_item_id uuid NOT NULL DEFAULT uuid_generate_v4(),
    description text COLLATE pg_catalog."default" NOT NULL,
    create_date timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT list_item_primary_key PRIMARY KEY (list_item_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.list_item
    OWNER to postgres;