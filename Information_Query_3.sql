SQL> SELECT c.CUSTOMER_ID, c.CUSTOMER_NAME, c.CUSTOMER_EMAIL, c.CUSTOMER_ADDRESS, c.CUSTOMER_CATEGORY_ID,
  2         o.ORDER_ID, o.ORDER_DATE, o.DISCOUNT, o.TOTAL_AMOUNT, o.PAYMENT_TYPE_ID
  3  FROM CUSTOMER c
  4  LEFT JOIN ORDERS o ON c.CUSTOMER_ID = o.CUSTOMER_ID
  5  ORDER BY c.CUSTOMER_ID, o.ORDER_DATE;

CUSTOMER_ID  CUSTOMER_NAME        CUSTOMER_EMAIL            CUSTOMER_ADDRESS          CUSTOMER CATEGORY_ID ORDER_ID             ORDER_DATE      DISCOUNT        TOTAL_AMOUNT PAYMENT_TYPE_ID            
------------ -------------------- ------------------------- ------------------------- -------------------- -------------------- --------------- --------------- ------------ ---------------            
CUS01        Prakash Subedi       prakash1@gmail.com        kumaripati,lalitpur       S                    ORD07                18-APR-23       5%                     42750 PAT01                      
CUS02        Raman Chaudhary      raman32@gmail.com         Jhapa                     R                    ORD05                20-MAR-23       0%                    180000 PAT02                      
CUS02        Raman Chaudhary      raman32@gmail.com         Jhapa                     R                    ORD12                22-JUL-23       0%                       200 PAT01                      
CUS03        Shretha Technologies shresthatech@gmail.com    Thamel,kathmandu          V                    ORD01                01-JAN-23       10%                    72000 PAT01                      
CUS03        Shretha Technologies shresthatech@gmail.com    Thamel,kathmandu          V                    ORD08                03-MAY-23       10%                    50400 PAT02                      
CUS04        Nishesh bhattarai    nishesh@gmail.com         kamalPokhari Kathmandu    R                    ORD06                07-APR-23       0%                     85200 PAT03                      
CUS04        Nishesh bhattarai    nishesh@gmail.com         kamalPokhari Kathmandu    R                    ORD15                18-AUG-23       0%                    140000 PAT02                      
CUS05        Sayunk Dhakal        Sayu123@gmail.com         Sinamangal, Kathmandu     R                    ORD17                20-DEC-23       0%                     40000 PAT03                      
CUS05        Sayunk Dhakal        Sayu123@gmail.com         Sinamangal, Kathmandu     R                    ORD18                29-DEC-23       0%                      5000 PAT03                      
CUS06        VT Tech Solutions    VTtechSolution@gmail.com  Sanobharyang              V                    ORD09                16-MAY-23       10%                   360000 PAT02                      
CUS06        VT Tech Solutions    VTtechSolution@gmail.com  Sanobharyang              V                    ORD16                19-OCT-23       10%                   630000 PAT02                      
CUS07        Binaya Kharel        khrelbhai@gmail.com       patan, mangalbazar        S                    ORD04                26-FEB-23       5%                     80750 PAT02                      
CUS07        Binaya Kharel        khrelbhai@gmail.com       patan, mangalbazar        S                    ORD13                01-AUG-23       5%                      1900 PAT01                      
CUS07        Binaya Kharel        khrelbhai@gmail.com       patan, mangalbazar        S                    ORD14                09-AUG-23       5%                       513 PAT01                      
CUS08        Pritesh Lamichhane   pritesh@gmail.com         Swoyambhu                 S                                                                                                                 
CUS09        Ram bhandari         ram@gmail.com             Bhaktapur                 R                    ORD03                10-FEB-23       0%                    160000 PAT01                      
CUS09        Ram bhandari         ram@gmail.com             Bhaktapur                 R                    ORD11                11-JUN-23       0%                     70000 PAT02                      
CUS10        Abhinav Adhikari     ram@gmail.com             Jawalakhel, pulchowk      R                    ORD02                24-JAN-23       0%                      4500 PAT03                      
CUS10        Abhinav Adhikari     ram@gmail.com             Jawalakhel, pulchowk      R                    ORD10                28-MAY-23       0%                     80000 PAT01                      

19 rows selected.

SQL> spool off;
