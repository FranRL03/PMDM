import { Component } from '@angular/core';

@Component({
  selector: 'app-calculator',
  templateUrl: './calculator.component.html',
  styleUrls: ['./calculator.component.css']
})
export class CalculatorComponent {
  resultado: string = ""
  operador: string = "";

  agregarNumero(numero: number) {
    this.resultado += numero.toString();
  }

  agregarOperador(operador: string) {
    this.resultado += operador;
  }

  calcularResultado() {
    if (this.operador === '+') {
      const numeros = this.resultado.split('+');
      if (numeros.length === 2) {
        const resultado = parseFloat(numeros[0]) + parseFloat(numeros[1]);
        this.resultado = resultado.toString();
      }
    }
    this.operador = "";
  }

}
