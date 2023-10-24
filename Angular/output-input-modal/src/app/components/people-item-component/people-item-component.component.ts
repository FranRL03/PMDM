import { Component, EventEmitter, Input, Output } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { People } from 'src/app/models/people-list.interface';

@Component({
  selector: 'app-people-item-component',
  templateUrl: './people-item-component.component.html',
  styleUrls: ['./people-item-component.component.css']
})
export class PeopleItemComponentComponent {
  @Input() people!: People;
  @Output() peopleClick = new EventEmitter<string>();
  
getPeopleImage() {
  const peopleId = this.people.url.split('/')[5]
  return `https://starwars-visualguide.com/assets/img/characters/${peopleId}.jpg`
}

peopleDetails(){
 this.peopleClick.emit(this.people.name)
}

constructor(private modalService: NgbModal) { }

open(modal: any){
  this.people.name;
  this.people.height;
  this.people.gender;
  this.people.birth_year;
  this.modalService.open(modal,
    {
      keyboard: false
    });
}

}
