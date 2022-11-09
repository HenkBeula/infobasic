    SUBROUTINE HB.CUS.DETAILS(cus_id, cus_name, cus_residence)
*----------------------------------------------------------
* Subroutine to fetch customer details
*----------------------------------------------------------
* Developer: Henk Beula
* Date     : 07/02/2022
* Version  :
*----------------------------------------------------------
    $INSERT T24.BP I_COMMON
    $INSERT T24.BP I_EQUATE
    $INSERT T24.BP I_F.CUSTOMER

    fn_cus  ='FBNK.CUSTOMER'
    f_cus   =''
    cus_rec =''

    CALL OPF(fn_cus, f_cus)
    CALL F.READ(fn_cus, cus_id, cus_rec, f_cus, err)
    cust_name       = cus_rec<EB.CUS.SHORT.NAME>
    cus_residence   = cus_rec<EB.CUS.RESIDENCE>

    RETURN
END
