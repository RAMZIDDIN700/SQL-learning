a) data bu malumot bolib, u matn, raqam, sana korinishida boladi. b) database-malumotlar bazasi bu ozaro boglangan malumotlar toplami,masalan ishchilar royxati. c)relational database bumalumotlar jadvallar korinishida saqlanadigan va ularning orasidagi boglanishlar orqali ishlovchi baza
1)malumotlarni xavfsiz saqlaydi 2)zaxira qilish va tiklash mumkun 3)yuqori ishlash tezligi 4)trigger,stored procedure,view kabilarni qollab quvvatlaydi 5)ssms orqali qulay boshqaruv interfeysiga ega
1)windows authentication:-windows tizimidagi foydalanuvchi akkaunti orqali ulanish 2) sql server authentication:-maxsus sql login va parol orqali tizimga kirish
create database schoolDB
CREATE TABLE Students (StudentID INT PRIMARY KEY,Name VARCHAR(50),Age INT)
sql server -bu malumotlar bazasini boshqaradigan tizim(DBMS) ,  ssms-bu sql server bilan ishlash uchun grafik interfeys (GUI) dastur, sql- bu malumotlar bilan ishlash uchun dasturlash tili
1)DML bu-malumotlar bilan ishlaydi misol uchun: insert into students values(1,'bobur',15)   2)DDL bu-jadval yoki struktura yaratadi/ozgartiradi masalan create table students(...)  3) DCL bu-foydalanuvchilarga ruxsat beradi grand select onstudents to user1  4)TCL bu-tranzaksiyalarni boshqaradi commit; va rollback
INSERT INTO Students (StudentID, Name, Age) VALUES (1, 'Ali', 21);INSERT INTO Students (StudentID, Name, Age) VALUES (2, 'Laylo', 22);INSERT INTO Students (StudentID, Name, Age) VALUES (3, 'Javlon', 20);
1) faylni yuklab olish 2)ssms ni oching,database ni ustiga bosib restore databaseni tanlang 3) device tugmasini bosib bak faylni korsating 4) ok tugmasini bosing
