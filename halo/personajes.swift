//
//  personajes.swift
//  halo
//
//  Created by Alumno on 11/24/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation

class Personaje{
    var nombre: String
    var edad: String
    var id: String
    var sexo: String
    var rango: String
    var imagen: String
    
    
    init(nombre:String, edad:String, id:String, sexo:String, rango:String, imagen:String){
        self.nombre = nombre
        self.edad = edad
        self.id = id
        self.sexo = sexo
        self.rango = rango
        self.imagen = imagen
        
    }
}
