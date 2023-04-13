codeunit 50401 Administracion
{
    trigger OnRun()
    begin
        Clear(SourceCode);
        Clear(CustomerOverview);
        Clear(GLEntry);

        if CustomerOverview.FindLast() then
            NextEntryNo := CustomerOverview.NumeroMovimiento + 1
        else
            NextEntryNo := 1;

        if SourceCode.FindSet() then
            repeat
                if Cliente.FindSet() then
                    repeat
                        GLEntry.SetRange("Source Type", GLEntry."Source Type"::Customer);
                        GLEntry.SetRange("Source Code", SourceCode.Code);
                        GLEntry.SetRange("Source No.", Cliente."No.");
                        if GLEntry.FindSet() then begin
                            GLEntry.CalcSums(GLEntry.Amount);
                            CustomerOverview.NumeroMovimiento := NextEntryNo;
                            CustomerOverview.NumeroCliente := Cliente."No.";
                            CustomerOverview.NombreCliente := Cliente.Name;
                            CustomerOverview.CodigoOrigen := SourceCode.Code;
                            CustomerOverview.Importe := GLEntry.Amount;
                            CustomerOverview.LastRunDate := CurrentDateTime();
                            CustomerOverview.Insert();
                            NextEntryNo += 1;
                        end;
                    until CLiente.Next() = 0;
            until SourceCode.Next() = 0
    end;

    procedure Limpiar();
    begin

        GLEntry.SetRange("Source No.", Cliente."No.");
        CustomerOverview.DeleteAll();

    end;

    procedure Editar();

    begin



    end;

    var
        NextEntryNo: Integer;
        CustomerOverview: Record "PTE Vista_general_del_cliente";
        Cliente: Record Customer;
        SourceCode: Record "Source Code";
        GLEntry: Record "G/L Entry";

}