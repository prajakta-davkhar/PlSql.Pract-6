DECLARE
CURSOR price_cursor(p_min_price NUMBER) is select pid, pname, price from products where price > p_min_price;

v_id    products.pid%TYPE;
v_name  products.pname%TYPE;
v_price products.price%TYPE;

BEGIN
OPEN price_cursor(12000);
LOOP
FETCH price_cursor INTO v_id, v_name, v_price;
EXIT WHEN price_cursor%NOTFOUND;

DBMS_OUTPUT.PUT_LINE('ID: ' || v_id || ', Name: ' || v_name || ', Price: ' || v_price);
END LOOP;
CLOSE price_cursor;
END;
/