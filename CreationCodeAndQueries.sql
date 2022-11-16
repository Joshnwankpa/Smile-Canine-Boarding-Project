CREATE TABLE staff (
  staff_id serial,
  staff_username varchar(20),
  staff_fname varchar(40),
  staff_lname varchar(40),
  staff_email varchar(100),
  staff_dob date,
  staff_role varchar(15),
  staff_town varchar(15),
  staff_postcode char(8),
  staff_country varchar(15),
  PRIMARY KEY (staff_id)
);

CREATE TABLE food (
  food_id serial,
  food_type varchar(100),
  PRIMARY KEY (food_id)
);

CREATE TABLE jobs (
  jobs_id serial,
  job_title varchar(50),
  job_description varchar(50),
  PRIMARY KEY (jobs_id)
);

CREATE table jobs_rota (
  staff_id int NOT NULL, 
  jobs_id int NOT NULL,
  week_day varchar(15),
  work_date date,
  starts_at time,
  ends_at time,
  PRIMARY KEY(staff_id, jobs_id),
  FOREIGN KEY(staff_id) REFERENCES staff(staff_id),
  FOREIGN KEY(jobs_id) REFERENCES jobs(jobs_id)
) ;


CREATE TABLE booking_system (
  booking_id serial,
  pet_id int,
  staff_id int,
  dateOfBooking date,
  dateOfLeaving date,
  emailForBooking varchar(100),
  numberForBooking varchar(15),
  PRIMARY KEY (booking_id)
);


CREATE TABLE kennel_type (
  kennelType_id serial,
  k_type varchar(15),
  PRIMARY KEY (kennelType_id)
);


CREATE TABLE customer (
  cust_id serial,
  cust_fname varchar(40),
  cust_lname varchar(40),
  cust_email varchar(100),
  cust_number varchar(15),
  cust_town varchar(15),
  cust_postcode char(8),
  cust_country varchar(20),
  PRIMARY KEY (cust_id)
);

CREATE TABLE flea_treatment (
  flea_id serial,
  pet_id int,
  fleaShot_status bit,
  flea_type varchar(100),
  flea_date date,
  PRIMARY KEY (flea_id)
);

CREATE TABLE pet (
  pet_id serial,
  cust_id int,
  pet_name varchar(40),
  pet_colour varchar(15),
  microchip varchar(20),
  allergies varchar(150),
  PRIMARY KEY (pet_id)
);

CREATE TABLE kennel (
  kennel_id serial,
  kennelType_id int,
  pet_id int,
  PRIMARY KEY (kennel_id),
  FOREIGN KEY (kennelType_id) REFERENCES kennel_type(kennelType_id),
  FOREIGN KEY (pet_id) REFERENCES pet(pet_id)
) ;

CREATE TABLE vaccination (
  vac_id serial,
  pet_id int,
  vetDetails_id int,
  vac_status bit,
  vac_date date,
  PRIMARY KEY (vac_id)
);

CREATE TABLE vet_details (
  vetDetails_id serial,
  vet_fname varchar(40),
  vet_lname varchar(40),
  vet_email varchar(100),
  vet_number varchar(15),
  company_name varchar(100),
  vet_town varchar(15),
  vet_postcode char(8),
  vet_country varchar(20),
  PRIMARY KEY (vetDetails_id)
);

CREATE TABLE food_instructions (
  instruction_id serial,
  pet_id int,
  food_id int,
  times_feed int,
  PRIMARY KEY (instruction_id)
);



