    PROGRAM Arrays
    name = "Henk Beula"
    company = "cpc"
    address = \Matola-rio, Mozal, Djuba, 123\
    
    employee = name:@FM:address:@FM:35:@FM:"CPC":@VM:5428.43:@FM:"CPC corp":@VM:452.45
    CRT@(-1)
    PRINT FMT(employee, 'MCP')
    CRT "Address ": employee<2>
    CRT "company: ": employee<4,1>
    CRT "Salary: MT ": employee<4,2>
    CRT "Company2: ": employee<5,1>
    CRT "Salary2: ": employee<5,2>

    loan_request = '001*Henk*USD*2500032010*340*0.031'
    CONVERT '*' TO @FM IN loan_request
    CRT FMT(loan_request, 'MCP')
    req_id = loan_request<1>
    cust_name = loan_request<2>
    curr = loan_request<3>
    amount = loan_request<4>
    terms = loan_request<5>
    int_rate = loan_request<6>

    PRINT cust_name : " request ": curr :" ": amount : " on ": int_rate * 100 :"%": " for ": terms / 12 :" years."
END
