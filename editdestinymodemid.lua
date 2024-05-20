local file = io.open("modemremoto.data", "w")
print("Write the new Destiny Modem ID:")
if file then
    -- Escribir los nuevos datos en el archivo
    file:write(io.read())

    -- Cerrar el archivo
    file:close()
    print("Se a reescrito el id del modem receptor del DISPOTIVO REMOTO")
else
    print("Error al reescribir el id del modem receptor del DISPOTIVO REMOTO")
end