insert into customer (cust_fname, cust_lname, cust_email, cust_number, cust_town, cust_postcode, cust_country) values ('Flori', 'Foulser', 'ffoulser0@rambler.ru', '166 234 8452', 'Linton', 'BD23', 'United Kingdom');
insert into customer (cust_fname, cust_lname, cust_email, cust_number, cust_town, cust_postcode, cust_country) values ('Michaela', 'McNirlan', 'mmcnirlan1@auda.org.au', '339 135 6505', 'Weston', 'GU32', 'United Kingdom');
insert into customer (cust_fname, cust_lname, cust_email, cust_number, cust_town, cust_postcode, cust_country) values ('Kiah', 'Causier', 'kcausier2@amazon.co.uk', '881 107 0067', 'Bristol', 'BS41', 'United Kingdom');
insert into customer (cust_fname, cust_lname, cust_email, cust_number, cust_town, cust_postcode, cust_country) values ('Isacco', 'July', 'ijuly3@nbcnews.com', '241 807 2630', 'Middleton', 'LE16', 'United Kingdom');
insert into customer (cust_fname, cust_lname, cust_email, cust_number, cust_town, cust_postcode, cust_country) values ('Lilith', 'Emanson', 'lemanson4@cmu.edu', '153 654 5846', 'Sheffield', 'S33', 'United Kingdom');
insert into customer (cust_fname, cust_lname, cust_email, cust_number, cust_town, cust_postcode, cust_country) values ('Gal', 'Shelliday', 'gshelliday5@blogger.com', '445 942 1350', 'Sutton', 'RH5', 'United Kingdom');
insert into customer (cust_fname, cust_lname, cust_email, cust_number, cust_town, cust_postcode, cust_country) values ('Rudie', 'Searson', 'rsearson6@mashable.com', '876 230 0610', 'Milton', 'AB56', 'United Kingdom');
insert into customer (cust_fname, cust_lname, cust_email, cust_number, cust_town, cust_postcode, cust_country) values ('Tomasina', 'Mateuszczyk', 'tmateuszczyk7@unc.edu', '620 144 8892', 'Newton', 'NG34', 'United Kingdom');
insert into customer (cust_fname, cust_lname, cust_email, cust_number, cust_town, cust_postcode, cust_country) values ('Shurwood', 'Hawyes', 'shawyes8@51.la', '755 296 8103', 'East End', 'BH21', 'United Kingdom');
insert into customer (cust_fname, cust_lname, cust_email, cust_number, cust_town, cust_postcode, cust_country) values ('Sorcha', 'Lawrence', 'slawrence9@theglobeandmail.com', '615 503 8424', 'Norton', 'NN11', 'United Kingdom');
insert into customer (cust_fname, cust_lname, cust_email, cust_number, cust_town, cust_postcode, cust_country) values ('Withmore', 'Xander', 'xander2@theglobeandmail.com', '615 603 8057', 'Norton', 'NN33', 'United Kingdom');
insert into customer (cust_fname, cust_lname, cust_email, cust_number, cust_town, cust_postcode, cust_country) values ('John', 'Luckas', 'luckasdgr8@theglobeandmail.com', '223 498 7788', 'Bristol', 'BB44', 'United Kingdom');


insert into vet_details (vet_fname, vet_lname, vet_email, vet_number, company_name, vet_town, vet_postcode, vet_country) values ('Desdemona', 'Farrin', 'dfarrin0@upenn.edu', '558 297 6005', 'Wordtune', 'Swindon', 'SN1', 'United Kingdom');
insert into vet_details (vet_fname, vet_lname, vet_email, vet_number, company_name, vet_town, vet_postcode, vet_country) values ('Johanna', 'Lessmare', 'jlessmare1@lycos.com', '365 332 9886', 'Gabtype', 'Dean', 'OX7', 'United Kingdom');
insert into vet_details (vet_fname, vet_lname, vet_email, vet_number, company_name, vet_town, vet_postcode, vet_country) values ('Shelden', 'Darrington', 'sdarrington2@rambler.ru', '851 861 7905', 'Jetwire', 'Sutton', 'CT15', 'United Kingdom');
insert into vet_details (vet_fname, vet_lname, vet_email, vet_number, company_name, vet_town, vet_postcode, vet_country) values ('Tudor', 'Feye', 'tfeye3@jugem.jp', '325 174 2848', 'Layo', 'Preston', 'PR1', 'United Kingdom');
insert into vet_details (vet_fname, vet_lname, vet_email, vet_number, company_name, vet_town, vet_postcode, vet_country) values ('Edyth', 'Soro', 'esoro4@google.pl', '849 184 7148', 'Mydo', 'Weston', 'GU32', 'United Kingdom');
insert into vet_details (vet_fname, vet_lname, vet_email, vet_number, company_name, vet_town, vet_postcode, vet_country) values ('Deny', 'Gauntlett', 'dgauntlett5@vimeo.com', '583 657 3922', 'Dablist', 'West End', 'DN36', 'United Kingdom');


