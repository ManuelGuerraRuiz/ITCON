pageextension 50400 PagianExtension extends "Sales Order List"
{
    layout
    {
        addafter(Amount)
        {
            field(Campo1; Rec.Campo1)
            {
                ApplicationArea = all;
            }
        }
        addbefore("Bill-to Name")
        {
            field(Campo2; Rec.Campo2)
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        addafter("F&unctions")
        {
            action(AccionNueva)
            {
                ApplicationArea = All;
                Caption = 'Accion Nueva';
                Image = New;


                trigger OnAction()
                begin
                    Message('Esta es la accion nueva');
                end;
            }
        }

        modify(Release)
        {
            trigger OnAfterAction()
            var
                myInt: Integer;
            begin
                Message('Modificando el boton');
            end;
        }
    }

    var
        myInt: Integer;
}