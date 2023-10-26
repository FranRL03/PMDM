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

  open(modal: any, id: string) {
    this.simpsonService.getSimpsonId(id).subscribe(resp =>
      this.simpsonSelected = resp._id);
    this.modalService.open(modal);
  }


}
