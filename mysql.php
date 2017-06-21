<html>
    <head>
        <title>My SQL</title>
    </head>
    <body style="margin-left:20px;">
        <h3>Explain Database Structure</h3>
        <hr/>
        <h3>Explain Key / Datatype</h3>
        <hr/>
        <h3>Primary Key / Unique Key</h3>
        <p>one table one primary key and multiple unique key</p>
        <hr/>
        <h3>Create Database</h3>
        <p>create database databaseName</p>
        <hr/>
        <h3>Create table</h3>
        <p>
        <pre>
    CREATE TABLE `user_details` (
      `user_id` int(11) NOT NULL AUTO_INCREMENT,
      `user_name` varchar(2000) DEFAULT NULL,
      `user_email` varchar(2000) DEFAULT NULL,
      `user_number` varchar(2000) DEFAULT NULL,
      `user_dob` date DEFAULT NULL,
      `gender` varchar(2000) DEFAULT NULL,
      `address` text,
      `ip` varchar(100) DEFAULT NULL,
      `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
      PRIMARY KEY (`user_id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
        </pre>
    </p>
    <hr/>
    <h3>Drop TABLE</h3>
    <p>DROP TABLE  `user_details1`;</p>
    <hr/>
    <h3>Insert Data</h3>
    <p>insert  into `user_details`(`user_id`,`user_name`,`user_email`,`user_number`,`user_dob`,`gender`,`address`,`ip`,`upload_date`) values (1,'Rajesh','rajeshpalande77@gmail.com','9221460041','1988-12-07','Male','test',NULL,'2015-08-26 13:16:11');</p>
    <hr/>
    <h3>Show all data</h3>
    <p>select * from user_details</p>
    <hr/>
    <h3>Show any key data</h3>
    <p>select user_name from user_details</p>
    <p>select user_name,user_email from user_details</p>
    <hr/>
    <h3>Fetch One data</h3>
    <p>select * from user_details where user_id = '1'</p>
    <hr/>
    <h3>Delete one record</h3>
    <p>delete from user_details where user_id= '3'</p>
    <hr/>
    <h3>Update record</h3>
    <p>update user_details set user_name = "Ramesh" where user_id = '2'</p>
    <hr/>
    <h3>Count</h3>
    <p>select count(*) from user_details</p>
    <p>select count(*) from user_details where user_name = 'Rajesh'</p>
    <hr/>
    <h3>Max</h3>
    <p>select max(*) from user_details</p>
    <hr/>
    <h3>Min</h3>
    <p>select min(*) from user_details</p>
    <hr/>
    <h3>Join</h3>
    <p>u ,e is object</p>
    <p>SELECT e.emp_name, u.user_name FROM emp_details AS e  JOIN user_details AS u ON e.emp_id = u.user_id</p>
    <hr/>
    <h3>Unique</h3>
    <p>select DISTINCT user_email from user_details</p>
    <hr/>
    <h3>Ascending Order</h3>
    <p>select * from user_details order by user_name asc</p>
    <hr/>
    <h3>Descending Order</h3>
    <p>select * from user_details order by user_name desc</p>
    <hr/>
    <h3>LIMIT</h3>
    <p>select * from user_details  limit 1</p>
    <hr/>
    <h3>order + limit</h3>
    <p>select * from user_details order by user_name desc limit 1</p>
    <hr/>
    <h3>Like (last word to search)</h3>
    <p>select * from user_details where user_name like '%esh'</p>
    <hr/>
    <h3>Like (first word to search)</h3>
    <p>select * from user_details where user_name like 'raj%'</p>
    <hr/>
    <h3>Like (search any where)</h3>
    <p>select * from user_details where user_name like '%ra%'</p>
    <hr/>
    <h3>Group By</h3>
    <p>SELECT emp_name, Max(age) FROM emp_details GROUP BY emp_name</p>
    <hr/>
    <h3>Alter (Add Columns)</h3>
    <p>ALTER TABLE emp_details ADD DateOfBirth date</p>
    <hr/>
    <h3>Alter (Delete Columns)</h3>
    <p>ALTER TABLE emp_details DROP COLUMN DateOfBirth</p>
    <hr/>
    <h3>Alter (Table Name)</h3>
    <p>ALTER TABLE TableOldName RENAME TableNewName</p>
    <hr/>
</body>
</html>