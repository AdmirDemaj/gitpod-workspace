SET check_function_bodies = false;
CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
CREATE TABLE public."ChatRoom" (
    id text NOT NULL,
    "User_id" text NOT NULL,
    "ChatRoom_name" text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);
CREATE TABLE IF NOT EXISTS  public."User" (
    "User_id" text NOT NULL,
    "User_name" text NOT NULL
);
CREATE TABLE IF NOT EXISTS  public.message (
    message_id text NOT NULL,
    message_text text NOT NULL,
    "User_Id" text NOT NULL,
    "ChatRoom_Id" text NOT NULL,
    message_created_at timestamp with time zone DEFAULT now() NOT NULL
);

ALTER TABLE ONLY public."ChatRoom"
    ADD CONSTRAINT "ChatRoom_pkey" PRIMARY KEY (id);
ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("User_id");
ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_pkey PRIMARY KEY (message_id);

ALTER TABLE ONLY public."ChatRoom"
    ADD CONSTRAINT "ChatRoom_User_id_fkey" FOREIGN KEY ("User_id") REFERENCES public."User"("User_id");
ALTER TABLE ONLY public.message
    ADD CONSTRAINT "message_ChatRoom_Id_fkey" FOREIGN KEY ("ChatRoom_Id") REFERENCES public."ChatRoom"(id);
ALTER TABLE ONLY public.message
    ADD CONSTRAINT "message_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES public."User"("User_id");
