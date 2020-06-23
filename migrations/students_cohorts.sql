CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  phone VARCHAR(32),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);

COHORTS
 id | name  | start_date |  end_date  
----+-------+------------+------------
  1 | FEB12 | 2018-02-12 | 2018-04-20
  2 | MAR12 | 2018-03-12 | 2018-05-18
STUDENTS
id  |           name           |               email               |    phone     |     github     | start_date |  end_date  | cohort_id 
-----+--------------------------+-----------------------------------+--------------+----------------+------------+------------+-----------
   1 | Armand Hilll             | lera_hahn@dickens.org             | 778-349-3299 | aspernatur     | 2018-02-12 | 2018-04-20 |         1
   2 | Stephanie Wolff          | darius.homenick@tod.ca            | 778-125-2216 | rem            | 2018-02-12 | 2018-04-20 |         1
   3 | Stan Miller              | mcdermott.maxie@schoen.com        | 086-503-5484 | qui            | 2018-02-12 | 2018-04-20 |         1
   4 | Elliot Dickinson         | derrick_pollich@gmail.com         | 778-848-9923 | dolore         | 2018-02-12 | 2018-04-20 |         1
   5 | Lloyd Boehm              | ebba.deckow@yahoo.com             | 860-831-0563 | necessitatibus | 2018-02-12 | 2018-04-20 |         1
   6 | Erna Cassin              | miguel.barrows@yahoo.com          | 604-094-6464 | reprehenderit  | 2018-02-12 | 2018-04-20 |         1
   7 | Edison Brown             | alysha.daniel@boyer.tv            | 070-187-6147 | qui            | 2018-02-12 | 2018-04-20 |         1
   8 | Lionel Morar             | bradtke.mallie@yahoo.com          | 064-902-7188 | soluta         | 2018-02-12 | 2018-04-20 |         1
   9 | Donnie Lueilwitz         | kattie_dibbert@winnifred.name     | 604-539-8552 | sint           | 2018-02-12 | 2018-04-20 |         1
  10 | Obie Howell              | elisha_wisoky@gmail.com           | 434-299-9511 | nesciunt       | 2018-02-12 | 2018-04-20 |         1  11 | Hiram Veum               | kristopher.shanahan@gmail.com     | 778-534-4891 | eos            | 2018-02-12 | 2018-04-20 |         1
  12 | Lynn Kilback             | gaetano_cummerata@hotmail.com     | 778-538-9031 | officia        | 2018-02-12 | 2018-04-20 |         1  13 | Brian Jones              | percy_ratke@cornelius.biz         | 099-380-3924 | consectetur    | 2018-02-12 | 2018-04-20 |         1
  14 | Clint Cremin             | everardo_kovacek@joshuah.net      | 979-918-2964 | laborum        | 2018-02-12 | 2018-04-20 |         1  15 | Maximillia Willms        | destin_berge@toy.com              | 017-222-2210 | pariatur       | 2018-02-12 | 2018-04-20 |         1
  16 | Carmel Grant             | marcelino_durgan@hotmail.com      | 778-971-9498 | sed            | 2018-02-12 | 2018-04-20 |         1  17 | Colten Gutkowski         | rollin_okuneva@jerde.org          | 922-101-5370 | saepe          | 2018-02-12 | 2018-04-20 |         1
  18 | Pamela Runolfsson        | david.ziemann@germaine.org        | 041-010-2735 | non            | 2018-02-12 | 2018-04-20 |         1  19 | Magdalena Rau            | nedra.parisian@yahoo.com          | 352-268-5458 | quae           | 2018-03-12 | 2018-05-18 |         2
  20 | Sally Bayer              | kuhic.opal@wuckert.tv             | 604-128-5103 | in             | 2018-03-12 | 2018-05-18 |         2
  21 | Sadie Sanford            | gutmann_deondre@yahoo.com         | 525-030-8297 | odit           | 2018-03-12 | 2018-05-18 |         2
  22 | Dax Schimmel             | johnson_lenora@yahoo.com          | 506-094-6011 | ut             | 2018-03-12 | 2018-05-18 |         2
  23 | Janie Kihn               | desmond_wehner@yahoo.com          | 604-480-2752 | porro          | 2018-03-12 | 2018-05-18 |         2
  24 | Giovanny Bradtke         | leatha.lindgren@hotmail.com       | 220-013-6113 | est            | 2018-03-12 | 2018-05-18 |         2
  25 | Kassandra Beahan         | carter_jaskolski@yahoo.com        | 303-462-1718 | magni          | 2018-03-12 | 2018-05-18 |         2
  26 | Emmy Effertz             | damien_bruen@yahoo.com            | 846-029-5450 | reprehenderit  | 2018-03-12 | 2018-05-18 |         2
  27 | Baylee Lueilwitz         | pinkie.rogahn@yahoo.com           | 778-988-9555 | et             | 2018-03-12 | 2018-05-18 |         2
  28 | Ellis Hickle             | legros.judy@corrine.us            | 604-326-8112 | et             | 2018-03-12 | 2018-05-18 |         2
  29 | Wanda Mante              | felton.muller@grant.biz           | 778-485-5442 | consequuntur   | 2018-03-12 | 2018-05-18 |         2
  30 | Okey Jaskolski           | mcdermott.jack@yahoo.com          | 497-117-7849 | dolor          | 2018-03-12 | 2018-06-15 |         3
  31 | Gene Carter              | javonte_sauer@gregg.com           | 778-713-0186 | ut             | 2018-04-09 | 2018-06-15 |         3
  32 | Mabel Wunsch             | marina.windler@rachael.io         | 414-602-8472 | et             | 2018-04-09 | 2018-06-15 |         3
  33 | Adela Johns              | pouros_dario@hotmail.com          | 778-893-2531 | fuga           | 2018-04-09 | 2018-06-15 |         3
  34 | Noel Kling               | emelia_hane@yahoo.com             | 778-163-5465 | nostrum        | 2018-04-09 | 2018-06-15 |         3
  35 | Della Dibbert            | bailey_elinore@jeffrey.name       | 922-638-5580 | beatae         | 2018-04-09 | 2018-06-15 |         3
  36 | Camilla Feest            | dubuque_gregorio@hotmail.com      | 604-835-4964 | quasi          | 2018-04-09 | 2018-06-15 |         3
  37 | Johan Halvorson          | emmy.hilpert@walsh.name           | 778-921-8885 | voluptates     | 2018-04-09 | 2018-06-15 |         3
  38 | Ashly Koch               | franecki.myah@shayne.net          | 035-504-5865 | voluptas       | 2018-04-09 | 2018-06-15 |         3
  39 | Bianka Spinka            | jensen.ullrich@hotmail.com        | 778-087-7494 | laudantium     | 2018-04-09 | 2018-06-15 |         3
  40 | Dewitt Sipes             | hildegard.gaylord@hotmail.com     | 561-854-5417 | quia           | 2018-04-09 | 2018-06-15 |         3
  41 | Benedict Berge           | ortiz.turner@hotmail.com          | 778-023-9682 | quo            | 2018-04-09 | 2018-06-15 |         3
  42 | Anissa Harris            | maye_wyman@gmail.com              | 604-888-2097 | et             | 2018-04-09 | 2018-06-15 |         3
  43 | Milford Homenick         | boyer.raymundo@yahoo.com          | 063-164-7353 | ut             | 2018-04-09 | 2018-06-15 |         3
  44 | Randall Moen             | eichmann_roscoe@mattie.com        | 212-815-7253 | dolorem        | 2018-04-09 | 2018-06-15 |         3
  45 | Jillian Sawayn           | gaetano_howell@yahoo.com          | 341-332-8341 | et             | 2018-04-09 | 2018-06-15 |         3
  46 | Werner Dietrich          | sterling.morissette@yahoo.com     | 879-729-5901 | voluptatem     | 2018-04-09 | 2018-06-15 |         3
  47 | Arnoldo Greenfelder      | nelson_swaniawski@hotmail.com     | 778-760-8346 | ut             | 2018-04-09 | 2018-06-15 |         3
  48 | Owen Wuckert             | annabelle.baumbach@gmail.com      | 063-943-6282 | tenetur        | 2018-04-09 | 2018-06-15 |         3
  49 | Jordy Bruen              | chet_mcdermott@gmail.com          | 778-785-7647 | voluptatem     | 2018-05-07 | 2018-07-13 |         4
  50 | Waino Jerde              | trudie_marvin@prosacco.biz        | 516-746-3673 | quo            | 2018-05-07 | 2018-07-13 |         4
  51 | Vernice Gerlach          | jamel_renner@erdman.biz           | 888-314-9438 | in             | 2018-05-07 | 2018-07-13 |         4
  52 | Vivien Mosciski          | kirstin_kemmer@feeney.info        | 604-274-1491 | eaque          | 2018-05-07 | 2018-07-13 |         4
  53 | Lucienne Shanahan        | jaquan_bechtelar@maximillian.info | 420-664-6080 | aliquid        | 2018-05-07 | 2018-07-13 |         4
  54 | Keenan Harvey            | ward.benton@senger.info           | 394-017-2792 | nemo           | 2018-05-07 | 2018-07-13 |         4
  55 | Wilma Konopelski         | leuschke.mervin@gmail.com         | 952-866-4011 | cum            | 2018-05-07 | 2018-07-13 |         4
:
