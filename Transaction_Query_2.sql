SQL> SELECT * FROM Orders WHERE TOTAL_AMOUNT >= (SELECT AVG(TOTAL_AMOUNT) FROM Orders);

ORDER_ID             ORDER_DATE      DISCOUNT        TOTAL_AMOUNT CUSTOMER_ID  PAYMENT_TYPE_ID                                                                                                          
-------------------- --------------- --------------- ------------ ------------ ---------------                                                                                                          
ORD03                10-FEB-23       0%                    160000 CUS09        PAT01                                                                                                                    
ORD05                20-MAR-23       0%                    180000 CUS02        PAT02                                                                                                                    
ORD09                16-MAY-23       10%                   360000 CUS06        PAT02                                                                                                                    
ORD15                18-AUG-23       0%                    140000 CUS04        PAT02                                                                                                                    
ORD16                19-OCT-23       10%                   630000 CUS06        PAT02                                                                                                                    

5 rows selected.

SQL> spool off;
