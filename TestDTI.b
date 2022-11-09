 PROGRAM TestDTI

     DEFFUN HB.DTI()

     gross_income = 1005
     total_debts = 6590

     CALL HB.CalculateDTI(gross_income, total_debts, dti)
     CRT "DTI from subroutine is ": dti

     CRT "DTI from function ": HB.DTI(gross_income, total_debts)
 END