PROGRAM controlflow
    customers = '100004,100005,100013,100027,100021'
    CHANGE ',' TO @FM IN customers

    num_rec = DCOUNT(customers, @FM)

    FOR i = 1 TO num_rec
        cus_id = customers<i>  
        CALL HB.CUS.DETAILS(cus_id, cus_name, cus_residence)
        IF cus_residence EQ 'MZ' THEN
            CRT cus_name : 'is resident of mozambique'
        END
        ELSE
            CRT cus_id :'-': cus_name :'(': cus_residence :')'
        END
    NEXT i
END

PROGRAM controlflow
    customers = '100004,100005,100013,100027,100021'
    CHANGE ',' TO @FM IN customers

    LOOP
        REMOVE cus_id FROM customer SETTING pos
    WHILE cus_id : pos
        CALL HB.CUS.DETAILS(cus_id, cus_name, cus_residence)

        BEGIN CASE
        CASE cus_residence EQ 'MZ'
            CRT cus_id :'-': cus_name : 'is resident of mozambique'
        CASE cus_resident NE 'MZ'
            CRT cus_id :'-': cus_name :'(': cus_residence :')'
        END CASE
    REPEAT
END
