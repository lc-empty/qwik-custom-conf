#!/bin/bash

# Obtener el uptime
uptime_output=$(uptime -p)

# Extraer los componentes de tiempo
days=$(echo $uptime_output | grep -oP '\b\d+\b days?' | sed 's/ days//')
# hours=$(echo $uptime_output | grep -oP '\b\d+\b hours?' | sed 's/ hours//')
hours=$(echo $uptime_output | grep -oP '\b\d+\b(?= hours?)')
minutes=$(echo $uptime_output | grep -oP '\b\d+\b minutes?' | sed 's/ minutes//')

# Asegurar que todos los componentes estén presentes, aunque sea 0
days=${days:-0}
hours=${hours:-0}
minutes=${minutes:-0}

# Construir la cadena de salida
# output="${days} ${hours} ${minutes}"
output=""

# Agregar días si es diferente de 0
if [ $days -ne 0 ]; then
    output="${days}d "
fi

# Agregar horas si es diferente de 0
if [ $hours -ne 0 ]; then
    output="${hours}h "
fi

# Agregar minutos si es diferente de 0 o si toda la salida está vacía (para evitar mostrar "0min")
if [ $minutes -ne 0 ] || [ -z "$output" ]; then
    output="${output}${minutes}m"
fi

# Imprimir el uptime en el formato deseado
echo "$output"
