import UIKit
import Combine

extension PanModalPresentationController {
    // MARK: - Internal Event Emitters
    func notifyWillPresent() {
        (presentedViewController as? PanModalPresentable)?.panModalWillPresent()
        if #available(iOS 13.0, *) {
            PanModalLifeCycleEventPublisher.shared.notify(.willPresent(viewController: presentedViewController))
        }
    }
    
    func notifyDidPresent() {
        (presentedViewController as? PanModalPresentable)?.panModalDidPresent()
        if #available(iOS 13.0, *) {
            PanModalLifeCycleEventPublisher.shared.notify(.didPresent(viewController: presentedViewController))
        }
    }
    
    func notifyWillDismiss() {
        (presentedViewController as? PanModalPresentable)?.panModalWillDismiss()
        if #available(iOS 13.0, *) {
            PanModalLifeCycleEventPublisher.shared.notify(.willDismiss(viewController: presentedViewController))
        }
    }
    
    func notifyDidDismiss() {
        (presentedViewController as? PanModalPresentable)?.panModalDidDismiss()
        if #available(iOS 13.0, *) {
            PanModalLifeCycleEventPublisher.shared.notify(.didDismiss(viewController: presentedViewController))
        }
    }
}
