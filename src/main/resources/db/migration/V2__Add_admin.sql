INSERT INTO usr (id, password, username, active)
 VALUES (1, 'p', 'admin', true );


INSERT INTO user_role (user_id, roles)
VALUES
(1, 'USER'),
(1, 'ADMIN');