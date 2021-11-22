//
//  PolarisApp.swift
//  Polaris
//
//  Created by Abigail De Micco on 15/11/21.
//

import SwiftUI
import CoreData

@main
struct PolarisApp: App {
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
                      ContentView()
                .environment(\.managedObjectContext, PolarisApp.persistentContainer.viewContext)
           // ThoughtView()
        }
        .onChange(of: scenePhase) { phase in //quandi cambi pagina salva il contesto
            switch phase {
            case .active:
                print("active")
            case .inactive:
                print("inactive")
            case .background:
                print("background")
                saveContext()
                break
            @unknown default:
                print("other cases")
                break
            }
        }
    }
    
    static var persistentContainer: NSPersistentContainer = { //collega il container al db
        let container = NSPersistentContainer(name: "PolarisDB")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    func saveContext() { //salva il contenuto della variabile context nel db
        let context = PolarisApp.persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}
