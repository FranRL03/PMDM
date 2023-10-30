import { Component, EventEmitter, Input, Output } from '@angular/core';
import { Berry } from 'src/app/models/berry-list.interface';

@Component({
  selector: 'app-berry-item',
  templateUrl: './berry-item.component.html',
  styleUrls: ['./berry-item.component.css']
})
export class BerryItemComponent {

  @Input() berry!: Berry;
  @Output() berryClick = new EventEmitter<string>();

}
