CREATE TABLE IF NOT EXISTS public."ChatRoom" (
    id text NOT NULL,
    "User_id" text NOT NULL,
    "ChatRoom_name" text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);

ALTER TABLE ONLY public."ChatRoom"
    ADD CONSTRAINT "ChatRoom_pkey" PRIMARY KEY (id);

ALTER TABLE ONLY public."ChatRoom"
    ADD CONSTRAINT "ChatRoom_User_id_fkey" FOREIGN KEY ("User_id") REFERENCES public."User"("User_id");