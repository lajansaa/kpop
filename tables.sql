-- +-------------
--  id         | integer                     |           | not null | nextval('listings_id_seq'::regclass) | plain    |              |
--  seller_id  | integer                     |           |          |                                      | plain    |              |
--  album_id   | character varying           |           |          |                                      | extended |              |
--  price      | double precision            |           |          |                                      | plain    |              |
--  created_at | timestamp without time zone |           | not null |                                      | plain    |              |
--  updated_at | timestamp without time zone |           | not null |                                      | plain    |              |
-- Indexes:
--     "listings_pkey" PRIMARY KEY, btree (id)
--
INSERT INTO listings (seller_id, album_id, price) VALUES (1, 1, 50);
INSERT INTO listings (seller_id, album_id, price) VALUES (1, 2, 500);
INSERT INTO listings (seller_id, album_id, price) VALUES (2, 3, 100);
