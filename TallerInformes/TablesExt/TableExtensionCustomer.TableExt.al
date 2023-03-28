tableextension 50400 TableExtensionSale extends "Sales Header"
{
    fields
    {
        field(50400; Campo1; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50401; Campo2; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        modify("Posting Date")
        {
            trigger OnAfterValidate()
            var
                cu: Codeunit Accion;
            begin
                cu.MensajeTabla();
            end;
        }
    }
    trigger OnAfterDelete()
    var
        myInt: Integer;
    begin
        //borrar los registros asociados de la tablaX
    end;

    var
        myInt: Integer;
}