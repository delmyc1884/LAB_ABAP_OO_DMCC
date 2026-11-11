
CLASS zcl_lab_71_administrator DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_70_observer
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    DATA mv_notification TYPE string READ-ONLY.

    METHODS on_new_article REDEFINITION.

ENDCLASS.


CLASS zcl_lab_71_administrator IMPLEMENTATION.

  METHOD on_new_article.

    mv_notification =
      |Administrador: Nuevo articulo publicado - { ev_title }|.

  ENDMETHOD.

ENDCLASS.

