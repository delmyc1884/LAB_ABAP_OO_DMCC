CLASS zcl_lab_51_wz_friend_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

    METHODS get_helper
      IMPORTING
        io_work_zone TYPE REF TO zcl_lab_50_work_zone_dmcc
      RETURNING
        VALUE(rv_result) TYPE string.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.


CLASS zcl_lab_51_wz_friend_dmcc IMPLEMENTATION.

  METHOD get_helper.

    IF io_work_zone IS NOT BOUND.
      rv_result = 'No se recibio una instancia de Work Zone'.
      RETURN.
    ENDIF.

    IF io_work_zone->mo_helper IS NOT BOUND.
      rv_result = 'La instancia del helper no esta creada'.
      RETURN.
    ENDIF.


    DATA(ls_work_zone) =
      io_work_zone->mo_helper->get_work_zone( ).

    rv_result =
      |Launchpad: { ls_work_zone-launchpad }| &&
      cl_abap_char_utilities=>newline &&
      |Dashboard: { ls_work_zone-dashboard }| &&
      cl_abap_char_utilities=>newline &&
      |Spaces: { ls_work_zone-spaces }|.

  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.

    DATA(lo_work_zone) = NEW zcl_lab_50_work_zone_dmcc( ).

    DATA(lv_result) = get_helper(
      io_work_zone = lo_work_zone
    ).

    out->write( lv_result ).

  ENDMETHOD.

ENDCLASS.
