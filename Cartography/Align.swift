//
//  Align.swift
//  Cartography
//
//  Created by Robert Böhnke on 17/02/15.
//  Copyright (c) 2015 Robert Böhnke. All rights reserved.
//

#if os(iOS)
import UIKit
#else
import AppKit
#endif

private func makeEqual<P: RelativeEquality>(attribute: LayoutProxy -> P, first: LayoutProxy, rest: [LayoutProxy]) -> [NSLayoutConstraint] {
    return reduce(rest, []) { acc, current in
        current.view.car_translatesAutoresizingMaskIntoConstraints = false

        return acc + [ attribute(first) == attribute(current) ]
    }
}

/// Aligns multiple views by their top edge.
///
/// All views passed to this function will have
/// their `translatesAutoresizingMaskIntoConstraints` properties set to `false`.
///
/// :returns: An array of `NSLayoutConstraint` instances.
///
public func align(top first: LayoutProxy, rest: LayoutProxy...) -> [NSLayoutConstraint] {
    return makeEqual({ $0.top }, first, rest)
}

/// Aligns multiple views by their right edge.
///
/// All views passed to this function will have
/// their `translatesAutoresizingMaskIntoConstraints` properties set to `false`.
///
/// :returns: An array of `NSLayoutConstraint` instances.
///
public func align(right first: LayoutProxy, rest: LayoutProxy...) -> [NSLayoutConstraint] {
    return makeEqual({ $0.right }, first, rest)
}

/// Aligns multiple views by their bottom edge.
///
/// All views passed to this function will have
/// their `translatesAutoresizingMaskIntoConstraints` properties set to `false`.
///
/// :returns: An array of `NSLayoutConstraint` instances.
///
public func align(bottom first: LayoutProxy, rest: LayoutProxy...) -> [NSLayoutConstraint] {
    return makeEqual({ $0.bottom }, first, rest)
}

/// Aligns multiple views by their left edge.
///
/// All views passed to this function will have
/// their `translatesAutoresizingMaskIntoConstraints` properties set to `false`.
///
/// :returns: An array of `NSLayoutConstraint` instances.
///
public func align(left first: LayoutProxy, rest: LayoutProxy...) -> [NSLayoutConstraint] {
    return makeEqual({ $0.left }, first, rest)
}

/// Aligns multiple views by their leading edge.
///
/// All views passed to this function will have
/// their `translatesAutoresizingMaskIntoConstraints` properties set to `false`.
///
/// :returns: An array of `NSLayoutConstraint` instances.
///
public func align(leading first: LayoutProxy, rest: LayoutProxy...) -> [NSLayoutConstraint] {
    return makeEqual({ $0.leading }, first, rest)
}

/// Aligns multiple vies by their trailing edge.
///
/// All views passed to this function will have
/// their `translatesAutoresizingMaskIntoConstraints` properties set to `false`.
///
/// :returns: An array of `NSLayoutConstraint` instances.
///
public func align(trailing first: LayoutProxy, rest: LayoutProxy...) -> [NSLayoutConstraint] {
    return makeEqual({ $0.trailing }, first, rest)
}

/// Aligns multiple views by their horizontal center.
///
/// All views passed to this function will have
/// their `translatesAutoresizingMaskIntoConstraints` properties set to `false`.
///
/// :returns: An array of `NSLayoutConstraint` instances.
///
public func align(centerX first: LayoutProxy, rest: LayoutProxy...) -> [NSLayoutConstraint] {
    return makeEqual({ $0.centerX }, first, rest)
}

/// Aligns multiple views by their vertical center.
///
/// All views passed to this function will have
/// their `translatesAutoresizingMaskIntoConstraints` properties set to `false`.
///
/// :returns: An array of `NSLayoutConstraint` instances.
///
public func align(centerY first: LayoutProxy, rest: LayoutProxy...) -> [NSLayoutConstraint] {
    return makeEqual({ $0.centerY }, first, rest)
}

/// Aligns multiple views by their baseline.
///
/// All views passed to this function will have
/// their `translatesAutoresizingMaskIntoConstraints` properties set to `false`.
///
/// :returns: An array of `NSLayoutConstraint` instances.
///
public func align(baseline first: LayoutProxy, rest: LayoutProxy...) -> [NSLayoutConstraint] {
    return makeEqual({ $0.baseline }, first, rest)
}
