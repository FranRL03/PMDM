import { Component, EventEmitter, Input, Output } from '@angular/core';
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

}
