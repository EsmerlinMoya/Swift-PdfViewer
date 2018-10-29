//
//  ViewController2.swift
//  tablas
//
//  Created by merlin Moya on 10/21/18.
//  Copyright © 2018 merlin Moya. All rights reserved.
//

import UIKit
import WebKit

class ViewController2: UIViewController {
    
    
    @IBOutlet var vistaWeb: UIWebView!
    var nombrePdfrecibido:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        HabilitarZoom()
        mostrarPDF()
    }
    
   
    func HabilitarZoom(){
        
        vistaWeb.scalesPageToFit = true
        
        
    }
    
    func mostrarPDF(){
        //Direccion del archivo PDF (URL)
        
        let direccionpdf = URL(fileURLWithPath: Bundle.main.path(forResource: nombrePdfrecibido!, ofType: "pdf", inDirectory: "PDF")!)
        // Convertir datos
        
        let datosPdf = try? Data(contentsOf: direccionpdf)
        
        //Mostrar datos en la Web
        
        vistaWeb.load(datosPdf!, mimeType: "application/pdf",textEncodingName:"utf-8", baseURL: direccionpdf )
    }
    
}
