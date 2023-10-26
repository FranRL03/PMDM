import { Component, OnInit } from '@angular/core';
import { NgbModal, NgbPaginationModule } from '@ng-bootstrap/ng-bootstrap';
import { SimpsonDetails } from 'src/app/model/simpson-details.interface';
import { Simpson } from 'src/app/model/simpsons-list.interface';
import { SimpsonService } from 'src/app/service/simpson.service';

@Component({
  selector: 'app-simpson-list',
  templateUrl: './simpson-list.component.html',
  styleUrls: ['./simpson-list.component.css']
})
export class SimpsonListComponent implements OnInit {

  simpsonList: Simpson[] = [];
  simpsonSelected: SimpsonDetails[] = [];
  page = ''

  constructor(private simpsonService: SimpsonService, private modalService: NgbModal) { }

  ngOnInit(): void {
    this.simpsonService.getSimpsonList().subscribe(resp =>
      this.simpsonList = resp.docs);
  }

  open(nombre: string, modal: any) {
    this.simpsonService.getSimpsonName(nombre).subscribe(resp2 => {
      this.simpsonSelected = resp2.result;
      // el modal service lo  he puesto dentro del subcribe para que se ejecute
      // primero la consulta y leugo el modal porque si no el modal sale vacío
      this.modalService.open(modal);
    });
  }



}
