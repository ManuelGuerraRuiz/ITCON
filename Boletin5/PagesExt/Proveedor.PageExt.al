pageextension 50420 Boton extends "Vendor List"
{
    layout
    {
        // Add changes to page layout here
        addbefore("No.")
        {
            field(Id; id.codigo)
            {
                ApplicationArea = ALl;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
        addfirst("Ven&dor")
        {
            action(botoncito)
            {
                Caption = 'Nuevo Proveedor MGR';
                Image = Vendor;
                ApplicationArea = All;
                RunObject = page ProveedorTeamMember;

            }
        }
    }

    var
        myInt: Integer;
        id: Record Proveedor;
}