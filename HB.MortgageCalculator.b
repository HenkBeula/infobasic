    PROGRAM HB.MortgageCalculator
*-------------------------------------------------------------------------------
* Program to calculate the total of mothly mortage payment:
* M = P [(r(1*r)^n) / ( ((1+r)^n) - 1)]
*        Where:
*           M = total monthly mortgage payment
*           P = principal loan amount
*           r = monthly interest rate
*           n = number of payments
*------------------------------------------------------------------------------
* Author: Henk Beula (henkbeula@outlook.com | henk.beula@cpc.co.mz)
* Date  : 12 / 11 / 2021
*-------------------------------------------------------------------------------
    CRT @(-1)
    CRT "Welcome to another amazing tutorial"

    PROMPT "Enter the loan amount MZN: "
    INPUT loan_amount
    PROMPT "Enter the anual interest rate: "
    INPUT int_rate
    PROMPT "Enter the loan period (in years): "
    INPUT num_years
    
    num_months_years = 12 
    percent = 100
    
    PRECISION 7
    r = int_rate / num_months_years  / percent
    n = num_years * num_months_years
    p = loan_amount
    
    M = p * ( r * (1 + r) ** n) / (((1 + r) ** n) - 1)
    
    CRT "Your total monthly mortgage payment is MZN": DROUND(M, 0)
 END
