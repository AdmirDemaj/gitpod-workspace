INSERT INTO "public"."User" ("User_id", "User_name")

-- Describe the dataset:
SELECT
  CONCAT('t', "u") AS "User_id",
  CONCAT('Name', "u") AS "User_name"

-- Set the size of the dataset:
FROM generate_series(1, 1000) AS "u"

-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT "User_pkey"
DO UPDATE SET 
"User_name" = EXCLUDED."User_name";

INSERT INTO "public"."ChatRoom" ("id","User_id","ChatRoom_name","created_at")

-- Describe the dataset:
SELECT
  CONCAT('r', "r") AS "id",
  CONCAT('t', floor(random() * (1000 - 1 + 1) + 1)) AS "User_id",
  CONCAT('n',"r")AS "ChatRoom_name",
  CURRENT_TIMESTAMP AS "created_at"

-- Set the size of the dataset:
FROM generate_series(1, 1000) AS "r"

-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT "ChatRoom_pkey"
DO UPDATE SET 
"User_id" = EXCLUDED."User_id";


INSERT INTO "public"."message" ("message_id", "message_text", "User_Id","ChatRoom_Id" ,"message_created_at")

-- Describe the dataset:
SELECT
  CONCAT('m', "r") AS "message_id",
  CONCAT('Message', "r") AS "message_text",
   CONCAT('t', floor(random() * (1000 - 1 + 1) + 1)) AS "User_Id",
  CONCAT('r', floor(random() * (1000 - 1 + 1) + 1)) AS "ChatRoom_Id",
  CURRENT_TIMESTAMP AS "message_created_at"

-- Set the size of the dataset:
FROM generate_series(1, 1000) AS "r"

-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT message_pkey
DO UPDATE SET 
"ChatRoom_Id" = EXCLUDED."ChatRoom_Id",
"User_Id" = EXCLUDED."User_Id",
"message_text" = EXCLUDED."message_text"


