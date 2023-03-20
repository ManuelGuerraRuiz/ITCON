page 50168 TajertaDeExpresiones
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Tarjeta de expresiones';

    layout
    {
        area(Content)
        {
            group(Entrada)
            {
                Caption = 'Entrada';
                field(Value1; Value1)
                {
                    ApplicationArea = All;
                }
                field(Value2; Value2)
                {
                    ApplicationArea = All;
                }
            }
            group(Salida)
            {
                Caption = 'Salida';
                field(Result; Result)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Ejecutar)
            {
                Caption = 'Ejecutar';
                ToolTip = 'Enviar';
                ApplicationArea = All;
                Image = ExecuteBatch;

                trigger OnAction()
                begin
                    Result := Value1 > Value2;
                end;
            }
        }
    }

    var
        Value1, Value2 : Integer;
        Result: Boolean;
}