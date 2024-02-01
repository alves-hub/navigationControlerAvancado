//
//  ViewController.swift
//  NavigationAvancadaCurso
//
//  Created by Jefferson Alves on 01/02/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedGoScreenButton(_ sender: UIButton) {
        
        //  >> Criamos uma instancia constante VC
        let VC: Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        
        //  >> modalPresentationStyle para determinar tela inteira para modal
        //VC?.modalPresentationStyle = .fullScreen
        
        //  >> ABORDAGEM Para apresentar um MODAL de forma programatica
        //  >> Passando a constante instancia VC
        //  >> "??" - Caso contrario passar UIViewController vazia
        //  >> animated - passando valor para tipo de animacao
        //self.present(VC ?? UIViewController(), animated: true)
        
        
        //  >>ABORDAGEM Para apresentar uma NavigationControler de forma programatica
        //  >> MODO DEBUG INSERINDO EX."PO VC" O MEMSO EXIBI NO TERMINAL O VALOR DA CONSTANTE
        self.navigationController?.pushViewController(VC ?? UIViewController(), animated: true)
        
        
    }
    
}
