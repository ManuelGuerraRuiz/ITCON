pageextension 50430 CueExtension extends "O365 Activities"
{
    layout
    {
        // Add changes to page layout here
        addlast(content)
        {
            cuegroup(ProyectosAbiertos)
            {
                Caption = 'Proyectos Abiertos';

                field(Abiertos; Rec.Abiertos)
                {
                    Caption = 'Proyectos Abiertos MGR';
                    ApplicationArea = All;

                }
            }
            cuegroup(Errores)
            {
                Caption = 'Lista de Errores';
                field(Error; Rec.Errores)
                {
                    Caption = 'Colas en estado Error';
                    ApplicationArea = All;
                }
            }
        }
    }


    actions
    {
        // Add changes to page actions here
    }



    var
        myInt: Integer;
}