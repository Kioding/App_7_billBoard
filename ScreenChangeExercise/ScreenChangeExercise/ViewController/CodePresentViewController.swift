//
//  CodePresentViewController.swift
//  ScreenChangeExercise
//
//  Created by kio on 2021/11/17.
//

import UIKit

protocol SendDataDelegate: AnyObject {
    func sendDate(name: String)
}

class CodePresentViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    weak var delegate: SendDataDelegate?
    // delegate 변수를 사용할 때 weak를 사용하지 않으면 강한순환 참조가 걸려 메모리 누수가 걸릴 수 있다.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        guard let name = name else { return }
        self.delegate?.sendDate(name: "\(name)")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
