
CLASS zcl_lab_53_main_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.


CLASS zcl_lab_53_main_dmcc IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
  out->write( |Usuario SAP conectado: { sy-uname }| ).

    DATA(lo_usuario) = NEW zcl_lab_53_check_dmcc( ).
out->write( |Usuario SAP: { sy-uname }| ).
out->write( |Idioma SAP: { sy-langu }| ).
    TRY.

        lo_usuario->check_user(
          iv_user = sy-uname
        ).

        out->write(
          'Usuario autorizado. No se genero excepcion.'
        ).

      CATCH zcx_lab_52_operations INTO DATA(lx_error).

        out->write( 'EXCEPCION CAPTURADA:' ).

        out->write( lx_error->get_text( ) ).

    ENDTRY.


    out->write( '------------------------------' ).
    out->write( 'ACTIVIDAD 5 - TRY CATCH RETRY' ).

    DATA: lv_dividendo TYPE i VALUE 100,
          lv_divisor   TYPE i VALUE 0,
          lv_resultado TYPE i.

    TRY.

        out->write(
          |Intentando dividir { lv_dividendo } entre { lv_divisor }|
        ).

        lv_resultado = lv_dividendo DIV lv_divisor.

        out->write(
          |Resultado correcto: { lv_resultado }|
        ).

      CATCH cx_sy_zerodivide INTO DATA(lx_division).

        out->write( 'EXCEPCION CAPTURADA:' ).
        out->write( lx_division->get_text( ) ).

        lv_divisor = 5.

        out->write(
          |Divisor corregido a { lv_divisor }. Reintentando...|
        ).

        RETRY.

    ENDTRY.

    out->write( '------------------------------' ).
    out->write( 'ACTIVIDAD 7 - CLEANUP INTO' ).

    TRY.

        TRY.

            out->write(
              'Generando excepcion NO_EXECUTE...'
            ).

            RAISE EXCEPTION TYPE zcx_lab_52_operations
              EXPORTING
                textid  = zcx_lab_52_operations=>no_execute
                iv_user = sy-uname.

          CLEANUP INTO DATA(lx_cleanup).

            out->write( 'CLEANUP EJECUTADO:' ).

            out->write(
              lx_cleanup->get_text( )
            ).

        ENDTRY.

      CATCH zcx_lab_52_operations INTO DATA(lx_operacion).

        out->write( 'CATCH EXTERNO EJECUTADO:' ).

        out->write(
          lx_operacion->get_text( )
        ).

    ENDTRY.



    out->write( '------------------------------' ).
    out->write( 'ACTIVIDAD 8 - EXCEPCION REANUDABLE' ).

    DATA(lo_bank) = NEW zcl_lab_54_bank( ).

    TRY.

        out->write( 'Iniciando metodo TRANSFER...' ).

        lo_bank->transfer(
          iv_iban = 'ES95 4329 8765 4321'
        ).

        out->write( 'Metodo TRANSFER finalizado.' ).

      CATCH BEFORE UNWIND cx_static_check INTO DATA(lx_iban).

        out->write( 'EXCEPCION REANUDABLE CAPTURADA' ).

        out->write(
          lx_iban->get_text( )
        ).

        RESUME.

    ENDTRY.

    IF lo_bank->mv_transfer_continued = abap_true.
      out->write( 'BANK: continuacion correcta despues de RESUME.' ).
    ELSE.
      out->write( 'BANK: no se completo la continuacion.' ).
    ENDIF.


    out->write( '------------------------------' ).
    out->write( 'ACTIVIDAD 9 - EXCEPCIONES ENCADENADAS' ).

    DATA(lo_date) = NEW zcl_lab_58_date_analyzer( ).

    TRY.

        TRY.

            lo_date->analyze_date(
              iv_date = ''
            ).

          CATCH zcx_lab_57_format_unknown
            INTO DATA(lx_format).

            out->write(
              'Excepcion principal: FORMATO DESCONOCIDO'
            ).

            out->write(
              |Clase: { cl_abap_classdescr=>describe_by_object_ref(
                  lx_format )->absolute_name }|
            ).

            IF lx_format->previous IS BOUND.

              out->write(
                'Existe una excepcion anterior.'
              ).

              out->write(
                |Clase anterior: { cl_abap_classdescr=>describe_by_object_ref(
                    lx_format->previous )->absolute_name }|
              ).

            ENDIF.

        ENDTRY.

      CATCH zcx_lab_56_no_date INTO DATA(lx_date).

        out->write(
          |Excepcion de fecha: { lx_date->get_text( ) }|
        ).

    ENDTRY.


  ENDMETHOD.

ENDCLASS.

