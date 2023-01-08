import QuartzCore 
import UIKit


public enum VStackType {
    case equalSpacing
    case pushUp
    case pushDown
    case manual
}
public class VStack : UIStackView {
    var views = [UIView]()
    var type : VStackType = .equalSpacing
    var _width : CGFloat? = nil
    var _height : CGFloat? = nil
    
    
    public init(
        type : VStackType,
        
        _width: CGFloat? = nil,
        _height: CGFloat? = nil,
        views : [UIView]
    ) {
        super.init(frame: .zero)
        
   
        
        self.views = views
        self.type = type
        
        if let width = _width {
            self._width = width
            print("Width Set")
        }
        if let height = _height {
            self._height = height
            print("height Set")
        }
        self.distribution = .fillProportionally
        self.axis = .vertical
        self.alignment = .center
        self.spacing = 0
        
        self.tag = 203
        
        
            
        
        
            
           
        
            
            
        
        
        
        
        
    }
    override public func layoutSubviews() {
        self.setState()
    }
    public func setState() {
        
        if let superView = self.superview {
            print("Set State")
            if _width != nil || _height != nil {
                
                self.translatesAutoresizingMaskIntoConstraints = false
                
                if let width = _width {
                    
                    self.widthAnchor.constraint(equalToConstant: width).isActive = true
                    
                } else {
                    print("Width is Nil")
                }
                
                if let height = _height {
                    
                    self.heightAnchor.constraint(equalToConstant: height).isActive = true
                    
                } else {
                    print("Height is Nil")
                }
            }
          
            
            if self.frame != .zero {
                
            
            for arrangedSubView in self.arrangedSubviews {
                self.removeArrangedSubview(arrangedSubView)
            }
            
                for view in self.views {
                    view.layer.borderWidth = 1
                }
            print(self.views.count)
                
            switch type {
                //MARK: -
            case .equalSpacing:
                var sizedBoxHeight = self.VStackGetSizedBox(views: self.views)
            
                print("SizedBox Height: \(sizedBoxHeight)")
                for index in 0...views.count - 1 {
                    self.addArrangedSubview(SizedBox(_width: self.frame.width, _height: sizedBoxHeight))
                    self.addArrangedSubview(views[index])
                }
                self.addArrangedSubview(SizedBox(_width: self.frame.width,_height: sizedBoxHeight))
                //MARK: -
            case .pushUp:
                var sizedBoxHeight = self.VStackGetPushHeight(views: self.views)
                for index in 0...views.count - 1 {
                  
                    self.addArrangedSubview(views[index])
                    
                }
                self.addArrangedSubview(SizedBox(_width: self.frame.width, _height: sizedBoxHeight))
                //MARK: -
            case .pushDown:
                var sizedBoxHeight = self.VStackGetPushHeight(views: self.views)
                self.addArrangedSubview(SizedBox(_width: self.frame.width, _height: sizedBoxHeight))
                for index in 0...views.count - 1 {
                  
                    self.addArrangedSubview(views[index])
                    
                }
             
            case .manual:
                
                var spaceCountEven = false
                var spacerCounter = 0
                for index in 0...views.count - 1 {
                    if  self.getViewType(view: views[index]) == .Spacer {
                        spacerCounter = spacerCounter + 1
                    }
                }
                var newViews = [UIView]()
                for index in 0...self.views.count - 1 {
                    if self.getViewType(view: self.views[index]) != .Spacer {
                        newViews.append(self.views[index])
                    } else {
                        
                    }
                   
                }
               
                
                var sizedBoxHeight = self.VStackGetSizedBoxManual(views: newViews, spacerCount: spacerCounter)
          
                

                for index in 0...views.count - 1 {
                    if self.getViewType(view: self.views[index]) != .Spacer {
                        self.addArrangedSubview(views[index])
                    } else {
                        self.addArrangedSubview(SizedBox(_width: self.frame.width, _height: sizedBoxHeight))
                    }
                  
                    
                }
                
                
                
                
               
           
                
            }
                
            }
        }
       
       
      
        
    }
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
