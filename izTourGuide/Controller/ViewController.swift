//
//  ViewController.swift
//  izTourGuide
//
//  Created by Izzat Jabali on 13/1/21.
//

import UIKit

class ViewController: UIViewController {

    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    @IBOutlet weak var tableView: UITableView!
    
    var places = [Place]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get the places from core data
        do {
        places = try context.fetch(Place.fetchRequest())
        } catch {
            print("Couldnt fetch places from our database")
        }
        
        // Set viewController as the delegate and data source of the tableView
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return 
    }
    
    
    
}