insert into staff (staff_username, staff_fname, staff_lname, staff_email, staff_dob, staff_role, staff_town, staff_postcode, staff_country) values ('jmeaney0', 'Jamima', 'Meaney', '689 908 5627', '11/12/1994', 'General Staff', 'London', 'EC3M', 'United Kingdom');
insert into staff (staff_username, staff_fname, staff_lname, staff_email, staff_dob, staff_role, staff_town, staff_postcode, staff_country) values ('adecarlo1', 'Alisander', 'De Carlo', '983 101 5561', '11/19/1982', 'General Staff', 'Birmingham', 'B40', 'United Kingdom');
insert into staff (staff_username, staff_fname, staff_lname, staff_email, staff_dob, staff_role, staff_town, staff_postcode, staff_country) values ('slygoe2', 'Sadie', 'Lygoe', '132 482 1349', '10/26/1986', 'London', 'General Staff','EC1V', 'United Kingdom');
insert into staff (staff_username, staff_fname, staff_lname, staff_email, staff_dob, staff_role, staff_town, staff_postcode, staff_country) values ('ddebenedetti3', 'Della', 'De Benedetti', '574 484 8334', '5/9/1979', 'General Staff','Eaton', 'DN22', 'United Kingdom');
insert into staff (staff_username, staff_fname, staff_lname, staff_email, staff_dob, staff_role, staff_town, staff_postcode, staff_country) values ('jlampbrecht4', 'Jorge', 'Lampbrecht', '173 465 3510', '6/15/1986', 'Staff','Normanton', 'LE15', 'United Kingdom');
insert into staff (staff_username, staff_fname, staff_lname, staff_email, staff_dob, staff_role, staff_town, staff_postcode, staff_country) values ('ccominotti5', 'Cora', 'Cominotti', '180 683 3565', '12/31/1989', 'Staff', 'London', 'EC3M', 'United Kingdom');
insert into staff (staff_username, staff_fname, staff_lname, staff_email, staff_dob, staff_role, staff_town, staff_postcode, staff_country) values ('bwaitland6', 'Bellina', 'Waitland', '578 613 5154', '12/3/1997', 'Staff', 'East End', 'BH21', 'United Kingdom');
insert into staff (staff_username, staff_fname, staff_lname, staff_email, staff_dob, staff_role, staff_town, staff_postcode, staff_country) values ('awalklot7', 'Audry', 'Walklot', '372 809 5642', '6/4/1986', 'Staff', 'Thorpe', 'BD23', 'United Kingdom');
insert into staff (staff_username, staff_fname, staff_lname, staff_email, staff_dob, staff_role, staff_town, staff_postcode, staff_country) values ('smeritt8', 'Samara', 'Meritt', '246 191 9480', '9/15/1984', 'Staff', 'Belfast', 'BT2', 'United Kingdom');
insert into staff (staff_username, staff_fname, staff_lname, staff_email, staff_dob, staff_role, staff_town, staff_postcode, staff_country) values ('mtowsie9', 'Mella', 'Towsie', '336 855 3414', '10/12/1978', 'Manager', 'Seaton', 'LE15', 'United Kingdom');


insert into pet (cust_id, pet_name, pet_colour, microchip, allergies) values (1, 'Tammar wallaby', 'Indigo', '695-67-0609', 'No known allergies');
insert into pet (cust_id, pet_name, pet_colour, microchip, allergies) values (2, 'Chameleon', 'Puce', '852-12-0125', 'No known allergies');
insert into pet (cust_id, pet_name, pet_colour, microchip, allergies) values (1, 'Lorike', 'Turquoise', '583-41-2848', 'No known allergies');
insert into pet (cust_id, pet_name, pet_colour, microchip, allergies) values (2, 'Mongoose gold', 'Blue', '727-44-9768', 'Allergic to Pork');
insert into pet (cust_id, pet_name, pet_colour, microchip, allergies) values (5, 'Puna ibis', 'Yellow', '634-76-4690', 'Allergic to Dust');
insert into pet (cust_id, pet_name, pet_colour, microchip, allergies) values (6, 'Mule deer', 'Blue', '285-93-7508', 'No known allergies');
insert into pet (cust_id, pet_name, pet_colour, microchip, allergies) values (7, 'Suricate', 'Indigo', '247-47-4585', 'Allergic to Perfumes and Cigarette smoke');
insert into pet (cust_id, pet_name, pet_colour, microchip, allergies) values (8, 'Wildebeest', 'Crimson', '109-31-3262', 'No known allergies');
insert into pet (cust_id, pet_name, pet_colour, microchip, allergies) values (8, 'Squirrel', 'Fuscia', '189-95-4694', 'Allergic to Dust');
insert into pet (cust_id, pet_name, pet_colour, microchip, allergies) values (10, 'Asian bat', 'Red', '123-63-8532', 'No known allergies');
insert into pet (cust_id, pet_name, pet_colour, microchip, allergies) values (10, 'Toucan', 'Green', '228-52-5246', 'No known allergies');
insert into pet (cust_id, pet_name, pet_colour, microchip, allergies) values (3, 'Cat', 'Violet', '449-53-2328', 'No known allergies');
insert into pet (cust_id, pet_name, pet_colour, microchip, allergies) values (4, 'Red monkey', 'Maroon', '697-52-8634', 'Allergic to Medicated Shampoo');
insert into pet (cust_id, pet_name, pet_colour, microchip, allergies) values (9, 'Purple grenadier', 'Pink', '824-73-8412', 'No known allergies');
insert into pet (cust_id, pet_name, pet_colour, microchip, allergies) values (11, 'black colobus', 'Teal', '368-37-6015', 'No known allergies');
insert into pet (cust_id, pet_name, pet_colour, microchip, allergies) values (12, 'Barbets', 'Blue', '520-04-4547', 'No known allergies');

