//
//  Tela02VC.swift
//  NavigationAvancadaCurso
//
//  Created by Jefferson Alves on 01/02/24.
//

import UIKit

class Tela02VC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var secondNameLabel: UILabel!
    //MARK: CRINDO METODO CONSTRUTOR PARA TRANSITAR DADOS ENTRE TELAS
    
    let name:String?
    let secondName:String?
    
    init?(coder: NSCoder, name: String, secondName: String) {
        self.name = name
        self.secondName = secondName
        super.init(coder: coder)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = name
        secondNameLabel.text = secondName
    }


}
