local file = io.open("modemlocal.data", "w")

if file then
    -- Escribir los nuevos datos en el archivo
    file:write(io.read())

    -- Cerrar el archivo
    file:close()
    print("The id of the modem of this dispositive has being succesfully overwrited")
else
    print("Error to overwrite the Id of the modem of this dispositive")
end
