import UIKit

class LojkkhjkjNimijjsddewController: UIViewController {
    
    // MARK:- Controller's methods
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        return .lightContent
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated) // Hide the navigation bar on the this view controller.
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: animated) // Show the navigation bar on other view controllers.
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Powrót", style: .plain, target: self, action: nil) // Change standard navigation back button title.
        
    }
    
}
