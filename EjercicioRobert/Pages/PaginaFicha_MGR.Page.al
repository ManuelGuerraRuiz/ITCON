page 50162 PaginaFicha_MGR
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "PTE TablaEjemplo_MGR";

    layout
    {
        area(Content)
        {
            group(GrupoNuevo)
            {
                Caption = 'General';
                field(Camp1; Rec.Camp1)
                {
                    ApplicationArea = All;

                }
                field(Camp2; Rec.Camp2)
                {
                    ApplicationArea = All;

                }

                field(Camp3; Rec.Camp3)
                {
                    ApplicationArea = All;

                }

            }
            group(GrupoNuevo2)
            {
                Caption = 'Otros';
                field(Camp4; Rec.Camp4)
                {
                    ApplicationArea = All;

                }
                field(Camp5; Rec.Camp5)
                {
                    ApplicationArea = All;

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
                Caption = 'Cuenta';

                trigger OnAction()
                var
                    numero1, numero2 : Integer;
                begin
                    numero1 := 10;
                    numero2 := 5;
                    Message('Esta es la resta' + ' ' + Format(numero1 - numero2));
                end;
            }
        }
    }

    var
        myInt: Integer;
}