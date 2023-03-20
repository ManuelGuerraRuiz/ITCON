page 50163 ListaDeVistaGeneralDelCliente
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "PTE Vista_general_del_cliente";
    Caption = 'Lista de Vista general del cliente';
    Editable = false;

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

                end;
            }
        }
    }
}