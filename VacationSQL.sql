CREATE DATABASE bim312_vacation_system;
USE bim312_vacation_system;

CREATE TABLE Department(
Dep_Id char(5) NOT NULL,
D_Name varchar(50) NOT NULL,
D_Mail varchar(50) NOT NULL,
D_Num int NOT NULL,
Em_StartDate int NOT NULL,
PRIMARY KEY(Dep_Id)
);

CREATE TABLE Employee(
SSN char(9) NOT NULL,
First_Name varchar(50) NOT NULL,
Middle_Name varchar(50),
Last_Name varchar(50) NOT NULL,
B_Date date NOT NULL,
Gender varchar(50) NOT NULL,
Salary int NOT NULL,
Emp_Role varchar(20) NOT NULL,
Dep_Id char(5) NOT NULL,
Vac_Status varchar(20) NOT NULL,
PRIMARY KEY (SSN),
FOREIGN KEY(Dep_Id) REFERENCES  Department(Dep_Id)
);

CREATE TABLE Super_Emp(
SSN char(9) NOT NULL,
S_Level varchar(25) NOT NULL,
PRIMARY KEY (SSN) ,
FOREIGN KEY(SSN) REFERENCES Employee(SSN)
);

CREATE TABLE Regular(
SSN char(9) NOT NULL,
PRIMARY KEY (SSN) ,
FOREIGN KEY(SSN) REFERENCES Employee(SSN)
);

CREATE TABLE Users(
User_Id char(7) NOT NULL,
U_Password varchar(16) NOT NULL,
Login_SSN char(9) NOT NULL,
PRIMARY KEY(User_Id),
FOREIGN KEY(Login_SSN) REFERENCES Employee(SSN) 
);

CREATE TABLE Vacation(
Vac_Id char(5) NOT NULL,
V_Description varchar(200) NOT NULL,
V_Type varchar(50) NOT NULL,
Start_Date date NOT NULL,
End_Date date NOT NULL,
SSN char(9) NOT NULL,
FOREIGN KEY(SSN) REFERENCES Employee(SSN),
PRIMARY KEY(Vac_Id)
);

CREATE TABLE Task(
Task_Id char(5) NOT NULL,
T_Name varchar(50) NOT NULL,
Deadline date NOT NULL,
T_Description varchar(200) NOT NULL,
Dep_Id char(5) NOT NULL,
PRIMARY KEY(Task_Id),
FOREIGN KEY(Dep_Id) REFERENCES Department(Dep_Id)
);

CREATE TABLE Em_Phone(
Em_Phone int NOT NULL,
SSN char(9) NOT NULL,
PRIMARY KEY(Em_Phone,SSN),
FOREIGN KEY(SSN) REFERENCES Employee(SSN)
);

CREATE TABLE Em_Address(
Em_Address varchar(200) NOT NULL,
SSN char(9) NOT NULL,
PRIMARY KEY(SSN),
FOREIGN KEY(SSN) REFERENCES Employee(SSN)
);

