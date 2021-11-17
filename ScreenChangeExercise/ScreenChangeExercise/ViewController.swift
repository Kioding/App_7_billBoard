//
//  ViewController.swift
//  ScreenChangeExercise
//
//  Created by kio on 2021/11/17.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePushViewController") as? CodePushViewController else { return }
        viewController.name = "CodePush"
        viewController.delegate = self
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") as? CodePresentViewController else { return }
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "CodePresent"
        viewController.delegate = self
        self.navigationController?.present(viewController, animated: true)
    }
    
    @IBAction func resetLabelButton(_ sender: UIButton) {
        self.nameLabel.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SeguePresentViewController {
            viewController.name = "SeguePresent"
        }
        if let viewController = segue.destination as? SeguePushViewController {
            viewController.name = "SeguePush"
        }
 
    }
    
    func sendDate(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
}

