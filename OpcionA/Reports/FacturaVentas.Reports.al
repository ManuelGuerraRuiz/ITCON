report 50403 ReportFactura
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = RDLC;

    dataset
    {
        dataitem(Cliente; "Sales Header")
        {
            column(NDoc; "No.")
            {

            }
            column(FechaRegistro; Format("Posting Date", 0, '<Closing><Day,2>/<Month,2>/<Year>'))
            {

            }
            column(Datos; "Sell-to Customer Name")
            {

            }
            column(FormaPago; "Payment Method Code")
            {

            }
            column(Vencimiento; Format("Due Date", 0, '<Closing><Day,2>/<Month,2>/<Year>'))
            {

            }
            column(Enviar; "Ship-to Code")
            {

            }

            dataitem(Producto; "Sales Line")
            {
                DataItemLinkReference = Cliente;
                DataItemLink = "Document No." = field("No.");


                column(CodProducto; "No.")
                {

                }
                column(Descripcion; Description)
                {

                }
                column(Cantidad; Quantity)
                {

                }
                column(Precio; "Unit Price")
                {

                }
                column(Importe; "Line Amount")
                {

                }


                column(BaseImponible; "VAT Base Amount")
                {

                }
                column(TipoIva; "VAT %")
                {

                }
                column(CuotaIva; "Amount Including VAT" - "VAT Base Amount")
                {

                }

                column(Importe2; "Amount Including VAT")
                {

                }
                column(Descuento; "Line Discount %")
                {

                }

                trigger OnAfterGetRecord()
                var
                    myInt: Integer;

                begin
                    if Type.AsInteger() = 0 then
                        CurrReport.Skip()


                end;


            }
        }


    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    rendering
    {
        layout(RDLC)
        {
            Type = RDLC;
            LayoutFile = './Rdl/Factura.rdl';
        }

        layout(Word)
        {

            Type = Word;
            LayoutFile = './Rdl/Factura.docx';
        }
    }

    var
        myInt: Integer;


}