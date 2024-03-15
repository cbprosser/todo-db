-- View: public.all_user_lists_and_items

-- DROP VIEW public.all_user_lists_and_items;

CREATE OR REPLACE VIEW public.all_user_lists_and_items
 AS
 SELECT u.user_id,
    u.username,
    u.email,
    u.create_date AS user_create_date,
    l.list_id,
    l.title,
    l.description AS list_description,
    l.create_date AS list_create_date,
    i.list_item_id,
    i.description AS item_description,
    i.create_date AS item_create_date
   FROM "user" u
     JOIN ae_user_to_list a1 ON u.user_id = a1.user_id
     JOIN list l ON a1.list_id = l.list_id
     JOIN ae_list_to_list_item a2 ON l.list_id = a2.list_id
     JOIN list_item i ON a2.list_item_id = i.list_item_id;

ALTER TABLE public.all_user_lists_and_items
    OWNER TO postgres;

