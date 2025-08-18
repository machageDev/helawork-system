BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "payment" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint,
    "totalHours" double precision NOT NULL,
    "ratePerHour" double precision NOT NULL,
    "totalAmount" double precision NOT NULL,
    "paymentMethod" text NOT NULL,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "task" (
    "id" bigserial PRIMARY KEY,
    "title" text NOT NULL,
    "description" text NOT NULL,
    "deadline" timestamp without time zone NOT NULL,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "time_log" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint,
    "taskId" bigint,
    "startTime" timestamp without time zone NOT NULL,
    "endTime" timestamp without time zone,
    "approved" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user" (
    "id" bigserial PRIMARY KEY,
    "fullName" text NOT NULL,
    "email" text NOT NULL,
    "passwordHash" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "user_email_unique" ON "user" USING btree ("email");


--
-- MIGRATION VERSION FOR helawork
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('helawork', '20250815133155367', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250815133155367', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
