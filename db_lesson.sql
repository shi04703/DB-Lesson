DB_lesson 練習問題
Q1
CREATE DATABASE departments;
mysql> CREATE TABLE  departments (
    -> department_id INT(10) unsigned auto_increment PRIMARY KEY,
    -> name VARCHAR(20) NOT NULL ,
    -> created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    -> updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    -> );



Q2
ALTER TABLE people ADD department_id INT unsigned AFTER email;



Q３
・追加する部署一覧(departments)
営業
開発
経理
人事
情報システム

insert into departments (name)
    -> values
    -> ('営業');
insert into departments (name)
    -> VALUES
    -> ('開発');
insert into departments (name)
    -> VALUES
    -> ('経理'),
    -> ('人事'),
    -> ('情報システム');

・追加する人の条件(people)
10人分のレコードを追加する
人数比率は営業3人、開発4人、経理1人、人事1人、情報システム1人

INSERT INTO people (name, email, department_id, age, gender)
VALUES
    -> ('壱原侑子', 'ichihara@beyond-works.co.jp', 4, 20, 2),
    -> ('四月一日君尋', 'watanuki@beyond-works.co.jp', 2, 17, 1),
    -> ('百目鬼静', 'doumeki@beyond-works.co.jp', 1, 17, 1),
    -> ('九軒ひまわり', 'kunogi@beyond-works.co.jp', 2, 17, 2),
   -> ('五月七日小羽', 'tuyuri@beyond-works.co.jp', 1, 20, 2),
    -> ('獅堂光', 'sindo@beyond-works.co.jp', 1, 14, 2);
    -> ('龍咲海', 'ryuuzaki@beyond-works.co.jp', 2, 14, 2),
    -> ('鳳凰寺風', 'hououji@beyond-works.co.jp', 3, 14, 2),
    -> ('木之本桜', 'kinomoto@beyond-works.co.jp', 5, 20, 2),
    -> ('李小狼', 'ri@beyond-works.co.jp', 2, 20, 1);

・追加する日報の条件(reports)
10件の日報を追加する
日報は誰に紐付けてもいいが、存在しないperson_idとは紐付けない
日報の文字数は最低10文字で、同じ日報を作成しない

INSERT INTO reports (report_id, person_id, content)
VALUES
(12, 7, '2003年4月1日四月一日君尋雇用');
(13, 7, '2004年3月3日日百目鬼静雇用'),
(14, 7, '四月一日君尋配属先東京本社'),
(15, 7, '百目鬼静配属先東京本社'),
(16, 8, '2004年5月四月一日君尋日報01'),
(17, 9, '2004年5月百目鬼静日報01'),
(18, 6, '情報更新2025年5月31日'),
(19, 7, '2004年11月27日九軒ひまわり雇用'),
(20, 7, '九軒ひまわり配属先東京本社'),
(21, 10, '2004年12月九軒ひまわり日報01'),
(22, 7, '2010年5月7日五月七日小羽雇用');


