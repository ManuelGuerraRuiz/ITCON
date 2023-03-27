page 50402 ListaDeVistaGeneralDelCliente
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "PTE Vista_general_del_cliente";
    Caption = 'Lista de Vista general del cliente';
    CardPageId = FichaDeVistaGeneralDelCliente;


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(NumeroMovimiento; Rec.NumeroMovimiento)
                {
                    ApplicationArea = All;

                }
                field(NumeroCliente; Rec.NumeroCliente)
                {
                    ApplicationArea = All;

                }
                field(NombreCliente; Rec.NombreCliente)
                {
                    ApplicationArea = All;

                }
                field(CodigoOrigen; Rec.CodigoOrigen)
                {
                    ApplicationArea = All;

                }
                field(Importe; Rec.Importe)
                {
                    ApplicationArea = All;

                }
                field(LastRunDate; Rec.LastRunDate)
                {
                    ApplicationArea = All;

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

            action(ImportarRegistros)
            {
                ApplicationArea = All;
                Caption = 'Importar Registros';
                Image = Import;

                trigger OnAction();
                var
                    UpdateCustomerOverview: Codeunit Administracion;
                begin
                    UpdateCustomerOverview.Run();
                end;
            }
            action(BorrarRegistros)
            {
                ApplicationArea = All;
                Caption = 'Borrar Registros';
                Image = ClearLog;

                trigger OnAction();
                var
                    ClearCustomerOverview: Record "PTE Vista_general_del_cliente";
                    mensaje: Label 'Usuario que todavia no a pagado su importe';
                begin
                    CurrPage.SetSelectionFilter(ClearCustomerOverview);
                    while ClearCustomerOverview.Next() <> 0 do begin
                        if ClearCustomerOverview.Importe < 0 then begin
                            Error(mensaje);
                        end
                        else begin
                            ClearCustomerOverview.Delete();
                        end;
                    end;
                end;
            }

            action(ModificarRegistros)
            {
                ApplicationArea = All;
                Caption = 'Modificar Registros';
                Image = Agreement;

                trigger OnAction();
                var
                    ClearCustomerOverview: Record "PTE Vista_general_del_cliente";
                begin
                    CurrPage.SetSelectionFilter(ClearCustomerOverview);

                    while ClearCustomerOverview.Next() <> 0 do begin
                        if ClearCustomerOverview.NombreCliente = 'Manuel Pérez Rodriguez' then begin
                            ClearCustomerOverview.NombreCliente := 'Manolito pies plata';
                            ClearCustomerOverview.Modify(true);
                            ClearCustomerOverview.Next();
                        end;
                    end;
                end;
            }

            action(ImprimirRegistros)
            {
                ApplicationArea = All;
                Caption = 'Imprimir Registros';
                Image = PrintReport;

                trigger OnAction();

                begin
                    report.Run(Report::ListaCustomer);
                end;
            }

            action(ImprimirRegistrosVenta)
            {
                ApplicationArea = All;
                Caption = 'Imprimir Registros Venta';
                Image = PrintReport;

                trigger OnAction();

                begin
                    report.Run(Report::"Standard Sales - Invoice");
                end;
            }


        }

    }

}