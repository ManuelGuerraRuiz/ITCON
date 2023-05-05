tableextension 50402 fecha extends "Sales Line"
{
    fields
    {
        // Add changes to table fields here
        field(50400; FechaDisponibleManuel; Date)
        {
            Caption = 'Fecha Disponibilidad MGR';
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}