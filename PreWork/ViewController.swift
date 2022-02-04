//
//  ViewController.swift
//  PreWork
//
//  Created by Tejna Dasari on 2/3/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //This is the portion of the screen that displays the text.
    @IBOutlet weak var textDisplay: UILabel!
    
    @IBOutlet weak var screenBackground: UIView!
    
    @IBOutlet weak var changeDisplayText: UITextField!
    
    //Task: Change color of text display
    @IBAction func buttonOneClicked(_ sender: Any) {
        textDisplay.textColor = UIColor.orange
    }
    
    //Task: Change color of the background
    @IBAction func buttonTwoClicked(_ sender: Any) {
        self.view.backgroundColor = UIColor.systemPink
    }
    
    //Task: Change the display string to say "Goodbye! "
    @IBAction func buttonThreeClicked(_ sender: Any) {
        textDisplay.text = "Goodbye 👋"
    }
    
    //Task: Reset the colors and words to the original settings
    @IBAction func buttonFourClicked(_ sender: Any) {
        textDisplay.textColor = UIColor.black
        self.view.backgroundColor = UIColor.systemTeal
        textDisplay.text = "Hello World!"
        
    }
    
    @IBAction func speakYourMindPressed(_ sender: Any) {
        textDisplay.text = changeDisplayText.text!
    }
    

    func textFieldShouldReturn(textField:UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

}

