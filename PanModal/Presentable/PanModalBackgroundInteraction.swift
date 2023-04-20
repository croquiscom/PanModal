import Foundation

/** Describes the user interaction events that are triggered as the user taps the background */
public enum PanModalBackgroundInteraction: Equatable {

    /** Taps dismiss the modal immediately */
    case dismiss

    /** Touches are forwarded to the lower window (In most cases it would be the application main window that will handle it */
    case forward

     /** Absorbs touches. The modal does nothing (Swallows the touch) */
    case none

}
