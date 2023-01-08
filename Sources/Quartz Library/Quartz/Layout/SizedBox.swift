import QuartzCore 
 
import UIKit


public class SizedBox : UIView {
    
    let label = UILabel()
    
    var _width : CGFloat = 0
    var _height : CGFloat = 0
    init(
        _width: CGFloat = 20,
        _height: CGFloat = 20
    ) {
        
        super.init(frame: .zero)
        
        self._width = _width
        self._height = _height
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: _width).isActive = true
        self.heightAnchor.constraint(equalToConstant: _height).isActive = true
        
        self.layer.borderWidth = 1
        
        self.addSubview(label)
        label.max()
        label.text = "Sized Box"
        label.textAlignment = .center
        label.textColor = .black
        
        self.tag = 201
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
