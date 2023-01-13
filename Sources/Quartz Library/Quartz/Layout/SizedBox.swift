import QuartzCore 
 
 
 
import UIKit


public class SizedBox : UIView {
    
    let label = UILabel()
    
    public var _width : CGFloat = 0
    public var _height : CGFloat = 0
    public init(
        _width: CGFloat = 20,
        _height: CGFloat = 20
    ) {
        
        super.init(frame: .zero)
        
        self._width = _width
        self._height = _height
        
        
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: _width).isActive = true
        self.heightAnchor.constraint(equalToConstant: _height).isActive = true
        
        if Quartz.shared.mode == .production {
            
        } else {
            self.layer.borderWidth = 1
            self.layer.borderColor = UIColor.blue.cgColor
        }
   
       
  
        
        self.tag = 201
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


public class StackSizedBox : UIView {
    
    let label = UIView()
    
    public var _width : CGFloat = 0
    public var _height : CGFloat = 0
    public init(
        _width: CGFloat = 20,
        _height: CGFloat = 20
    ) {
        
        super.init(frame: .zero)
        
        self._width = _width
        self._height = _height
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: _width).isActive = true
        self.heightAnchor.constraint(equalToConstant: _height).isActive = true
        
   
        self.addSubview(label)
        label.max()
//        if Quartz.shared.mode == .production {
//            self.addSubview(label)
//            label.max()
//
//       
//            
//        } else {
//         
//        }
//   
//        
//      
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