Q４
mysql> select * from people;
+-----------+--------------------+------------------------------+---------------+------+--------+---------------------+---------------------+
| person_id | name               | email                        | department_id | age  | gender | created_at          | updated_at          |
+-----------+--------------------+------------------------------+---------------+------+--------+---------------------+---------------------+
|         1 | 田中ゆうこ         | tanaka@beyond-works.co.jp    |          NULL |   25 |      2 | 2025-04-19 12:31:36 | 2025-05-29 15:05:44 |
|         2 | 福田だいすけ       | fukuda@beyond-works.co.jp    |          NULL |   42 |      1 | 2025-04-19 12:31:36 | 2025-05-29 15:05:51 |
|         3 | 豊島はなこ         | toyoshima@beyond-works.co.jp |          NULL |   34 |      2 | 2025-04-19 12:31:36 | 2025-05-29 15:05:58 |
|         4 | 早坂てつお         | hayasaka@beyond-works.co.jp  |          NULL |   61 |      1 | 2025-04-19 12:31:36 | 2025-05-29 15:06:05 |
|         6 | 鈴木たかし         | suzuki@beyond-works.co.jp    |          NULL |   20 |      1 | 2025-04-19 12:41:40 | 2025-05-29 15:06:09 |
|         7 | 壱原侑子           | ichihara@beyond-works.co.jp  |             4 |   20 |      2 | 2025-05-29 13:54:46 | 2025-05-29 14:19:19 |
|         8 | 四月一日君尋       | watanuki@beyond-works.co.jp  |             2 |   17 |      1 | 2025-05-29 14:06:44 | 2025-05-29 14:06:44 |
|         9 | 百目鬼静           | doumeki@beyond-works.co.jp   |             1 |   17 |      1 | 2025-05-29 14:09:40 | 2025-05-29 14:09:40 |
|        10 | 九軒ひまわり       | kunogi@beyond-works.co.jp    |             2 |   17 |      2 | 2025-05-29 14:10:02 | 2025-05-29 14:10:02 |
|        11 | 五月七日小羽       | tuyuri@beyond-works.co.jp    |             2 |   20 |      1 | 2025-05-29 14:10:02 | 2025-05-29 14:10:02 |
|        12 | 獅堂光             | sindo@beyond-works.co.jp     |             1 |   14 |      2 | 2025-05-29 15:16:37 | 2025-05-29 15:16:37 |
|        13 | 鳳凰寺風           | hououji@beyond-works.co.jp   |             3 |   14 |      2 | 2025-05-29 15:18:08 | 2025-05-29 15:18:08 |
|        14 | 龍咲海             | ryuuzaki@beyond-works.co.jp  |             2 |   14 |      2 | 2025-05-29 15:18:08 | 2025-05-29 15:18:08 |
|        15 | 木之本桜           | kinomoto@beyond-works.co.jp  |             5 |   20 |      2 | 2025-05-29 15:18:08 | 2025-05-29 15:18:08 |
|        16 | 李小狼             | ri@beyond-works.co.jp        |             2 |   20 |      1 | 2025-05-29 15:18:08 | 2025-05-29 15:18:08 |
+-----------+--------------------+------------------------------+---------------+------+--------+---------------------+---------------------+
15 rows in set (0.00 sec)

UPDATE people SET department_id = 1 WHERE person_id = 1;
UPDATE people SET department_id = 2 WHERE person_id = 2;
UPDATE people SET department_id = 3 WHERE person_id = 3;
UPDATE people SET department_id = 1 WHERE person_id = 4;
UPDATE people SET department_id = 5 WHERE person_id = 6;
UPDATE people SET department_id = 4 WHERE person_id = 7;
OK



Q5
・年齢の降順で男性の名前と年齢を取得してください。

mysql> SELECT * FROM people 
    -> WHERE gender = 1
    -> ORDER BY age ASC;
+-----------+--------------------+-----------------------------+---------------+------+--------+---------------------+---------------------+
| person_id | name               | email                       | department_id | age  | gender | created_at          | updated_at          |
+-----------+--------------------+-----------------------------+---------------+------+--------+---------------------+---------------------+
|         8 | 四月一日君尋       | watanuki@beyond-works.co.jp |             2 |   17 |      1 | 2025-05-29 14:06:44 | 2025-05-29 14:06:44 |
|         9 | 百目鬼静           | doumeki@beyond-works.co.jp  |             1 |   17 |      1 | 2025-05-29 14:09:40 | 2025-05-29 14:09:40 |
|         6 | 鈴木たかし         | suzuki@beyond-works.co.jp   |             5 |   20 |      1 | 2025-04-19 12:41:40 | 2025-05-29 15:20:58 |
|        16 | 李小狼             | ri@beyond-works.co.jp       |             2 |   20 |      1 | 2025-05-29 15:18:08 | 2025-05-29 15:18:08 |
|         2 | 福田だいすけ       | fukuda@beyond-works.co.jp   |             2 |   42 |      1 | 2025-04-19 12:31:36 | 2025-05-29 15:20:36 |
|         4 | 早坂てつお         | hayasaka@beyond-works.co.jp |             1 |   61 |      1 | 2025-04-19 12:31:36 | 2025-05-29 15:20:51 |
+-----------+--------------------+-----------------------------+---------------+------+--------+---------------------+---------------------+



Q6
・テーブル・レコード・カラムという3つの単語を適切に使用して、下記のSQL文を日本語で説明してください。

SELECT
  `name`, `email`, `age`
FROM
  `people`
WHERE
  `department_id` = 1
ORDER BY
  `created_at`;

  peopleテーブルのレコードを営業部に所属している人物の氏名とメールアドレス、年齢のカラムを昇順で取得する



