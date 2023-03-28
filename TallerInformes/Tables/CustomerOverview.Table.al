table 50400 "PTE Vista_general_del_cliente"
{
    DataClassification = CustomerContent;
    Caption = 'Vista general del cliente', Comment = 'Panoramica del cliente';

    fields
    {
        field(50161; NumeroMovimiento; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Numero de Movimientos', Comment = 'Numero di movimenti';
        }
        field(50162; NumeroCliente; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Numero de Clientes', Comment = 'Numero di clienti';
        }
        field(50163; NombreCliente; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Nombres de Clientes', Comment = 'Nomi dei clienti';
            trigger OnValidate()
            var
                Cliente: Record Customer;
            begin

                if Cliente.Get(Rec.NombreCliente) then begin
                    Cliente.Validate(Name, Rec.NombreCliente);
                    Cliente.Name := Rec.NombreCliente;
                    Cliente.Modify(true);
                end;
                //Customer.Validate(name. Rec.NombreCliente);
                //Customermodify igualandi el noimbre

            end;


        }
        field(50164; CodigoOrigen; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Codigo de Origen', Comment = 'Codice sorgente';
        }
        field(50165; Importe; Decimal)
        {
            DataClassification = CustomerContent;

            Caption = 'Importe', Comment = 'Quantità';

        }
        field(50166; LastRunDate; DateTime)
        {
            DataClassification = CustomerContent;
            Caption = 'Last Run Date', Comment = 'Data dell ultima esecuzione';
        }

    }

    keys
    {
        key(PK; NumeroMovimiento)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin


    end;

    trigger OnRename()
    begin

    end;

}