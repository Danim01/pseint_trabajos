#Leer un número entero de dos dígitos y determinar a cuánto es igual la suma de sus dígitos.
numero = int(input("Ingrese un número de dos cifras: "))

decena = round(numero/10)
unidad = numero%10

suma = decena + unidad

print("la suma de sus dígitos es de: ",suma)
