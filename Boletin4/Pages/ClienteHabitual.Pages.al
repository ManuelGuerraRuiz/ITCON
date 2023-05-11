page 50410 ClienteHabitual
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Habitual;
    Caption = ' Cliente Habitual';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Cliente; Rec.Cliente)
                {
                    ApplicationArea = All;

                }
                field(Desde; Rec.Desde)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field(Hasta; Rec.Hasta)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;


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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
    trigger OnQueryClosePage(CloseAction: Action): Boolean
    var

    begin

        if (Rec.Desde <> 0D) and (Rec.Hasta = 0D) then begin
            Error('No puedes dejar una fecha  sin rellenar')
        end;
        if (Rec.Hasta <> 0D) and (Rec.Desde = 0D) then begin
            Error('No puedes dejar una fecha  sin rellenar')
        end;
    end;
}