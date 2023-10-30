import { Component } from '@angular/core';
import { Berry } from 'src/app/models/berry-list.interface';
import { BerryService } from 'src/app/services/berry.service';

@Component({
  selector: 'app-berry-list',
  templateUrl: './berry-list.component.html',
  styleUrls: ['./berry-list.component.css']
})
export class BerryListComponent {

  berryList: Berry[] = [];

  constructor(private berryService: BerryService) { }

  ngOnInit(): void {
    this.berryService.getBerryList().subscribe(resp => {
      this.berryList = resp.results;
    });
  }

}
