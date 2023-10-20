import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import {MatTableModule} from '@angular/material/table';
import {MatCheckboxModule} from '@angular/material/checkbox';

@NgModule({
    //define que contiene el modulo, componentes generalmente
  declarations: [
  
  ],
    //define los servicios del módulo
  providers:[

  ],
    //define las cosas que quiero de otros modules, trayendome el módulo
  imports: [
    CommonModule,
    MatTableModule,
    MatCheckboxModule
  ],

  //componentes, directivas y pipes que otros módulos que importen ESTE módulo puedan acceder
  exports: [
    MatTableModule,
    MatCheckboxModule
  ]
})
export class MaterialModule { }