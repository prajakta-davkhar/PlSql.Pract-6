BEGIN
insert into products (pid, pname, price) values (104, 'phone', 20000.00);

DBMS_OUTPUT.PUT_LINE('Rows inserted: ' || SQL%ROWCOUNT);
END;
/