import QuartzCore 
 
import UIKit

public class Spacer : UIView {

    let label = UILabel()
    
    public init() {
        super.init(frame: .zero)
        
            self.translatesAutoresizingMaskIntoConstraints = false
            self.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
            self.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height).isActive = true
        
        self.addSubview(label)
        label.max()
        label.text = "Flexible Space"
        label.textAlignment = .center
        label.textColor = .black
        
        self.tag = 200
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

