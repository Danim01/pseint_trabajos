let numero="1";
let prueba=isNaN("perro");

function calcularFactorial(numero){
  
  if (isNaN(numero)){
  	console.log("no es un numero");
  } else if (numero<0){
    	console.log("ingrese un numero entero positivo")
    } else if (numero===1 || numero===0){
      	factorial=1;
      } else {
        	let factorial=1;
            for (i=1;i <= numero;i++){
              factorial = factorial * i;
      }
        return factorial;
      }
        
      }
calcularFactorial(numero);
const resultadoFactorial = calcularFactorial(numero);
console.log(resultadoFactorial);
