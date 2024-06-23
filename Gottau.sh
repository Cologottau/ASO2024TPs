#!/bin/bash

# Generar un número aleatorio entre 1 y 100
numero_secreto=$((RANDOM % 100 + 1))

echo "He pensado en un número entre 1 y 100. ¡Intenta adivinarlo!"

# Iniciar un bucle infinito
while true; do
  # Leer la conjetura del usuario
  read -p "Introduce tu conjetura: " conjetura

  # Comprobar si la conjetura es un número válido
  if ! [[ "$conjetura" =~ ^[0-9]+$ ]]; then
    echo "Por favor, introduce un número válido."
    continue
  fi

  # Convertir la conjetura en un número entero
  conjetura=$((conjetura))

  # Comparar la conjetura con el número secreto
  if (( conjetura < numero_secreto )); then
    echo "Demasiado bajo. Inténtalo de nuevo."
  elif (( conjetura > numero_secreto )); then
    echo "Demasiado alto. Inténtalo de nuevo."
  else
    echo "¡Felicidades! Has adivinado el número."
    break
  fi
done
