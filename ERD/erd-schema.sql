CREATE TABLE "User" (
  "id" int PRIMARY KEY,
  "name" VARCHAR(255),
  "email" VARCHAR(255),
  "password_digest" VARCHAR(255),
  "is_admin" boolean
);

CREATE TABLE "Car" (
  "id" int PRIMARY KEY,
  "name" VARCHAR(255),
  "description" VARCHAR(255),
  "model" VARCHAR(255),
  "image" VARCHAR(255),
  "price_per_day" decimal
);

CREATE TABLE "Reservation" (
  "id" int PRIMARY KEY,
  "start_date" date,
  "end_date" date,
  "city" VARCHAR(255),
  "total_price" decimal,
  "user_id" int,
  "car_id" int
);

ALTER TABLE "Reservation" ADD FOREIGN KEY ("user_id") REFERENCES "User" ("id");

ALTER TABLE "Reservation" ADD FOREIGN KEY ("car_id") REFERENCES "Car" ("id");
