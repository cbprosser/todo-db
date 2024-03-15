INSERT INTO "user" (username, email, password)
VALUES (left(md5(random()::text),10), concat(left(md5(random()::text),10),'@email.com'), crypt('somePassword', gen_salt('md5')))