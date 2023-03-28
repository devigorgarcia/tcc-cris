-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "firstName" TEXT NOT NULL,
    "lastName" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "enrollDate" TIMESTAMP(3) NOT NULL,
    "birthDate" TIMESTAMP(3) NOT NULL,
    "isRh" BOOLEAN NOT NULL DEFAULT false,
    "state" TEXT NOT NULL,
    "city" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Holerite" (
    "id" SERIAL NOT NULL,
    "currentMonth" TEXT NOT NULL,
    "bruteSalary" DOUBLE PRECISION NOT NULL,
    "inssValue" DOUBLE PRECISION NOT NULL,
    "foodValue" DOUBLE PRECISION NOT NULL,
    "healthyValue" DOUBLE PRECISION NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "Holerite_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Holerite" ADD CONSTRAINT "Holerite_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
