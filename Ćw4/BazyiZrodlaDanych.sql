declare 
    cursor Seven is select 'SALARY', 'LAST_NAME' from EMPLOYEES where DEPARTMENT_ID = 50;
    
begin
for cursor_row in Seven
    loop
        if cursor_row.SALARY > 3100 
	then
            dbms_output.put_line(cursor_row.LAST_NAME || ' nie dawa� podwy�ki');
        else
            dbms_output.put_line(cursor_row.LAST_NAME ||' da� podwy�k�');
        end if;
    end loop;
close Seven;
end;