insert into Department (Dep_Id, D_Name, D_Mail, D_Num, Em_StartDate) values (10001, 'Engineering', 'd1@gmail.com', 1, '10/6/2021');
insert into Department (Dep_Id, D_Name, D_Mail, D_Num, Em_StartDate) values (10002, 'Product Management', 'd2@gmail.com', 2, '9/18/2021');
insert into Department (Dep_Id, D_Name, D_Mail, D_Num, Em_StartDate) values (10003, 'Marketing', 'd3@gmail.com', 3, '9/24/2021');
insert into Department (Dep_Id, D_Name, D_Mail, D_Num, Em_StartDate) values (10004, 'Legal', 'd4@gmail.com', 4, '8/28/2021');
insert into Department (Dep_Id, D_Name, D_Mail, D_Num, Em_StartDate) values (10005, 'Support', 'd5@gmail.com', 5, '11/16/2021');
insert into Department (Dep_Id, D_Name, D_Mail, D_Num, Em_StartDate) values (10006, 'Sales', 'd6@gmail.com', 6, '7/27/2021');
insert into Department (Dep_Id, D_Name, D_Mail, D_Num, Em_StartDate) values (10007, 'Business Development', 'd7@gmail.com', 7, '5/6/2021');
insert into Department (Dep_Id, D_Name, D_Mail, D_Num, Em_StartDate) values (10008, 'Research and Development', 'd8@gmail.com', 8, '4/1/2022');
insert into Department (Dep_Id, D_Name, D_Mail, D_Num, Em_StartDate) values (10009, 'Human Resources', 'd9@gmail.com', 9, '9/12/2021');
insert into Department (Dep_Id, D_Name, D_Mail, D_Num, Em_StartDate) values (10010, 'Training', 'd10@gmail.com', 10, '5/3/2021');
insert into Department (Dep_Id, D_Name, D_Mail, D_Num, Em_StartDate) values (10011, 'Accounting', 'd11@gmail.com', 11, '1/24/2022');
insert into Department (Dep_Id, D_Name, D_Mail, D_Num, Em_StartDate) values (10012, 'Services', 'd12@gmail.com', 12, '2/10/2022');

insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('111111111', 'İlayda', ' ', 'Demirel', '2001-11-13', 'Female', '$4968.49', 10001);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('222222222', 'Melike', ' ', 'Ünsaldı', '2001-08-07', 'Female', '$4968.49', 10002);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('484798603', 'Josefina', 'Tiertza', 'Gait', '1995-01-01', 'Female', '$4968.49', 10003);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('481892714', 'Gabi', 'Lorinda', 'Hellwig', '1996-10-20', 'Female', '$5473.52', 10004);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('758757478', 'Rickert', 'Julius', 'Sainsbury-Brown', '1990-10-18', 'Male', '$4570.20', 10005);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('161047232', 'Cyndie', 'Maren', 'Patient', '1986-11-12', 'Female', '$7273.42', 10006);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('179579431', 'Edna', 'Sibel', 'Gaw', '1976-02-18', 'Female', '$1914.52', 10007);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('869682872', 'Tommie', 'Layton', 'Meriguet', '1981-06-19', 'Female', '$8990.33', 10008);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('646384707', 'Hillery', 'Bill', 'Mattson', '1994-01-24', 'Male', '$9836.53', 10009);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('497765778', 'Marja', 'Mehetabel', 'Heyworth', '1972-05-27', 'Female', '$1318.24', 10010);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('238717124', 'Elmo', 'Rockwell', 'Ondrasek', '1972-04-17', 'Genderqueer', '$4082.41', 10011);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('451523547', 'Dolley', 'Raychel', 'Sworne', '1989-09-23', 'Female', '$1985.85', 10012);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('721087485', 'Nowell', 'Sly', 'Thecham', '1976-07-29', 'Male', '$6142.80', 10002);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('539836759', 'Tann', 'Chrisy', 'Grocott', '1974-02-12', 'Genderfluid', '$8970.84', 10004);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('409680956', 'Augustine', 'Casi', 'Scarf', '1978-01-09', 'Female', '$1615.76', 10003);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('714051777', 'Wrennie', 'Donnamarie', 'O''Hagan', '1985-02-22', 'Female', '$6216.33', 10011);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('204046759', 'Maurita', 'Abigael', 'Addlestone', '1981-04-18', 'Female', '$4420.87', 10009);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('200597986', 'Karissa', 'Mira', 'Frapwell', '1986-10-20', 'Female', '$8604.47', 10003);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('759915288', 'Donnie', 'Olin', 'Phlippsen', '1992-12-17', 'Male', '$7889.94', 10003);
insert into Employee (SSN, First_Name, Middle_Name, Last_Name, B_Date, Gender, Salary, Dep_Id) values ('568316923', 'Paulette', 'Dianna', 'Pascoe', '1981-12-24', 'Bigender', '$8512.93', 10001);

