    PROGRAM HB.MortgageCalculator_
    CRT @(-1)

    PROMPT "Enter the loan amount MZN: "
    INPUT loan_amount
    PROMPT "Enter the annual interest rate: "
    INPUT int_rate
    PROMPT "Enter the number of years"
    INPUT num_years

    num_months_year = 12
    percent = 100

    PRECISION 7
    rate = int_rate / num_months_year / percent
    CRT "Monthly rate is ": rate
    num_months = num_months_year * 12
    p = loan_amount

    M = p * (rate * (1 + rate) ** num_months)/ ((1 + rate) ** num_months - 1)
    CRT "Your total monthly mortgage payment id  MZN ": DROUND(M, 0)

END
