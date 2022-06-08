
CREATE TABLE public."message" (
    message_id text NOT NULL,
    message_text text NOT NULL,
    "User_Id" text NOT NULL,
    "ChatRoom_Id" text NOT NULL,
    message_created_at timestamp with time zone DEFAULT now() NOT NULL
);

ALTER TABLE ONLY public.message
    ADD CONSTRAINT "message_pkey" PRIMARY KEY ("message_id");

ALTER TABLE ONLY public.message
    ADD CONSTRAINT "message_ChatRoom_Id_fkey" FOREIGN KEY ("ChatRoom_Id") REFERENCES public."ChatRoom"("id");

ALTER TABLE ONLY public.message
    ADD CONSTRAINT "message_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES public."User"("User_id");
