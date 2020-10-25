//
//  ViewController.swift
//  BulletinBoard
//
//  Created by Huseyin Can Dayan on 25.10.2020.
//

import UIKit
import BLTNBoard

class ViewController: UIViewController {
    
    private lazy var boardManager: BLTNItemManager = {
        
        let item = BLTNPageItem(title: "Push Notification")
        item.image = UIImage(named: "bell")
        item.actionButtonTitle = "Continue"
        item.alternativeButtonTitle = "Later"
        item.descriptionText = "Would you like to stay in the loop and get notifications?"
        
        item.actionHandler = { _ in
            self.didTapBoardContinue()
        }
        
        item.alternativeHandler = { _ in
            ViewController.didTapBoardLater()
        }
        
        item.appearance.actionButtonColor = .systemGreen
        
        return BLTNItemManager(rootItem: item)
    }()

    @IBOutlet var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myButton.backgroundColor = .link
        myButton.setTitleColor(.white, for: .normal)
        myButton.titleLabel?.text = "Show bottom board"
    }
    
    @IBAction func didTapButton() {
        boardManager.showBulletin(above: self)
    }
    
    func didTapBoardContinue() {
        print("didTapBoardContinue")
    }
    
    static func didTapBoardLater() {
        print("didTapBoardLater")
    }

}

