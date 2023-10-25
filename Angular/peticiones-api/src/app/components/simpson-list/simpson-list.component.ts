import { Component, OnInit } from '@angular/core';
import { Simpson } from 'src/app/model/simpsons-list.interface';
import { SimpsonService } from 'src/app/service/simpson.service';

@Component({
  selector: 'app-simpson-list',
  templateUrl: './simpson-list.component.html',
  styleUrls: ['./simpson-list.component.css']
})
export class SimpsonListComponent implements OnInit {

  simpsonList: Simpson[] = [];

  constructor(private simpsonService: SimpsonService){}

  ngOnInit(): void {
    this.simpsonService.getSimpsonList().subscribe(resp =>
      this.simpsonList = resp.docs);
  }

}