insert into Super_Emp (SSN, S_Level) values ('111111111', 'Manager');
insert into Super_Emp (SSN, S_Level) values ('222222222', 'Manager');

insert into Regular (SSN) values ('484798603');
insert into Regular (SSN) values ('481892714');
insert into Regular (SSN) values ('758757478');
insert into Regular (SSN) values ('161047232');
insert into Regular (SSN) values ('179579431');
insert into Regular (SSN) values ('869682872');
insert into Regular (SSN) values ('646384707');
insert into Regular (SSN) values ('497765778');
insert into Regular (SSN) values ('238717124');
insert into Regular (SSN) values ('451523547');
insert into Regular (SSN) values ('721087485');
insert into Regular (SSN) values ('539836759');
insert into Regular (SSN) values ('409680956');
insert into Regular (SSN) values ('714051777');
insert into Regular (SSN) values ('204046759');
insert into Regular (SSN) values ('200597986');
insert into Regular (SSN) values ('759915288');
insert into Regular (SSN) values ('568316923');

insert into Users (User_Id, U_Password, Login_SSN) values ('1111111111', 'admin1', '111111111');
insert into Users (User_Id, U_Password, Login_SSN) values ('2222222222', 'admin2', '222222222');
insert into Users (User_Id, U_Password, Login_SSN) values ('1467924520', '9GIgaJnt', '484798603');
insert into Users (User_Id, U_Password, Login_SSN) values ('0040905756', 'tDYt1z7M', '481892714');
insert into Users (User_Id, U_Password, Login_SSN) values ('6342759081', 'zHE24Q58Zy9b', '758757478');
insert into Users (User_Id, U_Password, Login_SSN) values ('7518242559', '9TF6ba2jK', '161047232');
insert into Users (User_Id, U_Password, Login_SSN) values ('3595585291', 'KcDQcMTbylV', '179579431');
insert into Users (User_Id, U_Password, Login_SSN) values ('3721232917', 'QJ0zdW', '869682872');
insert into Users (User_Id, U_Password, Login_SSN) values ('7283961348', 'QGplvUzbP', '646384707');
insert into Users (User_Id, U_Password, Login_SSN) values ('8675341741', 'j2TzIV', '497765778');
insert into Users (User_Id, U_Password, Login_SSN) values ('7051027948', 'nso5G9365', '238717124');
insert into Users (User_Id, U_Password, Login_SSN) values ('6565443688', 'tIjvvC0', '451523547');
insert into Users (User_Id, U_Password, Login_SSN) values ('9758235281', 'DG8AdJjzT', '721087485');
insert into Users (User_Id, U_Password, Login_SSN) values ('1996003291', 'VBqf1hLc8', '539836759');
insert into Users (User_Id, U_Password, Login_SSN) values ('7678528647', 'CFGMVIiRGS', '409680956');
insert into Users (User_Id, U_Password, Login_SSN) values ('7817397406', 'fA2sVgz9PG8W', '714051777');
insert into Users (User_Id, U_Password, Login_SSN) values ('6222859275', 'DOfIyy5', '204046759');
insert into Users (User_Id, U_Password, Login_SSN) values ('5448191010', 'IKhYjpS4', '200597986');
insert into Users (User_Id, U_Password, Login_SSN) values ('8610253570', 'HzwpZay', '759915288');
insert into Users (User_Id, U_Password, Login_SSN) values ('6546443929', 'o5IszLsl', '568316923');

