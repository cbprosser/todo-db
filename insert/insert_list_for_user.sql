BEGIN;
WITH row AS (
	INSERT INTO public.list(title)
	VALUES (left(md5(random()::text),10))
	RETURNING list_id)
INSERT INTO public.ae_user_to_list(user_id, list_id)
	VALUES ((
		SELECT user_id FROM public."user"
		ORDER BY random()
		LIMIT 1
	), (
		SELECT list_id FROM row
		));
COMMIT;