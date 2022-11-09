SUBROUTINE HB.CalculateDTI(gross_income, total_debts, dti)

*----------------------------------------------------------
*Subroutine to calculate the Debt-to-Income ratio
*----------------------------------------------------------
*Developer: Henk Beula
*Date     : 04/01/2022
*----------------------------------------------------------

    dti = total_debts / gross_income
    RETURN
END