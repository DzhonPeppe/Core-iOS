//
//  ViewController.swift
//  PartyVJApp
//
//  Created by John Peppe on 6/5/17.
//  Copyright © 2017 John Peppe. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock] ()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "https://v-ticket.com.ua/dynamic/event/gallery/029783_normal.jpg?v=81d9d3eeaaef", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/MoVfs59SlVQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Крепкие Oрешки")
        let p2 = PartyRock(imageURL: "https://blogs-images.forbes.com/hughmcintyre/files/2015/03/Screenshot-2015-03-11-at-5.00.22-PM.jpg?width=960", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OPf0YbXqDm0\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Bruno Mars- Uptown Funk")
        let p3 = PartyRock(imageURL: "http://www.europaplus.ru/upload/thumb/performer_308x308/001/004/00328/4fc4ac883acca_ELKAT.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mV5xJT7BnzE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Eлка - Прованс")
        let p4 = PartyRock(imageURL: "https://i.ytimg.com/vi/ufbHJjGJfeI/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nfWlot6h_JM\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Taylor Swift - Shake It Off")
        let p5 = PartyRock(imageURL: "http://stuki-druki.com/facts1/images/Elka-01.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zy5pKrUBUN4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Ёлка - На воздушном шаре")
        
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
       
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
            
        } else {
            return UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC{
            
            if let party = sender as? PartyRock {
                destination.partyRock = party
            }
            
        }
    }
    
    }



