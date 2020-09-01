//
//  Transaction.swift
//  Money App
//
//  Created by Дмитрий Котырло on 07.07.2020.
//  Copyright © 2020 _vyshnevskyi. All rights reserved.
//

import UIKit
import Foundation
import CoreData

struct Transaction {
    var activity: String
    var detail: String
    var date: String
    var type: TransactionType
    var amount: Double
    var location: String
    
    init() {
        activity = ""
        detail = ""
        date = ""
        type = .expense
        amount = 0.0
        location = ""
    }
    
    init(activity: String, detail: String = "", date: String, type: TransactionType, amount: Double = 0, location: String = "") {
        self.activity = activity
        self.detail = detail
        self.date = date
        self.type = type
        self.amount = amount
        self.location = location
    }
}

extension Transaction {
    enum TransactionType: Int {
        case income = 0
        case expense = 1
    }
}

// mock data
//var mockTransactions: [Transaction] = [
//    Transaction(activity: "Buy Swift Book", detail: "Too expensive!", date: "10 April 2020", type: .expense, amount: 300.00, location: "Manchester, England, United Kingdom"),
//    Transaction(activity: "Scholarship", detail: "Wow, so cool~", date: "30 March 2020", type: .income, amount: 500.00, location: "Nanjing, China"),
//]

class TransactionStore {
    
    private var transactions: [TransactionR] = []
    private var fetchResultController: NSFetchedResultsController<TransactionR>!
    
    // singleton
    static let shared = TransactionStore()
    
    private init() {
        // load data
        let fetchRequest: NSFetchRequest<TransactionR> = TransactionR.fetchRequest()
        let sortDescriptor = NSSortDescriptor(key: "title", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        if let appDelegate = (UIApplication.shared.delegate as? AppDelegate) {
            let context = appDelegate.persistentContainer.viewContext
            fetchResultController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        }
    }
    
    
}

