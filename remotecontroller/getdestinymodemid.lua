
local file = io.open("modemremoto.data", "r")

if file then
    -- Leer el contenido del archivo línea por línea
    for line in file:lines() do
        print(line)
    end

    -- Cerrar el archivo
    file:close()
else
    print("Error al abrir el archivo")
end