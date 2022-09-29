-- @block
DECLARE a number;
b number;
c number;
PROCEDURE findmin(x IN number, y IN number, z OUT number) IS BEGIN IF x < y THEN z := x;
ELSE z := y;
END IF;
END;
BEGIN a := 23;
b := 45;
findmin(a, b, c);
dbms_output.put_line('Minimum of (23,45) is: ' || c);
END;
/