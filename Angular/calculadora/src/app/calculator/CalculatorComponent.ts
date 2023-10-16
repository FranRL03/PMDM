import { Component } from '@angular/core';


@Component({
    selector: 'app-calculator',
    templateUrl: './calculator.component.html',
    styleUrls: ['./calculator.component.css']
})
export class CalculatorComponent {

    numero: number;

    b = 0;

    result = 0;
    getSum() {
        this.result = this.numero + this.b;
    }
}
