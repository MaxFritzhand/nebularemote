//
//  Set+Cancellable.swift
//  nebularemote
//
//  Created by Max Fritzhand on 12/20/22.
//

import Combine

extension Set where Element: Cancellable {

    func cancel() {
        forEach { $0.cancel() }
    }
}

