SQL> SELECT
  2      TO_CHAR(ORDER_DATE, 'MM-YYYY') AS MONTH_YEAR,
  3      SUM(TOTAL_AMOUNT) AS TOTAL_REVENUE
  4  FROM
  5      Orders
  6  GROUP BY
  7      TO_CHAR(ORDER_DATE, 'MM-YYYY')
  8  ORDER BY
  9      TO_CHAR(ORDER_DATE, 'MM-YYYY');

MONTH_Y TOTAL_REVENUE                                                                                                                                                                                   
------- -------------                                                                                                                                                                                   
01-2023         76500                                                                                                                                                                                   
02-2023        240750                                                                                                                                                                                   
03-2023        180000                                                                                                                                                                                   
04-2023        127950                                                                                                                                                                                   
05-2023        490400                                                                                                                                                                                   
06-2023         70000                                                                                                                                                                                   
07-2023           200                                                                                                                                                                                   
08-2023        142413                                                                                                                                                                                   
10-2023        630000                                                                                                                                                                                   
12-2023         45000                                                                                                                                                                                   

10 rows selected.

SQL> sool off;
SP2-0042: unknown command "sool off" - rest of line ignored.
SQL> spool off;
