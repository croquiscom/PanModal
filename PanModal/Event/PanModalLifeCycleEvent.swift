import Combine

public enum PanModalLifeCycleEvent {
    case willPresent(viewController: UIViewController)
    case didPresent(viewController: UIViewController)
    case willDismiss(viewController: UIViewController)
    case didDismiss(viewController: UIViewController)
}

@available(iOS 13.0, *)
public final class PanModalLifeCycleEventPublisher {
    public static let shared = PanModalLifeCycleEventPublisher()
    
    public let publisher = PassthroughSubject<PanModalLifeCycleEvent, Never>()
    
    private init() {}
    
    func notify(_ event: PanModalLifeCycleEvent) {
        publisher.send(event)
    }
}
