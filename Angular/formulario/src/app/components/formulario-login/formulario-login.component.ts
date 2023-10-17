import { Component } from '@angular/core';

@Component({
  selector: 'app-formulario-login',
  templateUrl: './formulario-login.component.html',
  styleUrls: ['./formulario-login.component.css']
})
export class FormularioLoginComponent {

  nombre: string = "";
  apellidos: string = "";
  email: string = "";
  tel: string = "";
  //sele: string = "";
  nif: string = "";
  //h: string = "Hombre"
  //m: string = "Mujer"
  pass: string = "";
  passRepeat: string = "";

  getForm() {
    console.log(this.nombre)
    console.log(this.apellidos)
    console.log(this.email)
    console.log(this.tel)
    console.log(this.nif)
    console.log(this.pass)
    console.log(this.passRepeat)
  }

  getValidation() {
    if (this.pass == this.passRepeat) {

      this.getForm();
    } else {
      console.log('Las contraseñas no coinciden')
    }

  }

}
