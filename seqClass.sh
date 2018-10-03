# Changesss
#!/bin/bash
seq=$1 #Guarda la variable
seq=$(echo $seq | tr a-z A-Z)  # Cambia a mayusculas
if [[ $seq =~ ^[ACGTU]+$ ]]; then #Si es alguno de los valores entra
  if [[ $seq =~ T ]]; then #Si es una T entrara dentro
    echo "The sequence is DNA" #Imprimira la infomacion
  elif [[ $seq =~ U ]]; then  #Si es una U entrara dentro
    echo "The sequence is RNA" #Imprimira la infomacion
  else #Si no contiene T o U entrara dentro
    echo "The sequence can be DNA or RNA" #Imprimira la infomacion
  fi
else
  echo "The sequence is not DNA nor RNA" #Imprimira la infomacion
fi
