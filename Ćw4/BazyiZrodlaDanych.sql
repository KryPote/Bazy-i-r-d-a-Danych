declare 
    cursor Seven is select 'SALARY', 'LAST_NAME' from EMPLOYEES where DEPARTMENT_ID = 50;
    
begin
for cursor_row in Seven
    loop
        if cursor_row.SALARY > 3100 
	then
            dbms_output.put_line(cursor_row.LAST_NAME || ' nie dawaæ podwy¿ki');
        else
            dbms_output.put_line(cursor_row.LAST_NAME ||' daæ podwy¿kê');
        end if;
    end loop;
close Seven;
end;