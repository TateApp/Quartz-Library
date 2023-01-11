import QuartzCore 
 
import UIKit


public enum VStackType {
    case equalSpacing
    case pushUp
    case pushDown
    case manual
}
public class VStack : UIStackView {
    public var views = [UIView]()
    public var type : VStackType = .equalSpacing
    public var _width : CGFloat = 0
    public var _height : CGFloat = 0
    
    
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
            if Quartz.shared.mode == .developer {
                print("Width Set")
            }
        }
        if let height = _height {
            self._height = height
            if Quartz.shared.mode == .developer {
                print("height Set")
            }
        }
        self.distribution = .fillProportionally
        self.axis = .vertical
        self.alignment = .center
        self.spacing = 0
        
        self.tag = 203
        
        UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if self._width != 0 {
            
            self.widthAnchor.constraint(equalToConstant: self._width).isActive = true
            
        } else {
            
            self.widthAnchor.constraint(equalToConstant: self.getWidth(views: self.views)).isActive = true
            
        }
      
        if self._height != 0 {
            
            self.widthAnchor.constraint(equalToConstant: self._height).isActive = true
            
        } else {
            
            self.heightAnchor.constraint(equalToConstant: self.getHeight(views: self.views)).isActive = true
            
        }
        
            
        
        
            
           
        
            
            
        
        
        
        
        
    }
    override public func layoutSubviews() {
        self.setState()
    }
    public func setState() {
        
        if let superView = self.superview {
            if Quartz.shared.mode == .developer {
                print("Set State")
            }
           
          
            
            if self.frame != .zero {
                
            
            for arrangedSubView in self.arrangedSubviews {
                self.removeArrangedSubview(arrangedSubView)
            }
        
                
            switch type {
                //MARK: -
            case .equalSpacing:
                if Quartz.shared.mode == .developer {
                    print("Here")
                }
                var sizedBoxHeight = self.VStackGetSizedBox(views: self.views)
            
                if Quartz.shared.mode == .developer {
                    print("SizedBox Height: \(sizedBoxHeight)")
                }
                
                for index in 0...views.count - 1 {
                    self.addArrangedSubview(StackSizedBox(_width: self.frame.width, _height: sizedBoxHeight))
                    self.addArrangedSubview(views[index])
                }
                self.addArrangedSubview(StackSizedBox(_width: self.frame.width,_height: sizedBoxHeight))
                //MARK: -
            case .pushUp:
                var sizedBoxHeight = self.VStackGetPushHeight(views: self.views)
                for index in 0...views.count - 1 {
                  
                    self.addArrangedSubview(views[index])
                    
                }
                self.addArrangedSubview(StackSizedBox(_width: self.frame.width, _height: sizedBoxHeight))
                //MARK: -
            case .pushDown:
                var sizedBoxHeight = self.VStackGetPushHeight(views: self.views)
                self.addArrangedSubview(StackSizedBox(_width: self.frame.width, _height: sizedBoxHeight))
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
                        self.addArrangedSubview(StackSizedBox(_width: self.frame.width, _height: sizedBoxHeight))
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
