CREATE VIEW CZTERY AS SELECT FIRST_NAME, LAST_NAME, round(months_between(current_date, HIRE_DATE)) "LICZBA_MIESIECY",
    case 
    when round(months_between(current_date, HIRE_DATE)) <= 149 THEN SALARY * 0.1
    when round(months_between(current_date, HIRE_DATE)) between 150 and 200 THEN SALARY * 0.2
    when round(months_between(current_date, HIRE_DATE)) >= 200 THEN SALARY * 0.3
    else 0 end as WYSOKOSC_DODATKU
    from EMPLOYEES
    order by "LICZBA_MIESIECY";