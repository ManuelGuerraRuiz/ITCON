codeunit 50405 Botoncito
{
    trigger OnRun()
    begin

    end;

    /// <summary>
    /// Boton para activar o desactivar el informe de la pagina Sales Invoice Y la ficha 
    /// </summary>
    /// <returns></returns>
    procedure Visto(): Boolean
    var
        BotonActivado: Record "Sales & Receivables Setup";
    begin
        if BotonActivado.Get() then
            exit(BotonActivado.Visible);
    end;

    var
        myInt: Integer;

}