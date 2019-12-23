
import UIKit


public struct PopUp {
    
    
    public static func setPopUpPosition(_ parentVC: UIViewController, popOverVC: UIViewController) {
            popOverVC.view.center = CGPoint(x: parentVC.view.bounds.midX, y: parentVC.view.bounds.midY)
            popOverVC.didMove(toParent: parentVC)
            parentVC.addChild(popOverVC)
            parentVC.view.addSubview(popOverVC.view)
        
    
    }
    
   public static func showPopUpAnimated(vc: UIViewController) {
          vc.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
          vc.view.alpha = 0.0;
          UIView.animate(withDuration: 0.25, animations: {
              vc.view.alpha = 1.0
              vc.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
          });
    }
      
   public static func removePopUpAnimated(vc: UIViewController) {

          UIView.animate(withDuration: 0.25, animations: {
              vc.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
              vc.view.alpha = 0.0;
          }, completion:{(finished : Bool)  in
              if (finished)
              {
                  vc.view.removeFromSuperview()
              }
          });
    }
    
}



