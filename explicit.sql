DECLARE
CURSOR prod_cursor is select pid, pname, price from products;

v_id    products.pid%TYPE;
v_name  products.pname%TYPE;
v_price products.price%TYPE;
BEGIN
OPEN prod_cursor;
LOOP
FETCH prod_cursor into v_id, v_name, v_price;
EXIT when prod_cursor%NOTFOUND;
DBMS_OUTPUT.PUT_LINE('ID: ' || v_id || ', Name: ' || v_name || ', Price: ' || v_price);
END LOOP;
CLOSE prod_cursor;
END;
/