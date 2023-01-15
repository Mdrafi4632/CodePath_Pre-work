//  MD RAFI
//  ViewController.swift
//  Fun Application
//  Created by MD Rafiul Rafi on 1/12/23.
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var morePetsButton: UISwitch!
    
    @IBOutlet weak var morepetsStepper: UIStepper!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var studentsAge: UITextField!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
          
          numberOfPetsLabel.text = "\(Int(sender.value))"
      }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        // Lets us choose the title we have selected from the segmented control
        // In our example that is whether it is first, second, third or forth
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
            
        // Creating a constant of type string that holds an introduction.
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). My current age is \(studentsAge.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsButton.isOn) that I want more pets."
                
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
            
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Assalamualaikum!", style: .default, handler: nil)
            
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
            
        present(alertController, animated: true, completion: nil)
    }
}
