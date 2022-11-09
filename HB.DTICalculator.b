    PROGRAM HB.DTICalculator
    CRT @(-1)
    PROMPT "Enter your gross monthly income: "
    INPUT gross_monthly_income
    PROMPT "Enter yout total monthlu debts pauyments: "
    INPUT total_monthly_debt_pyt

    dti = total_monthly_debt_pyt / gross_monthly_income
    CRT "Your DTI ratio is: ": dti * 100:"%"

    standard_dti = 0.36
*LE means Less than or equal
    IF  dti LE standard_dti THEN
        CRT "You are eligible for a loan as long as your "
        CRT "total monthly payments dont exceed ": gross_monthly_income * standard_dti
    END ELSE
        CRT "You have reached your maximum borrowing capacity"
END
