//
//  ViewController.swift
//  TableViewApp
//
//  Created by Daniel Olmo on 8/4/20.
//  Copyright © 2020 Daniel Olmo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let danielFavPieces = ["Liebestraum No. 3, Liszt", "Liebesleid, Kreisler arr. Rachmaninoff", "Arabesque No. 1, Debussy", "Reverie, Debussy", "Nocturne Op. 9 No. 2, Chopin", "Clair de Lune, Debussy", "Etude Op. 10 No. 4, Chopin", "Etude Op. 10 No. 4, Chopin", "Traumerei, Schumann", "Sonata No. 7 in D Major, Op 10. No. 3, Beethoven"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return danielFavPieces.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCellID")
        cell?.textLabel?.text = danielFavPieces[indexPath.row]
        return cell!
    }
}

