import QuartzCore 
 
import UIKit

public enum HStackType {
    case equalSpacing
    case pushLeft
    case pushRight
    case manual
}
public enum WidthType {
    case fit
    case superView
    case value
    
}
public class HStack : UIStackView {
    public var views = [UIView]()
    public var type : HStackType = .equalSpacing
    public var _width : CGFloat = 0
    public var _height : CGFloat = 0
    public var widthType: WidthType = .superView
    public init(
        type : HStackType,
        widthType: WidthType = .superView,
        _width: CGFloat? = nil,
        _widthExpanded : Bool = false,
        _height: CGFloat? = nil,
        
        
        views : [UIView]
    ) {
        super.init(frame: .zero)
        
   
        self.widthType = widthType
        self.views = views
        self.type = type
        self.distribution = .fillProportionally
        self.axis = .horizontal
        self.alignment = .center
        self.spacing = 0
        
        self.tag = 202
        
        if let theWidth = _width {
            self._width = theWidth
        }
        if let theHeight = _height {
            self._height = theHeight
        }
        
        UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
      
      
        if self._height != 0 {
            
            self.heightAnchor.constraint(equalToConstant: self._height).isActive = true
            if Quartz.shared.mode == .developer {
                print("HStack Set Height to \(self._height))")
            }
        } else {
            
            self.heightAnchor.constraint(equalToConstant: self.getHeight(views: self.views)).isActive = true
            if Quartz.shared.mode == .developer {
                print("HStack Set Height to \(self.getHeight(views: self.views))")
            }
            self._height = self.getHeight(views: self.views)
            
        }
        
        
            
           
        
            
            
        
        
        
        
        
    }
    override public func layoutSubviews() {
        self.setState()
    }
    public func setState() {
        
        if self.frame != .zero {
            
        
        
        for arrangedSubView in self.arrangedSubviews {
            self.removeArrangedSubview(arrangedSubView)
        }
        
            
            if self._width != 0 {
                
                self.widthAnchor.constraint(equalToConstant: self._width).isActive = true
                if Quartz.shared.mode == .developer {
                    print("HStack Set Width to \(self._width))")
                }
            } else {
                
                switch self.widthType {
                    
               
                case .fit:
                    self.widthAnchor.constraint(equalToConstant: self.getWidth(views: self.views)).isActive = true
                case .superView:
                    if let superView = self.superview {
                        self.widthAnchor.constraint(equalToConstant: superView.frame.width).isActive = true
                    }
                   
                case .value:
                    self.widthAnchor.constraint(equalToConstant: self._width).isActive = true
                }
                
              
                if Quartz.shared.mode == .developer {
                    print("HStack Set Width to \(self.getWidth(views: self.views))")
                }
            }
            
            
        switch type {
            //MARK: -
        case .equalSpacing:
            var sizedBoxWidth = self.HStackGetSizedBox(views: self.views)
            if Quartz.shared.mode == .developer {
                print("SizedBox Width: \(sizedBoxWidth)")
            }
            for index in 0...views.count - 1 {
                
                self.addArrangedSubview(StackSizedBox(_width: sizedBoxWidth, _height: self.frame.height))
                
                self.addArrangedSubview(views[index])
            }
            self.addArrangedSubview(StackSizedBox(_width: sizedBoxWidth,_height: self.frame.height))
            //MARK: -
        case .pushLeft:
            var sizedBoxWidth = self.HStackGetPushWidth(views: self.views)
            for index in 0...views.count - 1 {
              
                self.addArrangedSubview(views[index])
                
            }
            self.addArrangedSubview(StackSizedBox(_width: sizedBoxWidth, _height: self.frame.height))
            //MARK: -
        case .pushRight:
            
            var sizedBoxWidth = self.HStackGetPushWidth(views: self.views)
            
            self.addArrangedSubview(StackSizedBox(_width: sizedBoxWidth, _height: self.frame.height))
            
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
           
            
            var sizedBoxWidth = self.HStackGetSizedBoxManual(views: newViews, spacerCount: spacerCounter)
      
            

            for index in 0...views.count - 1 {
           
                if self.getViewType(view: self.views[index]) != .Spacer {
                    self.addArrangedSubview(views[index])
                } else {
                    self.addArrangedSubview(StackSizedBox(_width: sizedBoxWidth, _height: self.frame.height))
                }
              
                
            }
            
            
        
         
            
           
       
            
        }
            
        }
       
      
        
    }
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
