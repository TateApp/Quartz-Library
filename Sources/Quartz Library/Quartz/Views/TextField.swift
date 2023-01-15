import QuartzCore 

 
import UIKit

public class TextField : UITextField {
    
    public var widthConstraint = NSLayoutConstraint()
    public var heightConstraint = NSLayoutConstraint()
    
    public var _width : CGFloat = 0
    public var _height : CGFloat = 0
    
    public init(
        
        _text: String? = nil,
        _placeHolder: String? = nil,
        _font: UIFont? = nil,
        _textAlignment: NSTextAlignment? = nil,
        _textColor : UIColor? = nil,
        _delegate : UITextFieldDelegate? = nil,
        _attributedText: NSAttributedString? = nil,
        _background: UIImage? = nil,
        _borderStyle: UITextField.BorderStyle? = nil,
        _defaultTextAttributes: [NSAttributedString.Key : Any]? = nil,
        _inputAccessoryView: UIView? = nil,
        _leftView: UIView? = nil,
        _markedTextStyle: [NSAttributedString.Key : Any]? = nil,
        _typingAttributes: [NSAttributedString.Key : Any]? = nil,
        
        
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
        
        
        self.tag = 106
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
