report 50401 OnlyProcess
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ProcessingOnly = true;
    Caption = 'Solo Procesamiento';

    dataset
    {
        dataitem(Customer; Customer)
        {
            trigger OnPreDataItem();
            begin
                clear(Customer);
                clear(Counter);
                if not ReplaceExisting then
                    Customer.SetRange("Name 2", '');
            end;

            trigger OnAfterGetRecord();
            begin
                if Customer2.get(Customer."No.") then begin
                    Customer2."Name 2" := Name2ToApply;
                    Customer2.Modify;
                    Counter += 1;
                end;
            end;

            trigger OnPostDataItem();
            begin
                Message('Ready!, %1 Customers were updated.', Counter);
            end;
        }
    }

    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    Caption = 'Opciones';
                    field(Name2ToApply; Name2ToApply)
                    {
                        ApplicationArea = All;
                        Caption = 'Name2 To Apply';
                        ToolTip = 'Specifies the Name2 To Apply.';
                    }
                    field(ReplaceExisting; ReplaceExisting)
                    {
                        ApplicationArea = All;
                        Caption = 'Replace Existing?';
                        ToolTip = 'Replace Existing?';
                    }
                }
            }
        }
    }

    var

    var
        Name2ToApply: Text;
        Customer2: Record Customer;
        ReplaceExisting: Boolean;
        Counter: Integer;
}