import UIKit

extension UIView {
    
    func constraint(withIdentifier identifier: String) -> NSLayoutConstraint? {
        
        return constraints.filter { $0.identifier == identifier }.first
        
    }
    
}