insert into kennel_type (k_type) values ('Single');
insert into kennel_type (k_type) values ('Double');

insert into kennel (kenneltype_id, pet_id) values ('2', '1');
insert into kennel (kenneltype_id, pet_id) values ('2', '3');
insert into kennel (kenneltype_id, pet_id) values ('2', '2');
insert into kennel (kenneltype_id, pet_id) values ('2', '4');
insert into kennel (kenneltype_id, pet_id) values ('2', '8');
insert into kennel (kenneltype_id, pet_id) values ('2', '9');
insert into kennel (kenneltype_id, pet_id) values ('2', '10');
insert into kennel (kenneltype_id, pet_id) values ('2', '11');
insert into kennel (kenneltype_id, pet_id) values ('1', '12');
insert into kennel (kenneltype_id, pet_id) values ('1', '13');
insert into kennel (kenneltype_id, pet_id) values ('1', '5');
insert into kennel (kenneltype_id, pet_id) values ('1', '6');
insert into kennel (kenneltype_id, pet_id) values ('1', '7');
insert into kennel (kenneltype_id, pet_id) values ('1', '14');
insert into kennel (kenneltype_id, pet_id) values ('1', '15');
insert into kennel (kenneltype_id, pet_id) values ('1', '16');


insert into jobs (job_title, job_description) values ('Dog exercising', 'Taking the dog on walks');
insert into jobs (job_title, job_description) values ('Feeding', 'Feeding the pets');
insert into jobs (job_title, job_description) values ('Kennel Cleaning', 'Cleaning the kennels');


