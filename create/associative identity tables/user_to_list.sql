-- Table: public.ae_user_to_list

-- DROP TABLE IF EXISTS public.ae_user_to_list;

CREATE TABLE IF NOT EXISTS public.ae_user_to_list
(
    user_id uuid NOT NULL,
    list_id uuid NOT NULL,
    CONSTRAINT ae_user_to_list_composite_key PRIMARY KEY (user_id, list_id),
    CONSTRAINT "list_id_to_list.id" FOREIGN KEY (list_id)
        REFERENCES public.list (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        NOT VALID,
    CONSTRAINT "user_id_to_user.id" FOREIGN KEY (user_id)
        REFERENCES public."user" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.ae_user_to_list
    OWNER to postgres;