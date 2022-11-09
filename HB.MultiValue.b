    PROGRAM HB.MultiValue
    CRT @(-1)
    PRINT "Enter the customer ID: "
    INPUT cust_id

    CRT "You entered the customer id ": cust_id
    CALL HB.RCust(cust_id, employment_status, occupation, employers_name, employers_addr)
    CRT "Customer ID........ ": employment_status
    CRT "Ocupation.......... ": FMT(occupation, 'MCp')
    CRT "Employers name..... ": FMT(employers_name, 'MCp')
    CRT "Employers address.. ": FMT(employers_addr, 'MCp')

END
