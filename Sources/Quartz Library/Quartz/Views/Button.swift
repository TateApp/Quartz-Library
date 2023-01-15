import QuartzCore 

 
import UIKit

public class Button : UIButton {
    
    public var widthConstraint = NSLayoutConstraint()
    public var heightConstraint = NSLayoutConstraint()
    
    public var _width : CGFloat = 0
    public var _height : CGFloat = 0
    
    public init(
     
        //MARK: - Button
        _setTitle: String? = nil,
        _setTitleColor: UIColor? = nil,
        _setTitleShadowColor: UIColor? = nil,
        _setImage: UIImage? = nil,
        _setBackgroundImage: UIImage? = nil,
        _target: Any? = nil,
        _action: Selector? = nil,
        _for: UIControl.Event? = nil,
        
        //MARK: - View
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
        
        super.init(frame: .zero)
        
//    _setTitle: String? = nil,
        if let _setTitle = _setTitle {
           
            self.setTitle(_setTitle, for: .normal)
        }
    
//    _setTitleColor: UIColor? = nil,
        if let _setTitleColor = _setTitleColor {
           
            self.setTitleColor(_setTitleColor, for: .normal)
        }
    
//    _setTitleShadowColor: UIColor? = nil,
        if let _setTitleShadowColor = _setTitleShadowColor {
           
            self.setTitleShadowColor(_setTitleShadowColor, for: .normal)
        }
//    _setImage: UIImage? = nil,
        if let _setImage = _setImage {
           
            self.setImage(_setImage, for: .normal)
        }
//    _setBackgroundImage: UIImage? = nil,
        if let _setBackgroundImage = _setBackgroundImage {
           
            self.setBackgroundImage(_setBackgroundImage, for: .normal)
        }

        
        //    _target: Any? = nil,
        //    _action: Selector? = nil,
        //    _for: UIControl.Event? = nil,
                
        
        if let _target = _target, let _action = _action, let _for = _for {
            self.addTarget(_target, action: _action, for: _for)
        }
    
        //MARK: - View
        
    
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let theWidth = _width {
            
            self._width = theWidth
            self.widthAnchor.constraint(equalToConstant: theWidth).isActive = true
            
        }
      
        if let theHeight = _height {
            
            self._height = theHeight
            self.heightAnchor.constraint(equalToConstant: theHeight).isActive = true
            
        }
      
      
      
        
        
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
        
        
        self.tag = 101
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
