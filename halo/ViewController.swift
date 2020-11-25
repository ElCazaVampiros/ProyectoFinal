//
//  ViewController.swift
//  halo
//
//  Created by Alumno on 11/24/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    var personaje : [Personaje] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personaje.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaSpartans") as! CeldaPersonajesController
        
        celda.imgPersonaje.image = UIImage(named: personaje[indexPath.row].imagen)
        celda.lblNombre.text = personaje[indexPath.row].nombre
        celda.lblEdad.text = personaje[indexPath.row].edad
        celda.lblRango.text = personaje[indexPath.row].rango
        celda.lblSexo.text = personaje[indexPath.row].sexo
        celda.lblId.text = personaje[indexPath.row].id
        
        return celda
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personaje.append(Personaje(nombre: "Douglas", edad: "42 años", id: "id: 042", sexo: "sexo: M", rango: "Soldado", imagen: "Douglas"))
        personaje.append(Personaje(nombre: "Eduard", edad: "32 años", id: "id: 052", sexo: "sexo: M", rango: "General", imagen: "eduard"))
        personaje.append(Personaje(nombre: "Jorge", edad: "37 años", id: "id: 038", sexo: "sexo: M", rango: "Soldado", imagen: "jorge"))
        personaje.append(Personaje(nombre: "Silvia", edad: "36 años", id: "id: 098", sexo: "sexo: F", rango: "Capitan", imagen: "silvia"))
        personaje.append(Personaje(nombre: "Juan", edad: "54 años", id: "id: 075", sexo: "sexo: M", rango: "Soldado", imagen: "Juan"))
    }


}

