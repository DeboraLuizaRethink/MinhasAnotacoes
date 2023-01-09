//
//  ViewController.swift
//  MinhasAnotacoes
//
//  Created by Debora Luiza on 09/01/23.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var textoCampo: UITextView!
    let chave = "anotacaco"
    
    @IBAction func salvarAnotacao(_ sender: Any) {
        if let texto = textoCampo.text {
            UserDefaults.standard.set(texto, forKey: chave)
        }
        
    }
    
    func recuperarAnotacao() -> String{
        if let textoRecuperado = UserDefaults.standard.object(forKey: chave){
            return textoRecuperado as! String
        }
        return ""
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textoCampo.text = recuperarAnotacao()
    }


}

