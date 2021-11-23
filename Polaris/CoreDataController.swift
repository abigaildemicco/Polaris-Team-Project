//
//  CoreDataController.swift
//  Polaris
//
//  Created by Abigail De Micco on 20/11/21.
//
// How to use:
//     DELETE SOMETHING BY REASON     CoreDataController.shared.deleteSurveys(reason: "stress")
//     ADD SOMETHING          CoreDataController.shared.addDailySurvey(mood: "bad", reason: "Travel")

import Foundation
import CoreData
import UIKit
import simd

class CoreDataController { //serve a comunicare con il database (è il postino)
    static let shared = CoreDataController() //shared perché è static cioè condivisa con tutto il progetto

    private var context: NSManagedObjectContext //contiene i dati da salvare sul db

    private init() {
        self.context = PolarisApp.persistentContainer.viewContext //stabilisce che context è uguale al persistent container
    }
    
    func addDailySurvey(mood: String, reason: String) { //salva il sondaggio che stai facendo sul db
        let correctMood = Emojis.contains { Emoji in
            Emoji.description == mood
        }
        let correctReason = Reasons.contains { Reason in
            Reason.name == reason
        }
        guard correctMood && correctReason else { print("Add failed for incorrect attribute's value"); return }
        
        let day = Int64(Date().timeIntervalSince1970)
        
        let entity = NSEntityDescription.entity(forEntityName: "DailySurvey", in: self.context)
        let newDailySurvey = DailySurvey(entity: entity!, insertInto: self.context)
        newDailySurvey.date = day
        newDailySurvey.mood = mood
        newDailySurvey.reason = reason
        
        do {
            try self.context.save()
        }
        catch let error {
            print("Saving problem DailySurvey: \(newDailySurvey.date) in memory\n")
            print("Error: \n \(error)\n")
        }
        
        print("DailySurvey \(newDailySurvey.date) saved correctly in memory\n")
    }
    
    func loadLastWeekDailySurveys() -> [DailySurvey] { //legge dal db i sondaggi dell'ultima settimana
        print("Get dailySurveys of last week from context")
        
        let currentDate = Calendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: Date())!
        let oneWeekAgo = Calendar.current.date(byAdding: .day, value: -7, to: currentDate)
        
        let startDay = Int64(oneWeekAgo!.timeIntervalSince1970)
        
        let fetchRequest : NSFetchRequest<DailySurvey> = DailySurvey.fetchRequest()
        fetchRequest.returnsObjectsAsFaults = false
            
        let predicate: NSPredicate = NSPredicate(format: "date > %i", startDay)
        fetchRequest.predicate = predicate
        
        do {
            let lastWeekSurveys = try self.context.fetch(fetchRequest)
            
            guard lastWeekSurveys.count > 0 else { print("No elements to read"); return [] }
            for x in lastWeekSurveys {
                print("date: \(x.date), mood: \(x.mood!), reason: \(x.reason!)")
            }
            
            return lastWeekSurveys
        } catch let error {
            print("Execution problem for FetchRequest\n")
            print("Error: \n \(error)\n")
            return []
        }
    }
    
    func loadTodaySurvey() -> DailySurvey? { //legge il sondaggio di oggi
        print("Get last dailySurvey from context")
        
        let currentDate = Calendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: Date())!
        
        let startDay = Int64(currentDate.timeIntervalSince1970)
        
        let fetchRequest : NSFetchRequest<DailySurvey> = DailySurvey.fetchRequest()
        fetchRequest.returnsObjectsAsFaults = false
            
        let predicate = NSPredicate(format: "day > %@", startDay)
        fetchRequest.predicate = predicate
        
        do {
            let lastDailySurvey = (try self.context.fetch(fetchRequest))[0]
            print("DailySurvey \(lastDailySurvey.date) - Mood: \(lastDailySurvey.mood!) - Reason: \(lastDailySurvey.reason!)")
            
            return lastDailySurvey
        } catch let error {
            print("Execution problem for FetchRequest\n")
            print("Error: \n \(error)\n")
            return nil
        }
    }
    
    func deleteSurveys(reason: String) {
        let surveys = self.loadDailySurveysFromReason(reason: reason)
        for survey in surveys {
            self.context.delete(survey)
        }
        do {
            try self.context.save()
        } catch let errore {
            print("[CDC] Problema eliminazione libro ")
            print("  Stampo l'errore: \n \(errore) \n")
        }
    }
    
    func loadDailySurveysFromReason(reason: String) -> [DailySurvey] {
        let request: NSFetchRequest<DailySurvey> = NSFetchRequest(entityName: "DailySurvey")
        request.returnsObjectsAsFaults = false
        
        let predicate = NSPredicate(format: "reason = %@", reason)
        request.predicate = predicate
        
        var dailySurveys = [DailySurvey]()
            do {
                dailySurveys = try self.context.fetch(request)
                
                guard dailySurveys.count > 0 else {print("[CDC] Non ci sono elementi da leggere "); return []}
                
            } catch let errore {
                print("[CDC] Problema esecuzione FetchRequest")
                print("  Stampo l'errore: \n \(errore) \n")
            }
            
        return dailySurveys
    }
}
