CREATE extension if NOT EXISTS pgcrypto;

UPDATE usr SET password = crypt(password, gen_salt('bf', 8));