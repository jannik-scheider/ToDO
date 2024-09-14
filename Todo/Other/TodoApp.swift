//
//  TodoApp.swift
//  Todo
//
//  Created by Jannik Scheider on 05.04.24.
//
import FirebaseCore
import SwiftUI

@main
struct TodoApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
