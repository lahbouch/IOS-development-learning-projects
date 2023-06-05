//
//  Maison.swift
//  filesManupulation
//
//  Created by admin on 5/6/2023.
//

import Foundation

class Maison : CustomStringConvertible{
    var description: String{
        """
        \(code): superficie \(superficie), style de maison \(styleMaison),
locataire \(locataire), montant de loyer \(montantLoyer)
"""
    }
    
    
    static var count : Int = 0
     let code : Int = Maison.count + 1
    private var _superficie : Int
    private var _styleMaison : String
    private var _locataire : String
    private var _montantLoyer : Double
    
    
    public var superficie : Int{
        get{
            _superficie
        }
        set(value){
            self._superficie = value
        }
    }
    
    
    public var styleMaison : String{
        get{
            _styleMaison
        }
        set(value){
            _styleMaison = value
        }
    }
    
    
    
    public var locataire : String{
        get{
            _locataire
        }
        set(value){
            _locataire = value
        }
    }
    
    var montantLoyer : Double{
        get{
            _montantLoyer
        }
        set(value){
            _montantLoyer = value
        }
    }
    
    
    init(superficie: Int, styleMaison: String, locataire: String, montantLoyer: Double) {
        
        self._superficie = superficie
        self._styleMaison = styleMaison
        self._locataire = locataire
        self._montantLoyer = montantLoyer
    }
    
    convenience init(){
        self.init(superficie: 0, styleMaison: "", locataire: "", montantLoyer: 0.0)
    }
    
    
    
    
}
