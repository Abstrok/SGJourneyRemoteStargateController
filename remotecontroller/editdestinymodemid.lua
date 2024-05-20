local file = io.open("modemremoto.data", "w")
print("Write the new Destiny Modem ID:")
if file then
    -- Escribir los nuevos datos en el archivo
    file:write(io.read())

    -- Cerrar el archivo
    file:close()
    print("The id of the modem of the destiny dispositive has being succesfully overwrited")
else
    print("Error to overwrite the Id of the modem of the destiny dispositive")
end
