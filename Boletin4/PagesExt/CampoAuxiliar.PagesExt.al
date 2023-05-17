pageextension 50411 Campoauxiliar extends "Sales Invoice Subform"
{
    layout
    {
        modify(Description)
        {
            StyleExpr = estilo;

        }

        // Add changes to page layout here
        addafter(Description)
        {
            field(Cliente; Rec.CampoAux)
            {
                Caption = 'Es cliente habitual MGR';
                ApplicationArea = All;
                Editable = false;
            }
        }

    }

    actions
    {
        // Add changes to page actions here
    }

    trigger OnAfterGetRecord()
    var

        Habituales: Record Habitual;
        Header: Record "Sales Header";

    begin

        Header.Get(Rec."Document Type", Rec."Document No.");
        Habituales.SetFilter(Cliente, '%1', Header."Bill-to Customer No.");
        Habituales.SetFilter(CodProdcuto, '%1', Rec."No.");

        if not Habituales.FindFirst() or (Habituales.Desde > Header."Posting Date") or (Header."Posting Date" > Habituales.Hasta) then begin
            estilo := 'Unfavorable';
        end else begin
            estilo := '';
            Rec.CampoAux := true;
        end;
        if Habituales.Desde = 0D then begin
            estilo := '';
            Rec.CampoAux := true;
        end;
    end;

    var
        myInt: Integer;
        estilo: Text;
}