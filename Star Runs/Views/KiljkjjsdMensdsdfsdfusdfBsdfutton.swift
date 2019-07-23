import UIKit

class KiljkjjsdMensdsdfsdfusdfBsdfutton: UIButton {
    
    // MARK:- Button initialization
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        asfasconfisadfasasdfguresdfasButton()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        asfasconfisadfasasdfguresdfasButton()
        
    }
    
    override var isHighlighted: Bool {
        
        didSet {
            
            guard let sadsupersdasview = superview?.superview?.superview else { return } // Get top level view.
            
            for case let adfsadfdsfmnkiuhjjdImage as UIImageView in sadsupersdasview.subviews {
                
                // Find needed image view.
                
                guard var asfdasfasYConasfasstraint = sadsupersdasview.constraint(withIdentifier: DFasdsdaKeyasds.sdfgadsfafentergsadfsadfsaYConstraint) else { return } // Find by identifier needed constraint.
                
                asfdasfasYConasfasstraint.isActive     = false // Deactivate constraint.
                asfdasfasYConasfasstraint              = adfsadfdsfmnkiuhjjdImage.centerYAnchor.constraint(equalTo: centerYAnchor) // Change image center Y constraint.
                asfdasfasYConasfasstraint.identifier   = DFasdsdaKeyasds.sdfgadsfafentergsadfsadfsaYConstraint // Get to the new constraint identifier.
                asfdasfasYConasfasstraint.isActive     = true // Activate constraint.
                
                UIView.animate(withDuration: 0.5) {
                    
                    adfsadfdsfmnkiuhjjdImage.alpha = self.isHighlighted ? 1 : 0 // Animate alpha property depending on isHighlighted value.
                    
                }
                
            }
            
        }
        
    }
    
    // MARK:- Private methods
    
    private func asfasconfisadfasasdfguresdfasButton() {
        
        layer.cornerRadius = 10
        
    }
    
}