insert into Vacation (Vac_Id, V_Type, Start_Date, End_Date, SSN, V_Description) values ('5594258310', 'Compensatory Time', '2021-05-10', '2021-05-26', '484798603', 'Suspendisse accumsan tortor quis turpis.');
insert into Vacation (Vac_Id, V_Type, Start_Date, End_Date, SSN, V_Description) values ('9324573659', 'Vacation Days', '2022-01-01', '2022-01-29', '481892714', 'Nunc purus.');
insert into Vacation (Vac_Id, V_Type, Start_Date, End_Date, SSN, V_Description) values ('7734051820', 'Parental Leave', '2022-01-29', '2022-06-25', '869682872', 'Vestibulum sed magna at nunc commodo placerat.');
insert into Vacation (Vac_Id, V_Type, Start_Date, End_Date, SSN, V_Description) values ('7744051820', 'Parental Leave', '2021-11-29', '2022-03-25', '484798603', 'Vestibulum sed magna at nunc commodo placerat.');
insert into Vacation (Vac_Id, V_Type, Start_Date, End_Date, SSN, V_Description) values ('9595842982', 'Sick Leave', '2022-02-22', '2022-02-25', '238717124', 'Aliquam sit amet diam in magna bibendum imperdiet.');
insert into Vacation (Vac_Id, V_Type, Start_Date, End_Date, SSN, V_Description) values ('1285777093', 'Vacation Days', '2022-01-02', '2022-01-09', '451523547', 'Quisque porta volutpat erat.');
insert into Vacation (Vac_Id, V_Type, Start_Date, End_Date, SSN, V_Description) values ('9334573659', 'Vacation Days', '2022-01-24', '2022-02-07', '111111111', 'Nunc purus.');
insert into Vacation (Vac_Id, V_Type, Start_Date, End_Date, SSN, V_Description) values ('3500262767', 'Bereavment', '2021-05-05', '2021-05-12', '759915288', 'Duis mattis egestas metus.');
insert into Vacation (Vac_Id, V_Type, Start_Date, End_Date, SSN, V_Description) values ('1629461830', 'Personal Time', '2022-01-28', '2022-01-30', '568316923', 'Vivamus tortor.');

