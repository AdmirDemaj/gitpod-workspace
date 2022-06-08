CREATE TABLE "public"."User" (
  "User_id" TEXT NOT NULL,
  "User_name" TEXT NOT NULL,
 
  CONSTRAINT "User_pkey" PRIMARY KEY ("User_id")
);


CREATE TABLE "public"."message" (
  "message_id" TEXT NOT NULL,
  "message_text" TEXT NOT NULL,
"User_Id" TEXT NOT NULL,
"ChatRoom_Id" TEXT NOT NULL,
  
  "message_created_at" TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  
  CONSTRAINT "message_pkey" PRIMARY KEY ("message_id")
);


CREATE TABLE "public"."Chatroom" (
  "ChatRoom_id" TEXT NOT NULL,
"User_Id" TEXT NOT NULL,
"ChatRoom_name" TEXT NOT NULL,
"created_at" TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  
  CONSTRAINT "message_pkey" PRIMARY KEY ("message_id")
);


ALTER TABLE ONLY "public"."ChatRoom"
ADD CONSTRAINT "ChatRoom_User_id_fkey"
FOREIGN KEY (User_id) REFERENCES User(User_id)
ON UPDATE CASCADE
ON DELETE CASCADE
NOT DEFERRABLE;
