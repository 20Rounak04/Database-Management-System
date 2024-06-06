SQL> SELECT o.ORDER_ID, o.ORDER_DATE, o.DISCOUNT, o.TOTAL_AMOUNT, o.CUSTOMER_ID, o.PAYMENT_TYPE_ID
  2  FROM ORDERS o
  3  JOIN ORDER_PRODUCT op ON o.ORDER_ID = op.ORDER_ID
  4  WHERE o.ORDER_DATE BETWEEN TO_DATE('01-05-2023', 'DD-MM-YYYY') AND TO_DATE('28-05-2023', 'DD-MM-YYYY')
  5  AND op.PRODUCT_ID = 'PR08';

ORDER_ID             ORDER_DATE      DISCOUNT        TOTAL_AMOUNT CUSTOMER_ID  PAYMENT_TYPE_ID                                                                                                          
-------------------- --------------- --------------- ------------ ------------ ---------------                                                                                                          
ORD09                16-MAY-23       10%                   360000 CUS06        PAT02                                                                                                                    
ORD10                28-MAY-23       0%                     80000 CUS10        PAT01                                                                                                                    

2 rows selected.

SQL> spool off;