insert into booking_system (pet_id, staff_id, dateOfBooking, dateOfLeaving, emailForBooking, numberForBooking) values ('1', '1', '05/12/2021', NULL, 'ffoulser0work@gmail.com', '733 546 7697');
insert into booking_system (pet_id, staff_id, dateOfBooking, dateOfLeaving, emailForBooking, numberForBooking) values ('3', '1', '05/12/2021', '07/05/2022', 'ffoulser0work@gmail.com', '107 265 5887');
insert into booking_system (pet_id, staff_id, dateOfBooking, dateOfLeaving, emailForBooking, numberForBooking) values ('2', '3', '07/02/2021', '07/05/2022', 'mmcnirlan1work@gmail.com', '120 554 4582');
insert into booking_system (pet_id, staff_id, dateOfBooking, dateOfLeaving, emailForBooking, numberForBooking) values ('4', '3', '07/02/2021', NULL, 'mmcnirlan1work@gmail.com', '624 546 1820');
insert into booking_system (pet_id, staff_id, dateOfBooking, dateOfLeaving, emailForBooking, numberForBooking) values ('8', '6', '03/15/2021', '01/01/2021', 'tmateuszczyk7work@gmail.com', '170 344 0340');
insert into booking_system (pet_id, staff_id, dateOfBooking, dateOfLeaving, emailForBooking, numberForBooking) values ('9', '6', '03/15/2021', NULL, 'tmateuszczyk7work@gmail.com', '323 946 0090');
insert into booking_system (pet_id, staff_id, dateOfBooking, dateOfLeaving, emailForBooking, numberForBooking) values ('10', '7', '07/21/2021', '07/27/2021', 'slawrence9work@gmail.com', '604 344 7500');
insert into booking_system (pet_id, staff_id, dateOfBooking, dateOfLeaving, emailForBooking, numberForBooking) values ('11', '7', '07/21/2021', NULL, 'slawrence9work@gmail.com', '723 748 7097');
insert into booking_system (pet_id, staff_id, dateOfBooking, dateOfLeaving, emailForBooking, numberForBooking) values ('12', '2', '01/01/2021', NULL, 'kcausier2work@gmail.com', '502 516 7652');
insert into booking_system (pet_id, staff_id, dateOfBooking, dateOfLeaving, emailForBooking, numberForBooking) values ('13', '8', '11/12/2021', NULL, 'ijuly3work@gmail.com', '523 546 7890');
insert into booking_system (pet_id, staff_id, dateOfBooking, dateOfLeaving, emailForBooking, numberForBooking) values ('5', '9', '05/12/2021', '07/12/2021', 'lemanson4work@gmail.com', '503 546 7070');
insert into booking_system (pet_id, staff_id, dateOfBooking, dateOfLeaving, emailForBooking, numberForBooking) values ('6', '10', '02/18/2021', '04/05/2021', 'gshelliday5work@gmail.com', '321 500 8090');
insert into booking_system (pet_id, staff_id, dateOfBooking, dateOfLeaving, emailForBooking, numberForBooking) values ('7', '7', '09/25/2021', '10/05/2021', 'rsearson6work@gmail.com', '827 945 0090');
insert into booking_system (pet_id, staff_id, dateOfBooking, dateOfLeaving, emailForBooking, numberForBooking) values ('14', '3', '02/19/2021', '05/10/2021', 'shawyes8work@gmail.com', '690 749 1860');
insert into booking_system (pet_id, staff_id, dateOfBooking, dateOfLeaving, emailForBooking, numberForBooking) values ('15', '6', '12/26/2021', '01/10/2022', 'xander2work@gmail.com', '789 546 7890');
insert into booking_system (pet_id, staff_id, dateOfBooking, dateOfLeaving, emailForBooking, numberForBooking) values ('16', '5', '11/18/2021', NULL, 'luckasdgr8work@gmail.com', '301 506 0800');


insert into jobs_rota (staff_id, jobs_id, week_day, work_date, starts_at, ends_at) values (1, 1, 'Monday', '03/15/2021', '0:00', '11:00');
insert into jobs_rota (staff_id, jobs_id, week_day, work_date, starts_at, ends_at) values (1, 2, 'Tuesday', '03/16/2021', '0:00', '11:00');
insert into jobs_rota (staff_id, jobs_id, week_day, work_date, starts_at, ends_at) values (2, 1, 'Wednesday', '03/17/2021', '0:00', '11:00');
insert into jobs_rota (staff_id, jobs_id, week_day, work_date, starts_at, ends_at) values (2, 2, 'Thursday', '03/18/2021', '0:00', '11:00');
insert into jobs_rota (staff_id, jobs_id, week_day, work_date, starts_at, ends_at) values (1, 3, 'Friday', '03/19/2021', '0:00', '11:00');
insert into jobs_rota (staff_id, jobs_id, week_day, work_date, starts_at, ends_at) values (2, 3, 'Saturday', '03/20/2021', '0:00', '11:00');
insert into jobs_rota (staff_id, jobs_id, week_day, work_date, starts_at, ends_at) values (3, 1, 'Sunday', '03/21/2021', '0:00', '11:00');
insert into jobs_rota (staff_id, jobs_id, week_day, work_date, starts_at, ends_at) values (3, 2, 'Monday', '03/15/2021', '12:00', '23:00');
insert into jobs_rota (staff_id, jobs_id, week_day, work_date, starts_at, ends_at) values (4, 1, 'Tuesday', '03/16/2021', '12:00', '23:00');
insert into jobs_rota (staff_id, jobs_id, week_day, work_date, starts_at, ends_at) values (4, 2, 'Wednesday', '03/17/2021', '12:00', '23:00');
insert into jobs_rota (staff_id, jobs_id, week_day, work_date, starts_at, ends_at) values (3, 3, 'Thurday', '03/18/2021', '12:00', '23:00');


