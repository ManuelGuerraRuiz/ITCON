codeunit 50404 Accion
{
    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;

    procedure MensajeTabla()
    begin
        Message('Mensaje de la tabla');
    end;

    procedure MensajePagina()
    begin
        Message('Mensaje de la Pagina');
    end;



    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnBeforeValidateDocumentDate', '', true, true)]
    procedure OnBeforeValidateDocumentDate(var SalesHeader: Record "Sales Header")
    begin
        Message('Esta es la captura del evento');
    end;
}