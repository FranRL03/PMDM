import { Component } from '@angular/core';
import { Student } from 'src/app/model/alumno.interface';

const TOTAL_HOURS = 100;
const STUDENTS: Student[] = [
  {

    id: '1',
    name: 'Fran',
    lastName: 'Ruiz',
    email: 'fran@gmail.com',
    sex: 'H',
    age: 20,
    subjects: [
      {
        name: 'HTML',
        hours: 20
      },
      {
        name: 'AD',
        hours: 40
      }
    ],
    paid: false,
  },
  {

    id: '1',
    name: 'JJ',
    lastName: 'Ruiz',
    email: 'jj@gmail.com',
    sex: 'H',
    age: 27,
    subjects: [
      {
        name: 'HTML',
        hours: 10
      },
      {
        name: 'AD',
        hours: 8
      }
    ],
    paid: true,
  }
]




@Component({
  selector: 'app-student-list',
  templateUrl: './student-list.component.html',
  styleUrls: ['./student-list.component.css']
})
export class StudentListComponent {

  studentList = STUDENTS;

  getPaidString(student: Student) {
    return student.paid ? 'Yes' : 'No';
  }

}


