page 50164 StatementsCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Estado Cartas';

    layout
    {
        area(Content)
        {
            group(Entrada)
            {
                Caption = 'Entrada';
                field(dificultad; dificultad)
                {
                    ApplicationArea = All;
                    Caption = 'Dificultad';
                    trigger OnValidate()

                    begin
                        GetSuggestion();
                    end;

                }
            }
            group(Salida)
            {
                Caption = 'Salida';
                field(nivel; nivel)
                {
                    ApplicationArea = All;
                    Caption = 'Nivel';
                    Editable = false;

                }
                field(sugerencia; sugerencia)
                {
                    ApplicationArea = All;
                    Caption = 'Sugerencia';
                    Editable = false;

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
                begin

                end;
            }
        }
    }

    var
        dificultad: Integer;
        nivel: Text[30];
        sugerencia: Text[80];

    local procedure GetSuggestion()
    begin
        nivel := '';
        sugerencia := '';

        case dificultad of
            1 .. 5:
                begin
                    nivel := 'Beginner';
                    sugerencia := 'Take e-Learning or remote training';
                end;
            6 .. 8:
                begin
                    nivel := 'Intermediate';
                    sugerencia := 'Attend instructor-Led';
                end;
            9 .. 10:
                begin
                    nivel := 'Advanced';
                    sugerencia := 'Attend instructor-Led and self study';
                end;
        end;
    end;
}