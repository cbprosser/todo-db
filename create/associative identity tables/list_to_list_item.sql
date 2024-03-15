-- Table: public.ae_list_to_list_item

-- DROP TABLE IF EXISTS public.ae_list_to_list_item;

CREATE TABLE IF NOT EXISTS public.ae_list_to_list_item
(
    list_id uuid NOT NULL,
    list_item_id uuid NOT NULL,
    CONSTRAINT ae_list_to_list_item_composite_key PRIMARY KEY (list_id, list_item_id),
    CONSTRAINT "ae_list_id_to_list.id" FOREIGN KEY (list_id)
        REFERENCES public.list (list_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "ae_list_item_id_to_list_item.id" FOREIGN KEY (list_item_id)
        REFERENCES public.list_item (list_item_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.ae_list_to_list_item
    OWNER to postgres;