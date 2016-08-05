import UIKit

class AlarmaVC: UIViewController {

    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var lab: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn.layer.cornerRadius = 10
        btn.layer.masksToBounds = true
        
        lab.hidden = true
    }
    
    @IBAction func btnClicked(sender: UIButton) {
        
        let alarma = UIAlertController(title: "Name", message: "Name eingaben...", preferredStyle: .Alert)
        alarma.addTextFieldWithConfigurationHandler { (tfAlarma) in
            tfAlarma.placeholder = "Name?"
            tfAlarma.keyboardAppearance = .Dark
        }
        alarma.addAction(UIAlertAction(title: "OK", style: .Default, handler: { (bla) in
            self.lab.text = alarma.textFields![0].text
            self.lab.hidden = false
            UIView.animateWithDuration(5, animations: { 
                self.btn.alpha = 0
            })
        }))
        alarma.addAction(UIAlertAction(title: "Abbrechen", style: .Destructive, handler: nil))
        self.presentViewController(alarma, animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
