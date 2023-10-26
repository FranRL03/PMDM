import { Component, OnInit } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { Simpson } from 'src/app/model/simpsons-list.interface';
import { SimpsonService } from 'src/app/service/simpson.service';

@Component({
  selector: 'app-simpson-list',
  templateUrl: './simpson-list.component.html',
  styleUrls: ['./simpson-list.component.css']
})
export class SimpsonListComponent implements OnInit {

  simpsonList: Simpson[] = [];
  simpsonSelected!: Simpson;

  constructor(private simpsonService: SimpsonService, private modalService: NgbModal) { }

  ngOnInit(): void {
    this.simpsonService.getSimpsonList().subscribe(resp =>
      this.simpsonList = resp.docs);
  }

  open(modal: any, nombre: string) {
    this.simpsonService.getSimpsonId(nombre).subscribe(resp => {
      this.simpsonSelected = resp
      // el modal service lo  he puesto dentro del subcribe para que se ejecute
      // primero la consulta y leugo el modal porque si no el modal sale vacío
      this.modalService.open(modal)
    });



  }


}
