SQL> SELECT C.*
  2  FROM Customer C
  3  JOIN (
  4      SELECT CUSTOMER_ID, MAX(ORDER_DATE) AS RECENT_ORDER_DATE
  5      FROM Orders
  6      GROUP BY CUSTOMER_ID
  7  ) O ON C.CUSTOMER_ID = O.CUSTOMER_ID
  8  ORDER BY RECENT_ORDER_DATE DESC;

CUSTOMER_ID  CUSTOMER_NAME        CUSTOMER_EMAIL            CUSTOMER_ADDRESS          CUSTOMER CATEGORY_ID                                                                                              
------------ -------------------- ------------------------- ------------------------- --------------------                                                                                              
CUS05        Sayunk Dhakal        Sayu123@gmail.com         Sinamangal, Kathmandu     R                                                                                                                 
CUS06        VT Tech Solutions    VTtechSolution@gmail.com  Sanobharyang              V                                                                                                                 
CUS04        Nishesh bhattarai    nishesh@gmail.com         kamalPokhari Kathmandu    R                                                                                                                 
CUS07        Binaya Kharel        khrelbhai@gmail.com       patan, mangalbazar        S                                                                                                                 
CUS02        Raman Chaudhary      raman32@gmail.com         Jhapa                     R                                                                                                                 
CUS09        Ram bhandari         ram@gmail.com             Bhaktapur                 R                                                                                                                 
CUS10        Abhinav Adhikari     ram@gmail.com             Jawalakhel, pulchowk      R                                                                                                                 
CUS03        Shretha Technologies shresthatech@gmail.com    Thamel,kathmandu          V                                                                                                                 
CUS01        Prakash Subedi       prakash1@gmail.com        kumaripati,lalitpur       S                                                                                                                 

9 rows selected.

SQL> spool off;