insert into Task (Task_Id, T_Name, Deadline, T_Description, Dep_Id) values (10043, 'Span', '2022-01-06 12:19:09', 'congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus', 10006);
insert into Task (Task_Id, T_Name, Deadline, T_Description, Dep_Id) values (10047, 'Cardify', '2021-11-01 14:20:48', 'convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est', 10001);
insert into Task (Task_Id, T_Name, Deadline, T_Description, Dep_Id) values (10045, 'Bigtax', '2021-10-30 07:52:36', 'tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean', 10002);
insert into Task (Task_Id, T_Name, Deadline, T_Description, Dep_Id) values (10069, 'Trippledex', '2022-03-17 12:25:22', 'tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at', 10003);
insert into Task (Task_Id, T_Name, Deadline, T_Description, Dep_Id) values (10010, 'It', '2021-09-06 01:28:16', 'consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum', 10004);
insert into Task (Task_Id, T_Name, Deadline, T_Description, Dep_Id) values (10064, 'Bigtax', '2021-06-14 02:50:52', 'luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet', 10005);
insert into Task (Task_Id, T_Name, Deadline, T_Description, Dep_Id) values (10011, 'Zoolab', '2021-11-10 13:50:28', 'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum', 10006);
insert into Task (Task_Id, T_Name, Deadline, T_Description, Dep_Id) values (10044, 'Transcof', '2021-11-08 23:15:51', 'aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna', 10007);
insert into Task (Task_Id, T_Name, Deadline, T_Description, Dep_Id) values (10036, 'Voyatouch', '2021-05-07 10:41:01', 'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', 10008);
insert into Task (Task_Id, T_Name, Deadline, T_Description, Dep_Id) values (10016, 'Holdlamis', '2021-07-09 05:10:33', 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec', 10009);
insert into Task (Task_Id, T_Name, Deadline, T_Description, Dep_Id) values (10099, 'Vagram', '2021-07-09 22:21:10', 'non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra', 10010);
insert into Task (Task_Id, T_Name, Deadline, T_Description, Dep_Id) values (10082, 'Lotlux', '2022-04-06 04:21:46', 'purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in', 10011);
insert into Task (Task_Id, T_Name, Deadline, T_Description, Dep_Id) values (10025, 'Sonsing', '2021-07-03 17:01:49', 'eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu', 10012);

insert into Em_Phone (Em_Phone, SSN) values ('757-196-4769', '111111111');
insert into Em_Phone (Em_Phone, SSN) values ('718-394-7495', '222222222');
insert into Em_Phone (Em_Phone, SSN) values ('282-839-4605', '484798603');
insert into Em_Phone (Em_Phone, SSN) values ('711-834-3308', '481892714');
insert into Em_Phone (Em_Phone, SSN) values ('197-374-7840', '758757478');
insert into Em_Phone (Em_Phone, SSN) values ('136-975-9734', '161047232');
insert into Em_Phone (Em_Phone, SSN) values ('921-581-1226', '179579431');
insert into Em_Phone (Em_Phone, SSN) values ('776-963-8355', '869682872');
insert into Em_Phone (Em_Phone, SSN) values ('693-457-8369', '646384707');
insert into Em_Phone (Em_Phone, SSN) values ('243-527-7855', '497765778');
insert into Em_Phone (Em_Phone, SSN) values ('624-913-4715', '238717124');
insert into Em_Phone (Em_Phone, SSN) values ('775-304-5999', '451523547');
insert into Em_Phone (Em_Phone, SSN) values ('674-662-7726', '721087485');
insert into Em_Phone (Em_Phone, SSN) values ('788-513-6785', '539836759');
insert into Em_Phone (Em_Phone, SSN) values ('143-831-9622', '409680956');
insert into Em_Phone (Em_Phone, SSN) values ('224-489-1243', '714051777');
insert into Em_Phone (Em_Phone, SSN) values ('541-235-1470', '204046759');
insert into Em_Phone (Em_Phone, SSN) values ('793-356-3480', '200597986');
insert into Em_Phone (Em_Phone, SSN) values ('485-121-4089', '759915288');
insert into Em_Phone (Em_Phone, SSN) values ('576-590-0267', '568316923');

insert into Em_Address (Em_Address, SSN) values ('504 Laurel Way', '111111111');
insert into Em_Address (Em_Address, SSN) values ('3 Holy Cross Circle', '222222222');
insert into Em_Address (Em_Address, SSN) values ('2 Birchwood Alley', '484798603');
insert into Em_Address (Em_Address, SSN) values ('3 3rd Terrace', '481892714');
insert into Em_Address (Em_Address, SSN) values ('3 Waxwing Pass', '758757478');
insert into Em_Address (Em_Address, SSN) values ('199 Almo Avenue', '161047232');
insert into Em_Address (Em_Address, SSN) values ('93 Lake View Avenue', '179579431');
insert into Em_Address (Em_Address, SSN) values ('80 Cordelia Road', '869682872');
insert into Em_Address (Em_Address, SSN) values ('2 Talmadge Hill', '646384707');
insert into Em_Address (Em_Address, SSN) values ('357 John Wall Street', '497765778');
insert into Em_Address (Em_Address, SSN) values ('86 Algoma Plaza', '238717124');
insert into Em_Address (Em_Address, SSN) values ('14951 Fordem Park', '451523547');
insert into Em_Address (Em_Address, SSN) values ('0627 Harper Street', '721087485');
insert into Em_Address (Em_Address, SSN) values ('59265 Lukken Park', '539836759');
insert into Em_Address (Em_Address, SSN) values ('18140 Buell Trail', '409680956');
insert into Em_Address (Em_Address, SSN) values ('33 Banding Park', '714051777');
insert into Em_Address (Em_Address, SSN) values ('994 Aberg Drive', '204046759');
insert into Em_Address (Em_Address, SSN) values ('62611 Logan Avenue', '200597986');
insert into Em_Address (Em_Address, SSN) values ('86 Onsgard Avenue', '759915288');
insert into Em_Address (Em_Address, SSN) values ('264 Express Pass', '568316923');