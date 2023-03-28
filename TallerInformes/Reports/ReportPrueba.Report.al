report 50402 ReportPruebaMGR
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(ClienteManuel; Customer)
        {
            column(No_; "No.")
            {

            }
            column(Name; Name)
            {

            }
            column(Address; Address)
            {

            }
            column(Post_Code; "Post Code")
            {

            }
            column(City; City)
            {

            }
            dataitem("Ship-to Address"; "Ship-to Address")
            {
                DataItemLinkReference = ClienteManuel;
                DataItemLink = Code = field("Ship-to Code"), "Customer No." = field("No.");
                column(Hogar; Address)
                {

                }
                column(CPEnvio; "Post Code")
                {

                }
                column(Ciudad; City)
                {

                }
            }
            dataitem("Customer Bank Account"; "Customer Bank Account")
            {
                DataItemLinkReference = ClienteManuel;
                DataItemLink = Code = field("Preferred Bank Account Code"), "Customer No." = field("No.");
                column(Codigo; Code)
                {

                }
                column(Banco; Name)
                {

                }
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
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = './Rdl/mylayout.rdl';
        }
    }

    var
        myInt: Integer;
}