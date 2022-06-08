INSERT INTO "User" ("User_id", "User_name")
VALUES ('33', 'Adi');


INSERT INTO "public"."User" ("User_id", "User_name")
VALUES
  ('34', 'User2')
, ('35', 'User3')
, ('36', 'User4')
;


INSERT INTO "public"."User" ("User_id", "User_name")
VALUES
  ('37', 'User3')
, ('38', 'User4')
, ('39', 'User5')
, ('40', 'User6')
;


INSERT INTO "public"."ChatRoom" ("id", "User_id", "ChatRoom_name")
VALUES
  ('22', '40', 'Room1')
, ('23', '39','Room2')
, ('24', '38','Room3')
, ('25', '37','Room4')
;


INSERT INTO "message" ("message_id", "message_text", "User_Id", "ChatRoom_Id", "message_created_at")
VALUES ('33', 'Hello There', '37', '22', now());


INSERT INTO "message" ("message_id", "message_text", "User_Id", "ChatRoom_Id", "message_created_at")
VALUES ('34', 'Hello There 2', '36', '23', now());



