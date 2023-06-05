//
//  Complexe.swift
//  filesManupulation
//
//  Created by admin on 5/6/2023.
//

import Foundation

class Complexe{
    private var _nom : String
    private var maisons : [Maison]
    private var _address : String
    
    public var nom : String{
        get{
            _nom
        }
        set(value){
            _nom = value
        }
    }
    
    public var address : String{
        get{
            _address
        }
        set(value){
            _address = value
        }
    }
    
   
    
    init(_nom: String, maisons: [Maison], address: String) {
        self._nom = _nom
        self.maisons = maisons
        self._address = address
    }
    
    public func ajouter(maison : Maison){
        maisons.append(maison)
        print("maison est ajouter avec succés")
    }
    
    public func supprimer(code : Int){
        
        if let index = maisons.firstIndex(where: {
            $0.code == code
        }){
            maisons.remove(at: index)
            print("maison a été supprimer avec succés!")
        }else{
            print("maison ne pas trouvez!")
            return
        }
        
    }
    
    public func supprimer(maison : Maison){
        maisons.removeAll(where: {
            m in m.code == maison.code
        })
        print("operation de suppression est completé!")
    }
    
    public func modifier(code : Int,locataire : String, surface : Int, styleMaison : String, montantLoyer : Double){
        if let maison = maisons.first(where: {
             $0.code == code
        }){
            print("avant : \(maison)")
            maison.superficie = surface
            maison.locataire = locataire
            maison.styleMaison = styleMaison
            maison.montantLoyer = montantLoyer
            print("aprés : \(maison)")
        }else{
            print("ce maison est introuvable!")
        }
    }
    
    public func chercherEtAffichier(styleDeMaison : String){
        
        if !(["aire+1","aire+2","alre+3"].contains(styleDeMaison.lowercased())){
            print("ce style n'est pas existe!")
            return
        }
        
        for maison in maisons{
            if maison.styleMaison != styleDeMaison{
                continue
            }
            print(maison)
        }
        
    }
    
    public func loyerLePlusPas()->Int{
        var lePlusBasCode : Int = 0
        var lePlusBasMontant : Double = 0
        self.maisons.forEach{
            maison in maison.montantLoyer < lePlusBasMontant ? lePlusBasCode = maison.code : nil
        }
        return lePlusBasCode
    }
    
    public func trierParSuperficie(){
        self.maisons.sort(by: {$1.superficie < $0.superficie})
    }
    
    public func enregistrerLesDonnees(nomDeFichier : String){
        let path = "mydata/\(nomDeFichier).txt"
        
        
        
        if (FileManager.default.fileExists(atPath: path)){
            print("ce fichier est deja existe")
            return
        }
        
        if !(FileManager.default.createFile(atPath: path, contents: nil)){
            print("error de creation de fichier")
            return
        }
        
        var contenu : String = ""
        maisons.forEach { maison in
            contenu.append("\(maison)\n")
        }
        
        let url =  FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        do{
            try contenu.write(to: url, atomically: true, encoding: .utf8)
            print("les donnee  est enregistrer avec succes")
        }catch{
            print("error: \(error)")
        }
        
        
    }
    
}
