import { Component } from '@angular/core';
import { Sex } from 'src/app/enums/sex.enum';
import { Student } from 'src/app/models/student.interface';


const STUDENTS: Student[] = [
  {
    id: '1',
    name: 'Miguel',
    lastname: 'Campos',
    sex: Sex.Female,
    age: 25,
    subjects: [
      {
        name: 'Math',
        hours: 5
      },
      {
        name: 'Spanish',
        hours: 4
      }
    ],
    paid: true
  },
  {
    id: '2',
    name: 'Pepe',
    lastname: 'García',
    sex: Sex.Female,
    age: 25,
    subjects: [
      {
        name: 'Math',
        hours: 10
      },
      {
        name: 'Spanish',
        hours: 30
      }
    ],
    paid: false
  }
];

@Component({
  selector: 'app-student-list',
  templateUrl: './student-list.component.html',
  styleUrls: ['./student-list.component.css']
})

export class StudentListComponent {

  displayedColumns: string[] = ['id', 'name', 'lastname', 'subject'];
  list: Student[] = STUDENTS;

  hideId: boolean = true;
  hideName: boolean = true;
  hideLastname: boolean = true;
  hideSubjects: boolean = true;

  hideColumn() {

    this.displayedColumns = [];

    if(this.hideId){
      this.displayedColumns.push("id");
    }

    if(this.hideName){
      this.displayedColumns.push("name");
    }

    if(this.hideLastname){
      this.displayedColumns.push("lastname");
    }

    if(this.hideSubjects){
      this.displayedColumns.push("subject");
    }

    // if (value == 'ID') {
    //   console.log('Soy id');

    //   if (this.hideId == false){
    //     this.hideId = true;
    //     console.log(this.hideId)
    //   }
       
    //   this.hideId = false;
    //   console.log(this.hideId)

    //   return
    // }

    // if (value == 'Name') {
    //   console.log('Soy name');
    //   if (this.hideName == false)
    //     this.hideName = true;

    //   this.hideName = false;
    //   return
    // }

    // if (value == 'Lastname') {
    //   console.log('Soy lastname');

    //   if (this.hideLastname == false){
    //     this.hideLastname = true;
    //     return
    //   }
        

    //   this.hideLastname = false;
    //   return
    // }

    // if (value == 'Subjects') {
    //   console.log('Soy subjects');

    //   if (this.hideSubjects == false)
    //     this.hideSubjects = true;

    //   this.hideSubjects = false;
    //   return
    // }

  }
}
