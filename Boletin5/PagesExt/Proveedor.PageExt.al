pageextension 50420 Boton extends "Vendor List"
{
    layout
    {
        // Add changes to page layout here


    }

    actions
    {
        // Add changes to page actions here
        addfirst("Ven&dor")
        {
            action(botoncito)
            {
                Caption = 'Nuevo Proveedor MGR';
                Image = Vendor;
                ApplicationArea = All;
                RunObject = page ProveedorTeamMember;

            }
        }

        addfirst("Ven&dor")
        {
            action(boton)
            {
                Caption = 'Crear Code Unit';
                Image = List;
                ApplicationArea = All;

                trigger OnAction()
                var
                    movs: Record "Job Queue Entry";
                begin
                    movs.SetFilter("Object Type to Run", '%1', movs."Object Type to Run"::Codeunit);
                    movs.SetFilter("Object ID to Run", '%1', 50420);
                    if movs.FindFirst() then begin
                        Message('Ya esta creada la CodeUnit');
                    end

                    else begin
                        movs.Init();
                        movs."Object Type to Run" := movs."Object Type to Run"::Codeunit;
                        movs."Object ID to Run" := 50420;
                        movs.Insert(true);

                        Message('Se ha creado la CodeUnit');
                    end;


                end;

            }
        }
    }

    var
        myInt: Integer;
}