table 50410 Habitual
{
    DataClassification = ToBeClassified;

    fields
    {
        field(50411; Cliente; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer;
        }
        field(504010; Desde; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(504012; Hasta; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(504013; CodProdcuto; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Item;
        }
    }

    keys
    {
        key(PK; Cliente)
        {
            Clustered = true;
        }
        key(PK2; CodProdcuto)
        {

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