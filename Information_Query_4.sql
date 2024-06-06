SQL> SELECT *
  2  FROM Product
  3  WHERE SUBSTR(PRODUCT_NAME, 2, 1) = 'a' AND STOCK_QUANTITY > 50;

PRODUCT_ID   PRODUCT_NAME     DESCRIPTION                                              RATE STOCK_QUANTITY AVAILABILITY     VENDOR_ID            PRODUCT_CATEGORY_ID                                    
------------ ---------------- -------------------------------------------------- ---------- -------------- ---------------- -------------------- -------------------------                              
PR06         Samsung A26      This Phone released in 2024 has 128 GB storage          95000             65 Available        VE02                 PG02                                                   
PR08         Samsung 65       The samsung 65 is and 65 inch Oled releaded 2023        80000             60 Available        VE03                 PG03                                                   
PR09         Samsung 50       The Samsung 50 is 50 inch tv releaded 2022              70000             77 Available        VE03                 PG03                                                   
PR10         Canon m5         The canon m5 is a camera that has AI retouch           160000             51 Available        VE06                 PG04                                                   

4 rows selected.

SQL> spool off;
