//
//  PanModalPresentable+Defaults.swift
//  PanModal
//
//  Copyright © 2018 Tiny Speck, Inc. All rights reserved.
//

import UIKit

/**
 Default values for the PanModalPresentable.
 */
public extension PanModalPresentable where Self: UIViewController {
    var presentStyle: PanModalPresentStyle {
        return .present
    }
    
    var topOffset: CGFloat {
        return topLayoutOffset + 21.0
    }

    var shortFormHeight: PanModalHeight {
        return longFormHeight
    }

    var longFormHeight: PanModalHeight {

        guard let scrollView = panScrollable
            else { return .maxHeight }

        // called once during presentation and stored
        scrollView.layoutIfNeeded()
        return .contentHeight(scrollView.contentSize.height)
    }

    var springDamping: CGFloat {
        return 0.8
    }

    var panModalBackgroundColor: UIColor {
        return UIColor.black.withAlphaComponent(0.7)
    }

    var dragIndicatorBackgroundColor: UIColor {
        return UIColor.clear
    }
    
    var scrollIndicatorInsets: UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: bottomLayoutOffset, right: 0)
    }

    var anchorModalToLongForm: Bool {
        return true
    }

    var allowsExtendedPanScrolling: Bool {

        guard let scrollView = panScrollable
            else { return false }

        scrollView.layoutIfNeeded()
        return scrollView.contentSize.height > (scrollView.frame.height - bottomLayoutOffset)
    }

    var allowsDragToDismiss: Bool {
        return true
    }
    
    var allowsTapToDismiss: Bool {
        return true
    }
    
    var allowScrollViewDragToDismiss: Bool {
        return true
    }

    var isUserInteractionEnabled: Bool {
        return true
    }

    var showDragIndicator: Bool {
        return true
    }
    
    var panCustomTopView: PanCustomTopView? {
        return nil
    }
    
    var indicatorColor: UIColor {
        return UIColor(red: 241/255.0, green: 243/255.0, blue: 245/255.0, alpha: 1)
    }

    func shouldRespond(to panModalGestureRecognizer: UIPanGestureRecognizer) -> Bool {
        return true
    }

    func willRespond(to panModalGestureRecognizer: UIPanGestureRecognizer) {

    }

    func shouldTransition(to state: PanModalPresentationState) -> Bool {
        return true
    }

    func shouldPrioritize(panModalGestureRecognizer: UIPanGestureRecognizer) -> Bool {
        return false
    }

    func willTransition(to state: PanModalPresentationState) {

    }

    func panModalWillDismiss() {

    }

}