Q7
20代の女性と40代の男性の名前一覧を同時に取得してください。

mysql> SELECT * FROM people 
    -> WHERE gender = 1 AND age > 40 AND age <= 50
    -> OR gender = 2 AND age > 20 AND age <= 30;
+-----------+--------------------+---------------------------+---------------+------+--------+---------------------+---------------------+
| person_id | name               | email                     | department_id | age  | gender | created_at          | updated_at          |
+-----------+--------------------+---------------------------+---------------+------+--------+---------------------+---------------------+
|         1 | 田中ゆうこ         | tanaka@beyond-works.co.jp |             1 |   25 |      2 | 2025-04-19 12:31:36 | 2025-05-29 15:20:22 |
|         2 | 福田だいすけ       | fukuda@beyond-works.co.jp |             2 |   42 |      1 | 2025-04-19 12:31:36 | 2025-05-29 15:20:36 |
+-----------+--------------------+---------------------------+---------------+------+--------+---------------------+---------------------+
2 rows in set (0.01 sec)



Q8
営業部に所属する人だけを年齢の昇順で取得してください。
SELECT * FROM people 
WHERE department_id = 1 ORDER BY age ASC;

mysql> SELECT * FROM people 
    -> WHERE department_id = 1 ORDER BY age ASC;
+-----------+-----------------+-----------------------------+---------------+------+--------+---------------------+---------------------+
| person_id | name            | email                       | department_id | age  | gender | created_at          | updated_at          |
+-----------+-----------------+-----------------------------+---------------+------+--------+---------------------+---------------------+
|        12 | 獅堂光          | sindo@beyond-works.co.jp    |             1 |   14 |      2 | 2025-05-29 15:16:37 | 2025-05-29 15:16:37 |
|         9 | 百目鬼静        | doumeki@beyond-works.co.jp  |             1 |   17 |      1 | 2025-05-29 14:09:40 | 2025-05-29 14:09:40 |
|         1 | 田中ゆうこ      | tanaka@beyond-works.co.jp   |             1 |   25 |      2 | 2025-04-19 12:31:36 | 2025-05-29 15:20:22 |
|         4 | 早坂てつお      | hayasaka@beyond-works.co.jp |             1 |   61 |      1 | 2025-04-19 12:31:36 | 2025-05-29 15:20:51 |
+-----------+-----------------+-----------------------------+---------------+------+--------+---------------------+---------------------+
4 rows in set (0.00 sec)



Q9 開発部に所属している女性の平均年齢を取得してください。
mysql> SELECT AVG(age) AS average_age FROM people WHERE department_id = 2 AND gender = 2;
+-------------+
| average_age |
+-------------+
|     17.0000 |
+-------------+
1 row in set (0.00 sec)


Q10
名前と部署名とその人が提出した日報の内容を同時に取得してください。（日報を提出していない人は含めない）

・名前と部署名の追加
ALTER TABLE テーブル名 ADD (新規カラム名１ 型情報, 新規カラム名２ 型情報, ...);
mysql> ALTER TABLE reports 
    -> ADD (name varchar(20),department_id int unsigned );

 DESCRIBE reports;
+---------------+--------------+------+-----+-------------------+-----------------------------------------------+
| Field         | Type         | Null | Key | Default           | Extra                                         |
+---------------+--------------+------+-----+-------------------+-----------------------------------------------+
| report_id     | int unsigned | NO   | PRI | NULL              | auto_increment                                |
| person_id     | int unsigned | NO   |     | NULL              |                                               |
| content       | text         | NO   |     | NULL              |                                               |
| created_at    | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
| updated_at    | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
| name          | varchar(20)  | YES  |     | NULL              |                                               |
| department_id | int unsigned | YES  |     | NULL              |                                               |
+---------------+--------------+------+-----+-------------------+-----------------------------------------------+


