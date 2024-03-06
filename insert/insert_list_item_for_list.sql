BEGIN;
WITH row AS (
	INSERT INTO public.list_item(description)
	VALUES (left(md5(random()::text),10))
	RETURNING list_item_id)
INSERT INTO public.ae_list_to_list_item(list_id, list_item_id)
	VALUES ((
		SELECT list_id FROM public.list
		ORDER BY random()
		LIMIT 1
	), (
		SELECT list_item_id FROM row
		));
COMMIT;