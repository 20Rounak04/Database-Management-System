SQL> SELECT * FROM Customer WHERE Customer_Category_ID = 's';

no rows selected

SQL> SELECT * FROM Customer WHERE Customer_Category_ID = 'S';

CUSTOMER_ID  CUSTOMER_NAME        CUSTOMER_EMAIL            CUSTOMER_ADDRESS          CUSTOMER CATEGORY_ID                                                                                              
------------ -------------------- ------------------------- ------------------------- --------------------                                                                                              
CUS01        Prakash Subedi       prakash1@gmail.com        kumaripati,lalitpur       S                                                                                                                 
CUS07        Binaya Kharel        khrelbhai@gmail.com       patan, mangalbazar        S                                                                                                                 
CUS08        Pritesh Lamichhane   pritesh@gmail.com         Swoyambhu                 S                                                                                                                 

3 rows selected.

SQL> spool off;
