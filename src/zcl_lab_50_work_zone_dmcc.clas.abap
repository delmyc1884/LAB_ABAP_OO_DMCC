CLASS zcl_lab_50_work_zone_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC

  GLOBAL FRIENDS zcl_lab_51_wz_friend_dmcc.

  PUBLIC SECTION.

    METHODS constructor.

  PROTECTED SECTION.

  PRIVATE SECTION.

    DATA ms_work_zone TYPE ty_work_zone.

    DATA mo_helper TYPE REF TO lcl_helper.

    METHODS set_work_zone.

ENDCLASS.


CLASS zcl_lab_50_work_zone_dmcc IMPLEMENTATION.

  METHOD constructor.

    set_work_zone( ).

  ENDMETHOD.


  METHOD set_work_zone.

    ms_work_zone = VALUE #(
      launchpad = 'Acceso a las aplicaciones'
      dashboard = 'Panel de indicadores'
      spaces    = 'Espacios de trabajo'
    ).

    IF mo_helper IS NOT BOUND.
      mo_helper = NEW #( ).
    ENDIF.

    mo_helper->ms_work_zone = ms_work_zone.

  ENDMETHOD.

ENDCLASS.
