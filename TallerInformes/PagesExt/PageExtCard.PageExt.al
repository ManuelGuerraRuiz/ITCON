pageextension 50601 PaginaExtensionCard extends "Sales Order"
{
    layout
    {
        addfirst(General)
        {
            field(Campo1; Rec.Campo1)
            {
                ApplicationArea = all;
            }

        }
        addlast(Payment)
        {
            field(Campo2; Rec.Campo2)
            {
                ApplicationArea = all;
            }
        }
        modify("Posting Date")
        {
            trigger OnAfterValidate()
            var
                cu: Codeunit Accion;
            begin
                cu.MensajePagina();
            end;
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}