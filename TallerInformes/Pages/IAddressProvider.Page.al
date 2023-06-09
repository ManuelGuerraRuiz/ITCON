page 50166 MyAddress
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'La Direccion';

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
        area(Processing)
        {
            action(WhatsTheAddress)
            {
                ApplicationArea = All;
                Caption = '¿Cual es tu direccion?';
                ToolTip = 'Seleccione la direccion.';
                Image = Addresses;

                trigger OnAction()
                var
                    iAddressProvider: Interface IAddressProvider;
                begin
                    AddressproviderFactory(iAddressProvider);
                    Message(iAddressProvider.GetAddress());
                end;
            }

            action(SendToHome)
            {
                ApplicationArea = All;
                Image = Home;
                Caption = 'Seleccionado Casa.';
                ToolTip = 'Esta es la interfaz de Casa.';
                trigger OnAction()
                begin
                    sendTo := sendTo::Private
                end;
            }

            action(SendToWork)
            {
                Image = WorkCenter;
                Caption = 'Seleccionado Trabajo.';
                ToolTip = 'Esta es la interfaz de Trabajo.';
                ApplicationArea = All;

                trigger OnAction()
                begin
                    sendTo := sendTo::Company
                end;
            }
        }
    }

    local procedure AddressproviderFactory(var iAddressProvider: Interface IAddressProvider)
    var
        CompanyAddressProvider: Codeunit CompanyAddressProvider_MGR;
        PrivateAddressProvider: Codeunit PrivateAddressProvider_MGR;
    begin

        if sendTo = sendTo::Company then
            iAddressProvider := CompanyAddressProvider;

        if sendTo = sendTo::Private then
            iAddressProvider := PrivateAddressProvider;

    end;

    var
        sendTo: enum SendTo;
}