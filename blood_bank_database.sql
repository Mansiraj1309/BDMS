create database blood_donation; 
use blood_donation;

create table donor_details(
donor_id int auto_increment NOT NULL,
donor_name varchar(50) NOT NULL,
donor_number varchar(10) NOT NULL,
donor_mail varchar(50),
donor_age int(60) NOT NULL,
donor_gender varchar(10) NOT NULL,
donor_blood varchar(10) NOT NULL,
donor_address varchar(100) NOT NULL,
Primary key(donor_id)
Foreign key(donor_blood)REFERENCES blood(blood_group)
);

insert into donor_details(donor_id,donor_name,donor_number,donor_mail,donor_age,donor_gender,donor_blood,donor_address)
values
(1,"MANVI","9988345645","manvi22@gmail.com",23,"Female","O+","Patna"),
(2,"abhinav anand","7903515297","abhijakariyapur@gmail.com",21,"Male",1,"ABC"),
(3,"arnav","9999977777","ar1234@gmail.com",30,"Male","AB-","Mumbai");

create table admin_info(
admin_id int(10) NOT NULL UNIQUE AUTO_INCREMENT,
admin_name varchar(50) NOT NULL,
admin_username varchar(50) NOT NULL UNIQUE,
admin_password varchar(50) NOT NULL,
Primary key(admin_id)
);

insert into admin_info(admin_name,admin_username,admin_password)
values("Abhinav","Abhinav123",123);

create table blood(
blood_id int auto_increment Not Null,
blood_group varchar(10) NOT NULL,
primary key(blood_id)
);

insert into blood(blood_group)
values("B+"),("B-"),("A+"),("O+"),("O-"),("A-"),("AB+"),("AB-");

create table pages(
page_id int NOT NULL auto_increment UNIQUE,
page_name varchar(255) NOT NULL,
page_type varchar(255) NOT NULL,
page_data longtext NOT NULL
);
ALTER TABLE pages
MODIFY COLUMN page_type varchar(50) UNIQUE;


INSERT INTO pages (page_id, page_name, page_type, page_data) VALUES
(4, 'The Need For Blood', 'needforblood', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">There are many reasons patients need blood. A common misunderstanding about blood usage is that accident victims are the patients who use the most blood. Actually, people needing the most blood include those:
1) Being treated for cancer<br>
2) Undergoing orthopedic surgeries<br>
3) Undergoing cardiovascular surgeries<br>
4) Being treated for inherited blood disorders</span>');
(5, 'Blood Tips', 'bloodtips', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">
1) You must be in good health. <br>
2) Hydrate and eat a healthy meal before your donation.<br>
3) You’re never too old to donate blood. <br>
4) Rest and relaxed.<br>
5) Don’t forget your FREE post-donation snack. 
</span>'),
(6, 'Who you could Help', 'whoyouhelp', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">
Every 2 seconds, someone in the World needs blood. Donating blood can help:

1) People who go through disasters or emergency situations.<br>
2) People who lose blood during major surgeries.<br>
3) People who have lost blood because of a gastrointestinal bleed.<br>
4) Women who have serious complications during pregnancy or childbirth.<br>
5) People with cancer or severe anemia sometimes caused by thalassemia or sickle cell disease.<br>
</span>');




create table contact_info(
contact_id int auto_increment Not Null,
contact_address varchar(100) NOT NULL,
contact_mail varchar(50) NOT NULL,
contact_phone varchar(100) NOT NULL,
primary key(contact_id)
Foreign key(contact_phone)REFERENCES donor_details(donor_number)
);

insert into contact_info(contact_id,contact_address,contact_mail,contact_phone)
values
(1,"Patna","mansiraj131@gmail.com","6202848552"),
(2,"Patna","abhinav123@gmail.com","9845673445"),
(3,"Delhi","aryan455@gmail.com","9973948865");



