tableextension 50430 Cue extends "Activities Cue"
{
    fields
    {
        // Add changes to table fields here
        field(50435; Abiertos; Integer)
        {
            Caption = 'Proyectos Abiertos';
            CalcFormula = Count(Job WHERE(Status = CONST(Open)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50436; Errores; Integer)
        {
            Caption = 'Colas en estado Error';
            CalcFormula = Count("Job Queue Entry" WHERE(Status = CONST(Error)));
            Editable = false;
            FieldClass = FlowField;
        }
    }

    var
        myInt: Integer;
}