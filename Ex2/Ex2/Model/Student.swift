//
//  Student.swift
//  Ex2
//
//  Created by Lee Wolf on 12/05/2022.
//

import Foundation
import UIKit

class Student {
    
    var name: String?
    var id: String?
    var imageUrl: String?
    
    init(_ name: String, _ id: String, _ imageUrl: String) {
        self.name = name
        self.id = id
        self.imageUrl = imageUrl
    }
}
