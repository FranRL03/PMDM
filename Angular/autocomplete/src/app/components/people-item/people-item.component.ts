import { Component, EventEmitter, Input, Output } from '@angular/core';
import { People } from 'src/app/model/people-list.interface';

@Component({
  selector: 'app-people-item',
  templateUrl: './people-item.component.html',
  styleUrls: ['./people-item.component.css']
})
export class PeopleItemComponent {
  
  @Input() people!: People;
  @Output() peopleClick = new EventEmitter<string>();

  getImage(){
    const peopleId = this.people.url.split('/')[5]
    return `https://rickandmortyapi.com/api/character/avatar/${peopleId}.jpeg`
  }

  peopleDetails() {
    this.peopleClick.emit(this.people.id);
  }

}
