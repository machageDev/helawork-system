BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "payment" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "mpesa_transaction" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "employerId" bigint NOT NULL,
    "amount" double precision NOT NULL,
    "phoneNumber" text NOT NULL,
    "transactionId" text,
    "status" text NOT NULL,
    "requestPayload" text,
    "responsePayload" text,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "payment_rate" (
    "id" bigserial PRIMARY KEY,
    "workerId" bigint NOT NULL,
    "employerId" bigint NOT NULL,
    "ratePerHour" double precision NOT NULL,
    "effectiveFrom" timestamp without time zone NOT NULL,
    "effectiveTo" timestamp without time zone,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "reset_token" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "token" text NOT NULL,
    "expiresAt" timestamp without time zone NOT NULL
);

--
-- ACTION DROP TABLE
--
DROP TABLE "task" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "task" (
    "id" bigserial PRIMARY KEY,
    "employerId" bigint NOT NULL,
    "workerId" bigint,
    "title" text NOT NULL,
    "description" text,
    "status" text NOT NULL,
    "deadline" timestamp without time zone NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- ACTION DROP TABLE
--
DROP TABLE "time_log" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "time_log" (
    "id" bigserial PRIMARY KEY,
    "workerId" bigint NOT NULL,
    "taskId" bigint NOT NULL,
    "startedAt" timestamp without time zone NOT NULL,
    "endedAt" timestamp without time zone,
    "durationMinutes" bigint,
    "createdAt" timestamp without time zone
);

--
-- ACTION DROP TABLE
--
DROP TABLE "user" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user" (
    "id" bigserial PRIMARY KEY,
    "fullName" text NOT NULL,
    "email" text NOT NULL,
    "passwordHash" text NOT NULL,
    "role" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "mpesa_transaction"
    ADD CONSTRAINT "mpesa_transaction_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "mpesa_transaction"
    ADD CONSTRAINT "mpesa_transaction_fk_1"
    FOREIGN KEY("employerId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "payment_rate"
    ADD CONSTRAINT "payment_rate_fk_0"
    FOREIGN KEY("workerId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "payment_rate"
    ADD CONSTRAINT "payment_rate_fk_1"
    FOREIGN KEY("employerId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "reset_token"
    ADD CONSTRAINT "reset_token_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "task"
    ADD CONSTRAINT "task_fk_0"
    FOREIGN KEY("employerId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "task"
    ADD CONSTRAINT "task_fk_1"
    FOREIGN KEY("workerId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "time_log"
    ADD CONSTRAINT "time_log_fk_0"
    FOREIGN KEY("workerId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "time_log"
    ADD CONSTRAINT "time_log_fk_1"
    FOREIGN KEY("taskId")
    REFERENCES "task"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR helawork
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('helawork', '20250824204031527', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250824204031527', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
