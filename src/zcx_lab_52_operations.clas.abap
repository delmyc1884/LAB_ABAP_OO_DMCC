
CLASS zcx_lab_52_operations DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_message.
    INTERFACES if_t100_dyn_msg.

    CONSTANTS:
      BEGIN OF no_execute,
        msgid TYPE symsgid VALUE 'ZMSG_LAB_52_DMCC',
        msgno TYPE symsgno VALUE '001',
        attr1 TYPE scx_attrname VALUE 'MV_USER',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF no_execute,

      BEGIN OF no_access,
        msgid TYPE symsgid VALUE 'ZMSG_LAB_52_DMCC',
        msgno TYPE symsgno VALUE '002',
        attr1 TYPE scx_attrname VALUE 'MV_USER',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF no_access.

    DATA mv_user TYPE syuname READ-ONLY.

    METHODS constructor
      IMPORTING
        !textid   LIKE if_t100_message=>t100key OPTIONAL
        !previous LIKE previous OPTIONAL
        !iv_user  TYPE syuname OPTIONAL.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.


CLASS zcx_lab_52_operations IMPLEMENTATION.

  METHOD constructor ##ADT_SUPPRESS_GENERATION.

    super->constructor(
      previous = previous
    ).

    CLEAR me->textid.

    me->mv_user = iv_user.

    IF textid IS INITIAL.
      if_t100_message~t100key =
        if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.

  ENDMETHOD.

ENDCLASS.

