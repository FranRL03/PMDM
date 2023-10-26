import { Component, EventEmitter, Input, Output } from '@angular/core';
import { Simpson } from 'src/app/model/simpsons-list.interface';

@Component({
  selector: 'app-simpson-item',
  templateUrl: './simpson-item.component.html',
  styleUrls: ['./simpson-item.component.css']
})
export class SimpsonItemComponent {

  @Input() simpson!: Simpson;
  @Output() simpsonClick = new EventEmitter<string>();



  simpsonDetails() {
    this.simpsonClick.emit(this.simpson._id)
  }

}

