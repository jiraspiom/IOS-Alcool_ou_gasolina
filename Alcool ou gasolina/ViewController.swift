//
//  ViewController.swift
//  Alcool ou gasolina
//
//  Created by Gilmar Borges on 04/10/18.
//  Copyright © 2018 alalgi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var precoAlcool: UITextField!
    @IBOutlet weak var precoGasolina: UITextField!
    
    @IBOutlet weak var resultado: UILabel!
    
    @IBAction func calcular(_ sender: Any) {
        
        if let alcool = precoAlcool.text  {
            if let gasolina = precoGasolina.text{
                
                let validaCampo =  self.validarCampos(alcool: alcool, gasolina: gasolina)
                
                if (validaCampo){
                    self.calcularMelhorPreco(precoAlcool: alcool, precoGasolina: gasolina)
                    
                }else{
                    resultado.text = "Digito os preço do alcool e gasolina!"
                }
            
            }
        }

    }
    
    func calcularMelhorPreco(precoAlcool : String, precoGasolina : String){
        
        if  let alcool = Double(precoAlcool){
            if let gasolina = Double(precoGasolina){
                
                //alcool / gasolina
                // se valor for >= 0.7 melhor usar gasolina senao usar alcoo
                
                let valorCalculado = alcool / gasolina
                
                if valorCalculado >= 0.7 {
                    self.resultado.text = "melhor usar gasolina"
                    
                }else{
                    self.resultado.text = "melhor usar alcool"
                }
                
                
            }
        }
        
    }
    
    func validarCampos(alcool : String, gasolina : String) -> Bool {
        var camposValidados = true
        
        if (alcool.isEmpty){
            camposValidados = false
        
        }else if(gasolina.isEmpty){
            camposValidados = false
        
        }
        
        return camposValidados
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

