CREATE TABLE IF NOT EXISTS "User" (
  "Id" BIGSERIAL PRIMARY KEY,
  "UserName" TEXT UNIQUE,
  "Password" TEXT,
  "Active" BOOLEAN
);

CREATE TABLE IF NOT EXISTS "Person" (
  "UserId" BIGINTEGER REFERENCES "User"("Id") ON DELETE CASCADE ON UPDATE CASCADE PRIMARY KEY,
  "Email" TEXT UNIQUE,
  "FirstName" TEXT,
  "LastName" TEXT
);

CREATE TABLE IF NOT EXISTS "Post" (
  "Id" BIGSERIAL PRIMARY KEY,
  "PersonId" BIGINTEGER REFERENCES "Person"("PersonId") ON DELETE CASCADE ON UPDATE CASCADE,
  "Title" TEXT,
  "Content" TEXT
);

