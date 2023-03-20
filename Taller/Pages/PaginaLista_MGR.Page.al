page 50161 PaginaLista_MGR
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "PTE TablaEjemplo_MGR";
    Caption = 'Pagina de registros MGR';
    CardPageId = PaginaFicha_MGR;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
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
                field(Camp4; Rec.Camp4)
                {
                    ApplicationArea = All;

                }
                field(Camp5; Rec.Camp5)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        Message('Hola mundo');
                    end;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(AccionNueva)
            {
                ApplicationArea = All;
                Caption = 'Accion Nueva';

                trigger OnAction();
                var
                    numero1, numero2 : Integer;
                begin
                    numero1 := 9;
                    numero2 := 4;
                    Message('La suma de la operacion es:' + ' ' + Format(numero1 + numero2));
                end;
            }
        }
    }
}