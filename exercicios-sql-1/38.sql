USE psdb; 
SELECT emp_no,first_name FROM psdb.employees as emp WHERE emp.emp_no (494831,479832,599833,499832) and emp.gender in ("M","F") limit 10;
# falta el alias de Numero y Nome que aun no me dio

