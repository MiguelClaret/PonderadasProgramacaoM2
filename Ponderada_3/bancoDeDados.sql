-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'user'
-- 
-- ---

DROP TABLE IF EXISTS "user";
		
CREATE TABLE "user" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR,
  "birthday" DATE,
  "country" VARCHAR,
  "pronouns" VARCHAR,
  "email" VARCHAR,
  "password" VARCHAR,
  "university" VARCHAR
);

-- ---
-- Table 'tutor'
-- 
-- ---

DROP TABLE IF EXISTS "tutor";
		
CREATE TABLE "tutor" (
  "id" SERIAL PRIMARY KEY,
  "user_id" INTEGER REFERENCES "user" ("id")
);

-- ---
-- Table 'student'
-- 
-- ---

DROP TABLE IF EXISTS "student";
		
CREATE TABLE "student" (
  "id" SERIAL PRIMARY KEY,
  "user_id" INTEGER REFERENCES "user" ("id"),
  "happiness_meter" INT,
  "profile_type" VARCHAR,
  "profile_photo_svg" TEXT
);

-- ---
-- Table 'Team'
-- 
-- ---

DROP TABLE IF EXISTS "Team";
		
CREATE TABLE "Team" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR,
  "tutor_id" INTEGER REFERENCES "tutor" ("id"),
  "student_id" INTEGER REFERENCES "student" ("id")
);

-- ---
-- Table 'questionAnswer'
-- 
-- ---

DROP TABLE IF EXISTS "questionAnswer";
		
CREATE TABLE "questionAnswer" (
  "id" SERIAL PRIMARY KEY,
  "student_id" INTEGER REFERENCES "user" ("id"),
  "question_id" INTEGER REFERENCES "question" ("id"),
  "question_answer" TEXT,
  "date" DATE
);

-- ---
-- Table 'question'
-- 
-- ---

DROP TABLE IF EXISTS "question";
		
CREATE TABLE "question" (
  "id" SERIAL PRIMARY KEY,
  "question_text" VARCHAR,
  "alternatives" VARCHAR,
  "question_type" VARCHAR
);

-- ---
-- Table 'message'
-- 
-- ---

DROP TABLE IF EXISTS "message";
		
CREATE TABLE "message" (
  "id" SERIAL PRIMARY KEY,
  "content" TEXT,
  "user_id" INTEGER REFERENCES "user" ("id"),
  "date" DATE
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE "tutor" ADD FOREIGN KEY ("user_id") REFERENCES "user" ("id");
ALTER TABLE "student" ADD FOREIGN KEY ("user_id") REFERENCES "user" ("id");
ALTER TABLE "Team" ADD FOREIGN KEY ("tutor_id") REFERENCES "tutor" ("id");
ALTER TABLE "Team" ADD FOREIGN KEY ("student_id") REFERENCES "student" ("id");
ALTER TABLE "questionAnswer" ADD FOREIGN KEY ("student_id") REFERENCES "user" ("id");
ALTER TABLE "questionAnswer" ADD FOREIGN KEY ("question_id") REFERENCES "question" ("id");
ALTER TABLE "message" ADD FOREIGN KEY ("user_id") REFERENCES "user" ("id");