mysql> SELECT p.department_id, p.name, r.content FROM people p JOIN reports r USING (person_id);
+---------------+--------------------+-------------------------------------------+
| department_id | name               | content                                   |
+---------------+--------------------+-------------------------------------------+
|             1 | 田中ゆうこ         | 田中ゆうこ練習01’                        |
|             1 | 田中ゆうこ         | 田中ゆうこ日報01’);                      |
|             1 | 早坂てつお         | 早坂てつお日報01’);                      |
|             1 | 早坂てつお         | 早坂てつお日報02’);                      |
|             2 | 福田だいすけ       | 福田だいすけ 日報01’);                   |
|             1 | 早坂てつお         | 早坂てつお日報03’),                      |
|             3 | 豊島はなこ         | 豊島はなこ 日報01’),                     |
|             1 | 田中ゆうこ         | 田中ゆうこ日報02’),                      |
|             1 | 田中ゆうこ         | 田中ゆうこ日報03’),                     |
|             1 | 早坂てつお         | 早坂てつお日報04’),　　　　　　　　　　　　　　|
|             4 | 壱原侑子           | 四月一日君尋雇用                          |
|             4 | 壱原侑子           | 2004年3月3日日百目鬼静雇用                |
|             4 | 壱原侑子           | 四月一日君尋配属先東京本社                |
|             4 | 壱原侑子           | 百目鬼静配属先東京本社                    |
|             2 | 四月一日君尋       | 2004年5月四月一日君尋日報01               |
|             1 | 百目鬼静           | 2004年5月百目鬼静日報01                   |
|             5 | 鈴木たかし         | 情報更新2025年5月31日                     |
|             4 | 壱原侑子           | 2004年11月27日九軒ひまわり雇用            |
|             4 | 壱原侑子           | 九軒ひまわり配属先東京本社                |
|             2 | 九軒ひまわり       | 2004年12月九軒ひまわり日報01              |
|             4 | 壱原侑子           | 2010年5月7日五月七日小羽雇用              |
+---------------+--------------------+-------------------------------------------+

Q11
日報を一つも提出していない人の名前一覧を取得してください。

mysql> SELECT p.department_id, p.name, r.content FROM people p LEFT OUTER JOIN reports r USING (person_id);
+---------------+--------------------+-------------------------------------------+
| department_id | name               | content                                   |
+---------------+--------------------+-------------------------------------------+
|             1 | 田中ゆうこ         | 田中ゆうこ日報03’),                      |
|             1 | 田中ゆうこ         | 田中ゆうこ日報02’),                      |
|             1 | 田中ゆうこ         | 田中ゆうこ日報01’);                      |
|             1 | 田中ゆうこ         | 田中ゆうこ練習01’                        |
|             2 | 福田だいすけ       | 福田だいすけ 日報01’);                   |
|             3 | 豊島はなこ         | 豊島はなこ 日報01’),                     |
|             1 | 早坂てつお         | 早坂てつお日報04’),                      |
|             1 | 早坂てつお         | 早坂てつお日報03’),                      |
|             1 | 早坂てつお         | 早坂てつお日報02’);                      |
|             1 | 早坂てつお         | 早坂てつお日報01’);                      |
|             5 | 鈴木たかし         | 情報更新2025年5月31日                     |
|             4 | 壱原侑子           | 2010年5月7日五月七日小羽雇用              |
|             4 | 壱原侑子           | 九軒ひまわり配属先東京本社                |
|             4 | 壱原侑子           | 2004年11月27日九軒ひまわり雇用            |
|             4 | 壱原侑子           | 百目鬼静配属先東京本社                    |
|             4 | 壱原侑子           | 四月一日君尋配属先東京本社                |
|             4 | 壱原侑子           | 2004年3月3日日百目鬼静雇用                |
|             4 | 壱原侑子           | 四月一日君尋雇用                          |
|             2 | 四月一日君尋       | 2004年5月四月一日君尋日報01               |
|             1 | 百目鬼静           | 2004年5月百目鬼静日報01                   |
|             2 | 九軒ひまわり       | 2004年12月九軒ひまわり日報01              |
|             2 | 五月七日小羽       | NULL                                      |
|             1 | 獅堂光             | NULL                                      |
|             3 | 鳳凰寺風           | NULL                                      |
|             2 | 龍咲海             | NULL                                      |
|             5 | 木之本桜           | NULL                                      |
|             2 | 李小狼             | NULL                                      |
+---------------+--------------------+-------------------------------------------+
SELECT * FROM reports WHERE content;


mysql>  SELECT p.name FROM people p LEFT OUTER JOIN reports r USING (person_id) where content is null;
+--------------------+
| name               |
+--------------------+
| 五月七日小羽       |
| 獅堂光             |
| 鳳凰寺風           |
| 龍咲海             |
| 木之本桜           |
| 李小狼             |
+--------------------+
6 rows in set (0.00 sec)

