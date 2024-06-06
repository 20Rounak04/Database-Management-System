SQL> SELECT V.VENDOR_ID, V.VENDOR_NAME, COUNT(P.PRODUCT_ID) AS PRODUCTS_SUPPLIED
  2  FROM VENDOR V
  3  JOIN PRODUCT P ON V.VENDOR_ID = P.VENDOR_ID
  4  GROUP BY V.VENDOR_ID, V.VENDOR_NAME
  5  HAVING COUNT(P.PRODUCT_ID) > 3;

VENDOR_ID            VENDOR_NAME                                        PRODUCTS_SUPPLIED                                                                                                               
-------------------- -------------------------------------------------- -----------------                                                                                                               
VE07                 Binod Dhakal                                                       4                                                                                                               
VE01                 Abhinav Baral                                                      4                                                                                                               

2 rows selected.

SQL> spool off;
