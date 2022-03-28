import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 15
        startButton.setTitle("START", for: .normal)
    }
    
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
    }


    @IBAction func pushStartButton() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        if isLightOn(redView) {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if isLightOn(yellowView) {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
    }
    
    func isLightOn(_ color: UIView!) -> Bool {
        color.alpha == 1 ? true : false
    }
    
}

