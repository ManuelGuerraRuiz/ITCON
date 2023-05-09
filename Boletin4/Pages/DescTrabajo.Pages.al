page 50405 DescripcionTrabajo
{
    PageType = StandardDialog;
    DeleteAllowed = false;
    InsertAllowed = false;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Sales Invoice Header";
    Caption = 'Modificar descripcion del trabajo';


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Work Description"; Rec."Work Description")
                {
                    Caption = 'Descripcion Actual';
                    ApplicationArea = All;
                    Editable = false;
                }

                field(desc; desc)
                {
                    Caption = 'Descripcion Nueva';
                    ApplicationArea = All;
                    Editable = true;
                }


            }

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                var

                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
        desc: Text[200];
}