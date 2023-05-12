pageextension 50411 Campoauxiliar extends "Sales Invoice Subform"
{
    layout
    {
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

    var
        myInt: Integer;
}