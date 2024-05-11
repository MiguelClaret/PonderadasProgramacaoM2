-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'user'
-- 
-- ---

CREATE TABLE IF NOT EXISTS "user" (
  "id" SERIAL PRIMARY KEY,
  "name" TEXT,
  "birthday" DATE,
  "country" TEXT,
  "pronouns" TEXT,
  "email" TEXT,
  "password" TEXT,
  "university" TEXT
);

-- ---
-- Table 'tutor'
-- 
-- ---

CREATE TABLE IF NOT EXISTS "tutor" (
  "id" SERIAL PRIMARY KEY,
  "user_id" INTEGER REFERENCES "user" ("id")
);

-- ---
-- Table 'student'
-- 
-- ---

CREATE TABLE IF NOT EXISTS "student" (
  "id" SERIAL PRIMARY KEY,
  "user_id" INTEGER REFERENCES "user" ("id"),
  "happiness_meter" INTEGER,
  "profile_type" TEXT,
  "profile_photo_svg" TEXT
);

-- ---
-- Table 'question'
-- 
-- ---

CREATE TABLE IF NOT EXISTS "question" (
  "id" SERIAL PRIMARY KEY,
  "question_text" TEXT,
  "alternatives" TEXT,
  "question_type" TEXT
);

-- ---
-- Table 'Team'
-- 
-- ---

CREATE TABLE IF NOT EXISTS "Team" (
  "id" SERIAL PRIMARY KEY,
  "name" TEXT,
  "tutor_id" INTEGER REFERENCES "tutor" ("id"),
  "student_id" INTEGER REFERENCES "student" ("id")
);

-- ---
-- Table 'questionAnswer'
-- 
-- ---

CREATE TABLE IF NOT EXISTS "questionAnswer" (
  "id" SERIAL PRIMARY KEY,
  "student_id" INTEGER REFERENCES "user" ("id"),
  "question_id" INTEGER REFERENCES "question" ("id"),
  "question_answer" TEXT,
  "date" DATE
);

-- ---
-- Table 'message'
-- 
-- ---

CREATE TABLE IF NOT EXISTS "message" (
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


