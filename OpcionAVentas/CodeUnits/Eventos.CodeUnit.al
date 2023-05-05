codeunit 50406 Eventos
{
    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;

    [EventSubscriber(ObjectType::Page, Page::"Sales Invoice", 'OnBeforeActionEvent', 'Post', true, true)]
    local procedure MyProcedure()
    var
        fecha: Record "Sales Line";
    begin
        if fecha.FechaDisponibleManuel = 0D then begin
            if Confirm('Quieres Facturar sin Fecha Disponibilidad MGR', true, fecha.FechaDisponibleManuel) then
                exit
            else begin
                exit
            end;
        end;
    end;




    [EventSubscriber(ObjectType::Page, Page::"Item Card", 'OnAfterValidateEvent', 'FechaDis', true, true)]
    local procedure Mensaje(var Rec: Record Item)
    var
        Lineas: Record "Sales Line";
        Cuenta: Integer;

    begin

        if Rec.FechaDis = 0D then begin
            Message(Format('El producto ' + Rec."No." + ' se ha creado sin fecha de disponibilidad'));
        end;


        /* begin
             repeat

                 if Lineas.Find() then begin

                     if Lineas."No." = Rec."No." then begin

                         if Rec.FechaDis <> 0D then begin

                             Cuenta += 1;

                         end;

                     end;

                 end;

             until Lineas.Next() = 0;

             Rec.PedidosDis := Cuenta;

         end;*/

    end;





}