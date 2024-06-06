SQL> SELECT *
  2  FROM (
  3      SELECT P.PRODUCT_ID, P.PRODUCT_NAME, P.DESCRIPTION, P.RATE, P.STOCK_QUANTITY, P.AVAILABILITY, P.VENDOR_ID, P.PRODUCT_CATEGORY_ID,
  4      COUNT(O.ORDER_ID) AS ORDER_COUNT
  5      FROM PRODUCT P
  6      JOIN ORDER_PRODUCT OP ON P.PRODUCT_ID = OP.PRODUCT_ID
  7      JOIN ORDERS O ON OP.ORDER_ID = O.ORDER_ID
  8      GROUP BY P.PRODUCT_ID, P.PRODUCT_NAME, P.DESCRIPTION, P.RATE, P.STOCK_QUANTITY, P.AVAILABILITY, P.VENDOR_ID, P.PRODUCT_CATEGORY_ID
  9      ORDER BY ORDER_COUNT DESC
 10  )
 11  WHERE ROWNUM <= 3;

PRODUCT_ID   PRODUCT_NAME     DESCRIPTION                                              RATE STOCK_QUANTITY AVAILABILITY     VENDOR_ID            PRODUCT_CATEGORY_ID       ORDER_COUNT                  
------------ ---------------- -------------------------------------------------- ---------- -------------- ---------------- -------------------- ------------------------- -----------                  
PR13         JBL Bluebeats    It is a compact bluetooth speaker                        5000             22 Available        VE08                 PG07                                3                  
PR08         Samsung 65       The samsung 65 is and 65 inch Oled releaded 2023        80000             60 Available        VE03                 PG03                                3                  
PR01         Acer N5          This laptop was released in 2023 and has intel I9       80000             50 Available        VE01                 PG01                                2                  

3 rows selected.

SQL> SPOOL OFF;
