import QuartzCore
 
import UIKit



public class VisualEffectView : UIVisualEffectView {
    
    var widthConstraint = NSLayoutConstraint()
    var heightConstraint = NSLayoutConstraint()
    
    var _width : CGFloat = 0
    var _height : CGFloat = 0
    
    public init(
        _width: CGFloat? = nil,
        _height: CGFloat? = nil,
        _backgroundColor : UIColor? = nil,
        _borderColor : UIColor? = nil,
        _borderWidth: CGFloat? = nil,
        _cornerRadius: CGFloat? = nil,
        _shadowColor: UIColor? = nil,
        _shadowOpacity: CGFloat? = nil,
        _shadowRadius: CGFloat? = nil,
        _alpha: CGFloat? = 1.0
    ) {
        
        super.init(effect: UIVisualEffect())
    
        
        if let theWidth = _width {
            self.translatesAutoresizingMaskIntoConstraints = false
            self._width = theWidth
            widthConstraint = self.widthAnchor.constraint(equalToConstant: theWidth)
            
        }
      
        if let theHeight = _height {
            self.translatesAutoresizingMaskIntoConstraints = false
            self._height = theHeight
            heightConstraint = self.heightAnchor.constraint(equalToConstant: theHeight)
        }
      
      
        widthConstraint.isActive = true
        heightConstraint.isActive = true
        
        if let _backgroundColor = _backgroundColor {
            self.backgroundColor = _backgroundColor
        }
        if let _borderColor = _borderColor {
            self.backgroundColor = _borderColor
        }
        if let _borderWidth = _borderWidth {
            self.layer.borderWidth = _borderWidth
        }
        if let _cornerRadius = _cornerRadius {
            self.layer.cornerRadius = _cornerRadius
        }
        if let _shadowColor = _shadowColor {
            self.layer.shadowColor = _shadowColor.cgColor
        }
        if let _shadowOpacity = _shadowOpacity {
            self.layer.shadowOpacity = Float(_shadowOpacity)
        }
        if let _shadowRadius = _shadowRadius {
            self.layer.shadowRadius = _shadowRadius
        }
        if let _alpha = _alpha {
            self.alpha = _alpha
        }
        
        
        self.tag = 100
        
    }
    override public func draw(_ rect: CGRect) {
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}