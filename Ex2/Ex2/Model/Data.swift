//
//  Data.swift
//  Ex2
//
//  Created by Lee Wolf on 12/05/2022.
//

import Foundation

class Data {
    
    public static let shared = Data()

    private var studentList = [Student]()
    
    private init() {
        studentList.append(Student("Moshe", "1", "a"))
        studentList.append(Student("Yossi", "2", "a"))
        studentList.append(Student("Eli", "3", "a"))
        studentList.append(Student("Lee", "4", "a"))
        studentList.append(Student("Amir", "5", "a"))
        studentList.append(Student("Kobi", "6", "a"))
        studentList.append(Student("Omer", "7", "a"))
        studentList.append(Student("Liat", "8", "a"))
        studentList.append(Student("Shira", "9", "a"))
        studentList.append(Student("Dani", "10", "a"))
    }
    
    func getStudentList() -> [Student]{
        return studentList
    }
    
    func setStudentList(_ list: [Student]) {
        studentList = list
    }
    
    func AddStudent(_ st: Student){
        studentList.append(st)
    }
    
}
