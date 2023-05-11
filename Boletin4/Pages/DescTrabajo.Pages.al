page 50405 DescripcionTrabajo
{
    PageType = StandardDialog;
    DeleteAllowed = false;
    InsertAllowed = false;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Sales Invoice Header";
    Caption = 'Modificar descripcion del trabajo';
    Permissions = tabledata "Sales Invoice Header" = M;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Work Description"; desc1)
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

    trigger OnAfterGetRecord()
    var
        leer: InStream;
    begin
        desc1 := '';
        Rec.CalcFields("Work Description");
        if Rec."Work Description".HasValue then begin
            Rec."Work Description".CreateInStream(leer);
            leer.ReadText(desc1);
        end
        else
            desc1 := '';
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    var
        escribir: OutStream;
    begin
        if CloseAction in [ACTION::Cancel, ACTION::LookupCancel] then
            exit
        else begin
            Clear(Rec."Work Description");
            Rec."Work Description".CreateOutStream(escribir, TEXTENCODING::UTF8);
            escribir.WriteText(desc);
            Rec.Modify(true);
        end;
    end;

    var
        myInt: Integer;
        desc: Text[200];
        desc1: Text[200];
}