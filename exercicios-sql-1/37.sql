USE psdb; 

SELECT * FROM psdb.employees as emp WHERE emp.emp_no in (494831,479832,599833,499832) and emp.gender in ("M","F") limit 10;


