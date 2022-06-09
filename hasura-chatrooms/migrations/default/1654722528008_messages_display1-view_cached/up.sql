CREATE  MATERIALIZED VIEW IF NOT EXISTS  "public"."messages_display1_view_cached" AS
SELECT

  "c"."id",
  "c"."ChatRoom_name",
   count("m"."message_id") AS "total_messages",
   "m"."message_created_at" AS "last_message_created_at",
   "m"."User_Id" AS "last_message_made_by",
    "m"."message_text" AS "last_message_content"

FROM "ChatRoom" AS "c"
LEFT JOIN "message" AS "m" ON "m"."ChatRoom_Id" = "c"."id"
GROUP BY "c"."id", "m"."message_created_at", "m"."User_Id",
 "m"."message_text", "m"."message_id"
ORDER BY "m"."message_created_at" DESC LIMIT 1;