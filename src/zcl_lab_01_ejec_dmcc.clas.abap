CLASS zcl_lab_01_ejec_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.

  PRIVATE SECTION.
    DATA ms_elements
      TYPE zcl_lab_06_elements_dmcc=>ty_elem_objects.
ENDCLASS.

CLASS zcl_lab_01_ejec_dmcc IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lo_person TYPE REF TO zcl_lab_04_person_dmcc.
    DATA lv_age TYPE i.

    lo_person = NEW zcl_lab_04_person_dmcc( ).
    lo_person->set_age( iv_age = 61 ).
    lo_person->get_age(
      IMPORTING ev_age = lv_age
    ).

    out->write( |La edad de la persona es: { lv_age }| ).

    DATA lo_flight TYPE REF TO zcl_lab_05_flight_dmcc.
    DATA lv_exists TYPE abap_bool.

    lo_flight = NEW zcl_lab_05_flight_dmcc( ).
    lv_exists = lo_flight->check_flight(
      iv_carrier_id    = 'LH'
      iv_connection_id = '0400'
    ).

    IF lv_exists = abap_true.
      out->write( 'El vuelo LH / 0400 existe.' ).
    ELSE.
      out->write( 'El vuelo LH / 0400 no existe.' ).
    ENDIF.

    DATA lo_elements TYPE REF TO zcl_lab_06_elements_dmcc.
    lo_elements = NEW zcl_lab_06_elements_dmcc( ).

    ms_elements-class = 'ZCL_LAB_06_ELEMENTS_DMCC'.
    ms_elements-instance = 'Objeto creado con NEW'.
    ms_elements-reference = 'LO_ELEMENTS'.

    lo_elements->set_object(
      is_object = ms_elements
    ).

    out->write( 'Contenido de MS_OBJECT:' ).
    out->write( lo_elements->ms_object ).

    out->write( 'Constantes de la clase:' ).
    out->write( zcl_lab_06_elements_dmcc=>gc_course ).
    out->write( zcl_lab_06_elements_dmcc=>gc_topic ).
    out->write( zcl_lab_06_elements_dmcc=>gc_language ).
    out->write( zcl_lab_06_elements_dmcc=>gc_user ).

    DATA lo_student TYPE REF TO zcl_lab_07_student_dmcc.
    lo_student = NEW zcl_lab_07_student_dmcc( ).

    lo_student->set_birth_date(
      iv_birth_date = '19650928'
    ).

    out->write(
      |Fecha de nacimiento: { lo_student->birth_date DATE = ISO }|
    ).

    DATA:
      lv_date       TYPE zdate,
      lv_first_name TYPE string,
      lv_last_name  TYPE string,
      lv_surname    TYPE string.

    zcl_lab_08_work_record_dmcc=>open_new_record(
      iv_date       = '20261012'
      iv_first_name = 'Delmi'
      iv_last_name  = 'Cruz'
      iv_surname    = 'Cerrato'
    ).

    zcl_lab_08_work_record_dmcc=>get_record(
      IMPORTING
        ev_date       = lv_date
        ev_first_name = lv_first_name
        ev_last_name  = lv_last_name
        ev_surname    = lv_surname
    ).

    out->write( 'Primera llamada: con IV_SURNAME' ).
    out->write( |Fecha: { lv_date DATE = ISO }| ).
    out->write( |Nombre: { lv_first_name }| ).
    out->write( |Primer apellido: { lv_last_name }| ).
    out->write( |Segundo apellido: { lv_surname }| ).

    zcl_lab_08_work_record_dmcc=>open_new_record(
      iv_date       = '20261012'
      iv_first_name = 'Delmi'
      iv_last_name  = 'Cruz'
    ).

    zcl_lab_08_work_record_dmcc=>get_record(
      IMPORTING
        ev_date       = lv_date
        ev_first_name = lv_first_name
        ev_last_name  = lv_last_name
        ev_surname    = lv_surname
    ).

    out->write( 'Segunda llamada: sin IV_SURNAME' ).
    out->write( |Fecha: { lv_date DATE = ISO }| ).
    out->write( |Nombre: { lv_first_name }| ).
    out->write( |Primer apellido: { lv_last_name }| ).

    IF lv_surname IS INITIAL.
      out->write( 'Segundo apellido: (vacío)' ).
    ELSE.
      out->write( |Segundo apellido: { lv_surname }| ).
    ENDIF.

    DATA lo_account TYPE REF TO zcl_lab_09_account_dmcc.
    DATA lv_iban TYPE string.

    lo_account = NEW zcl_lab_09_account_dmcc( ).

    lo_account->set(
      iban = 'HN9121000418450200051332'
    ).

    lo_account->get(
      IMPORTING iban = lv_iban
    ).

    out->write( 'Punto 11: Autorreferencia' ).
    out->write( |IBAN de la cuenta: { lv_iban }| ).
  ENDMETHOD.
ENDCLASS.
