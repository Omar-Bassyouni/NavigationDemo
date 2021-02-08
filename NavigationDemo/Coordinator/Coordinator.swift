//
//  Coordinator.swift
//  NavigationDemo
//
//  Created by Omar Bassyouni on 08/02/2021.
//

import SwiftUI

class Coordinator {
    let router: Router
    
    init(router: Router) {
        self.router = router
    }
}

extension Coordinator: ContentViewWantsGoSomewhere {
    func button1GoSomeWhere() {
        router.present(UIHostingController(rootView: View1()))
    }
    
    func button2GoSomeWhere() {
        let view = View2()
        router.present(UIHostingController(rootView: view))
    }
}
