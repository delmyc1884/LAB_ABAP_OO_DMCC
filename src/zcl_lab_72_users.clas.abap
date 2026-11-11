
CLASS zcl_lab_72_users DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_70_observer
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    DATA mv_notification TYPE string READ-ONLY.

    METHODS on_new_article REDEFINITION.

ENDCLASS.


CLASS zcl_lab_72_users IMPLEMENTATION.

  METHOD on_new_article.

    mv_notification =
      |Usuarios: Nuevo articulo disponible - { ev_title }|.

  ENDMETHOD.

ENDCLASS.

