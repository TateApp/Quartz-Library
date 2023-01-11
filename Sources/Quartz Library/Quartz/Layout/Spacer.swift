import QuartzCore 
 
import UIKit

public class Spacer : UIView {

    
    
    public init() {
        super.init(frame: .zero)
        
        UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
        
            self.translatesAutoresizingMaskIntoConstraints = false
            self.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
            self.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height).isActive = true
        
        
        self.tag = 200
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

