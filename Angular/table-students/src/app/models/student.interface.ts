import { Sex } from "../enums/sex.enum";
import { SchoolSubject } from "./school-subject.interface";

    
    export interface Student {
    id: string;
    name: string;
    lastname: string;
    sex: Sex;
    age: number;
    subjects: SchoolSubject[];
    paid?: boolean;
  }
  
 