##########
##########      Importante
##########      Instalar aplay 
##########      sudo apt-get install dos2unix  # For Debian/Ubuntu
##########      dos2unix Reproductor_UDP.sh
##########      bash Reproductor_UDP.sh
##########


#!/bin/bash

# Configuración de la dirección IP y el puerto para recibir audio
port=8080

# Configuración de reproducción de audio
buffer_size=4096 # Tamaño del buffer

echo "Esperando conexión..."

# Recepción de audio y reproducción utilizando Python y UDP
python - <<END
import socket
import subprocess

port = $port
buffer_size = $buffer_size

# Configuración del socket UDP
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind(('0.0.0.0', port))

print("Esperando audio...")

# Almacenar los datos entrantes en un búfer antes de reproducir
audio_buffer = b''

# Redirigir datos acumulados al reproductor de audio (aplay)
player = subprocess.Popen(['aplay', '-f', 'S16_LE', '-c', '2', '-r', '44100', '--buffer-size=' + str(buffer_size)], stdin=subprocess.PIPE)

while True:
    data, addr = sock.recvfrom(buffer_size)
    audio_buffer += data

    # Reproducir audio si el búfer alcanza un tamaño específico
    if len(audio_buffer) >= buffer_size:
        player.stdin.write(audio_buffer)
        audio_buffer = b''  # Vaciar el búfer después de la reproducción

print("Recepción finalizada.")
END
