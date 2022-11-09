    SUBROUTINE HB.RCust(cust_id, employment_status, occupation, employers_name, employers_addr)
*-------------------------------------------------------------------------------
* Subroutine to fetch employement details of a customer
* @int  : cust_id
* @out  : mployment_status, occupation, employers_name, employers_addr
* Author: Henk Beula (henkbeula@outlook.com | henk.beula@cpc.co.mz)
* Date  : 12 / 11 / 2021
*-------------------------------------------------------------------------------
    $INSERT T24.BP I_COMMON
    $INSERT T24.BP I_EQUATE
    $INSERT T24.BP I_F.CUSTOMER

    fn_cust  = 'F.CUSTOMER'
    f_cust   = ''
    cust_rec = ''

    employment_status = ''
    occupation        = ''
    employers_name    = ''
    employers_addr    = ''

    CALL LOAD.COMPANY('BNK')
    CALL OPF (fn_cust, f_cust)
    CALL F.READ(fn_cust, cust_id, cust_rec, f_cust, err)

    employment_status = cust_rec<EB.CUS.CUSTOMER.STATUS>
    occupation        = cust_rec<EB.CUS.SECTOR>
    employers_name    = cust_rec<EB.CUS.SHORT.NAME>
    employers_addr    = cust_rec<EB.CUS.STREET>

    RETURN
END
