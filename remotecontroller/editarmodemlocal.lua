local file = io.open("modemlocal.data", "w")

if file then
    -- Escribir los nuevos datos en el archivo
    file:write(io.read())

    -- Cerrar el archivo
    file:close()
    print("Se a reescrito el id del modem receptor de este dispositivo")
else
    print("Error al reescribir el id del modem receptor de este dispostivo")
end
