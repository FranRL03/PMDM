import { Component, TemplateRef } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { PeopleDetailsResponse } from 'src/app/model/people-details.interface';
import { Info, People } from 'src/app/model/people-list.interface';
import { PeopleListService } from 'src/app/services/people.sevice';

@Component({
  selector: 'app-people-list',
  templateUrl: './people-list.component.html',
  styleUrls: ['./people-list.component.css']
})
export class PeopleListComponent {

  peopleList: People[] = [];
  peopleSelected!: PeopleDetailsResponse;
  page = 1;

  constructor(private peopleService: PeopleListService, private modalService: NgbModal) { }

  ngOnInit(): void {
    this.peopleService.getPeopleList().subscribe(resp =>
      this.peopleList = resp.results);
  }

  open(id: string, modal: any) {
    this.peopleService.getPeopleId(id).subscribe(resp => {
      this.peopleSelected = resp;
      this.modalService.open(modal);
    });
  }

  pagination() {
    this.peopleService.getPagination(this.page).subscribe(resp => {
      this.peopleList = resp.results;
    });
  }

}