insert into vaccination (pet_id, vetDetails_id, vac_status, vac_date) values ('1', '1', '1', '05/12/2020');
insert into vaccination (pet_id, vetDetails_id, vac_status, vac_date) values ('2', '6', '1', '07/02/2020');
insert into vaccination (pet_id, vetDetails_id, vac_status, vac_date) values ('3', '4', '1', '05/12/2020');
insert into vaccination (pet_id, vetDetails_id, vac_status, vac_date) values ('4', '5', '1', '07/02/2020');
insert into vaccination (pet_id, vetDetails_id, vac_status, vac_date) values ('5', '2', '1', '05/12/2020');
insert into vaccination (pet_id, vetDetails_id, vac_status, vac_date) values ('6', '1', '1', '02/18/2020');
insert into vaccination (pet_id, vetDetails_id, vac_status, vac_date) values ('7', '6', '1', '09/25/2020');
insert into vaccination (pet_id, vetDetails_id, vac_status, vac_date) values ('8', '5', '1', '03/15/2020');
insert into vaccination (pet_id, vetDetails_id, vac_status, vac_date) values ('9', '3', '1', '03/15/2020');
insert into vaccination (pet_id, vetDetails_id, vac_status, vac_date) values ('10', '6', '1', '07/21/2020');
insert into vaccination (pet_id, vetDetails_id, vac_status, vac_date) values ('11', '2', '1', '07/21/2020');
insert into vaccination (pet_id, vetDetails_id, vac_status, vac_date) values ('12', '2', '1', '01/01/2020');
insert into vaccination (pet_id, vetDetails_id, vac_status, vac_date) values ('13', '6', '1', '11/12/2020');
insert into vaccination (pet_id, vetDetails_id, vac_status, vac_date) values ('14', '1', '1', '02/19/2020');
insert into vaccination (pet_id, vetDetails_id, vac_status, vac_date) values ('15', '5', '1', '12/26/2020');
insert into vaccination (pet_id, vetDetails_id, vac_status, vac_date) values ('16', '3', '1', '11/18/2020');


insert into flea_treatment (pet_id, fleaShot_status, flea_type, flea_date) values ('1', '1','Antrax', '04/12/2020');
insert into flea_treatment (pet_id, fleaShot_status, flea_type, flea_date) values ('2', '1','Fluya', '01/10/2020');
insert into flea_treatment (pet_id, fleaShot_status, flea_type, flea_date) values ('3', '1','Opln', '03/01/2020');
insert into flea_treatment (pet_id, fleaShot_status, flea_type, flea_date) values ('4', '1','Fluya', '12/17/2020');
insert into flea_treatment (pet_id, fleaShot_status, flea_type, flea_date) values ('5', '1','Unix', '11/10/2020');
insert into flea_treatment (pet_id, fleaShot_status, flea_type, flea_date) values ('6', '1','Randox', '04/06/2020');
insert into flea_treatment (pet_id, fleaShot_status, flea_type, flea_date) values ('7', '1','Antrax', '05/19/2020');
insert into flea_treatment (pet_id, fleaShot_status, flea_type, flea_date) values ('8', '1','Lontox', '11/12/2020');
insert into flea_treatment (pet_id, fleaShot_status, flea_type, flea_date) values ('9', '1','Lontox', '03/11/2020');
insert into flea_treatment (pet_id, fleaShot_status, flea_type, flea_date) values ('10', '1','Yonder', '08/01/2020');
insert into flea_treatment (pet_id, fleaShot_status, flea_type, flea_date) values ('11', '1','Yonder', '09/01/2020');
insert into flea_treatment (pet_id, fleaShot_status, flea_type, flea_date) values ('12', '1','Unix', '12/25/2020');
insert into flea_treatment (pet_id, fleaShot_status, flea_type, flea_date) values ('13', '1','Antiyola', '09/22/2020');
insert into flea_treatment (pet_id, fleaShot_status, flea_type, flea_date) values ('14', '1','Antiyola', '08/26/2020');
insert into flea_treatment (pet_id, fleaShot_status, flea_type, flea_date) values ('15', '1','Randox', '09/19/2020');
insert into flea_treatment (pet_id, fleaShot_status, flea_type, flea_date) values ('16', '1','Antrax', '07/20/2020');


