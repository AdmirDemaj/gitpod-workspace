CREATE TABLE IF NOT EXISTS public."User" (
    "User_id" text NOT NULL,
    "User_name" text NOT NULL
);

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("User_id");