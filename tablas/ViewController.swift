//
//  ViewController.swift
//  tablas
//
//  Created by merlin Moya on 10/21/18.
//  Copyright © 2018 merlin Moya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    var contenidoCeldas = ["pdf1","pdf2","pdf3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(indexPath.row)
        let celda = UITableViewCell(style: UITableViewCell.CellStyle.default,reuseIdentifier:"Cell")
        celda.textLabel?.text = contenidoCeldas[indexPath.row]
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let idpdfSeleccionado = indexPath.row
        self.performSegue(withIdentifier: "PantallaDosSegue", sender: idpdfSeleccionado)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "PantallaDosSegue"{
            let idPdfSeleccionadoRecibido = sender as! Int
            
            let objpantalla2:ViewController2 = segue.destination as! ViewController2
            
            objpantalla2.nombrePdfrecibido = contenidoCeldas[idPdfSeleccionadoRecibido]
        }
    }
    
}