insert into food (food_type) values ('Wellness Complete Health Dry Dog Food');
insert into food (food_type) values ('instinct Original Grain-Free Dry');
insert into food (food_type) values ('Natures Logic Dry Dog Food');
insert into food (food_type) values ('Blue Buffalo Life Protection Dry');
insert into food (food_type) values ('Canidae Grain-Free Pure Dry Dog Food');
insert into food (food_type) values ('Orijen Dry Dog Food');
insert into food (food_type) values ('Diamond Naturals Dry Kibble');
insert into food (food_type) values ('Nulo Freestyle Dry Dog Food');



insert into food_instructions(pet_id, food_id, times_feed) values ('1', '1', '2');
insert into food_instructions(pet_id, food_id, times_feed) values ('2', '2', '3');
insert into food_instructions(pet_id, food_id, times_feed) values ('3', '1', '2');
insert into food_instructions(pet_id, food_id, times_feed) values ('4', '8', '1');
insert into food_instructions(pet_id, food_id, times_feed) values ('5', '7', '2');
insert into food_instructions(pet_id, food_id, times_feed) values ('6', '5', '1');
insert into food_instructions(pet_id, food_id, times_feed) values ('7', '2', '2');
insert into food_instructions(pet_id, food_id, times_feed) values ('8', '7', '1');
insert into food_instructions(pet_id, food_id, times_feed) values ('9', '6', '2');
insert into food_instructions(pet_id, food_id, times_feed) values ('10', '3', '2');
insert into food_instructions(pet_id, food_id, times_feed) values ('11', '2', '3');
insert into food_instructions(pet_id, food_id, times_feed) values ('12', '8', '2');
insert into food_instructions(pet_id, food_id, times_feed) values ('13', '1', '1');
insert into food_instructions(pet_id, food_id, times_feed) values ('14', '4', '2');
insert into food_instructions(pet_id, food_id, times_feed) values ('15', '3', '2');
insert into food_instructions(pet_id, food_id, times_feed) values ('16', '5', '3');

Queries

/* It was noticed that pets given a particular kind of food (Nulo Freestyle Dry Dog Food) due to it being expired
 are having some symptoms. So find which pets take that food and exactly how much they have in their system and were to find them(pets).*/
 select food_instructions.times_feed, kennel.kennel_id, pet.pet_id, kennel.kennelType_id
 from food 
 join food_instructions on food.food_id = food_instructions.pet_id
 join pet on food_instructions.pet_id = pet.pet_id
 join kennel on pet.pet_id = kennel.pet_id
 where food_type = 'Nulo Freestyle Dry Dog Food';

 /* There was an emergency with some of the pets in Kennel 3 and 10, the customers contacts
 aren't reachable, we need to know who the vets assigned to each of the pets are, we need to know
 the contact details as well so we can let them know we are on our way and the company address as well.*/

 select CONCAT(vet_lname ,' ', vet_fname) as Name, vet_details.company_name, vet_details.vet_number, vet_details.vet_email, 
 kennel.pet_id, CONCAT(vet_postcode , ' ' , vet_town) as Address
 from vet_details
 join vaccination on vet_details.vetDetails_id = vaccination.vetDetails_id
 join pet on vaccination.pet_id = pet.pet_id
 join kennel on pet.pet_id = kennel.pet_id
 where kennel.kennel_id = 7;

/*A dog was found on the streets and identified by a stranger who contacted the
the customers, the customers are very upset and want to know the staff responsible
for this so do the company.*/

select booking_system.staff_id, CONCAT(staff_lname ,' ', staff_fname) as Name
from pet 
join booking_system on pet.pet_id = booking_system.pet_id
join staff on booking_system.staff_id = staff.staff_id
where pet.pet_id = 13;

/*The manager needs to know the staffs that were on duty on a particular
day and what jobs they did*/

select CONCAT(staff_lname,' ',staff_fname) as Name, jobs_rota.starts_at, jobs_rota.ends_at, jobs.job_title 
from pet
join booking_system on pet.pet_id = booking_system.pet_id
join staff on booking_system.staff_id = staff.staff_id
join jobs_rota on staff.staff_id = jobs_rota.staff_id
join jobs on jobs_rota.jobs_id = jobs.jobs_id
where jobs_rota.work_date = '03/18/2021';

