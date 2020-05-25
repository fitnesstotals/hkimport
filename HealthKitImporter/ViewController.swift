//
//  ViewController.swift
//  HealthKitImporter
//
//  Created by boaz saragossi on 11/7/17.
//  Copyright © 2017 boaz saragossi. All rights reserved.
//

import UIKit
import os.log

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var readCounter: UILabel!
    @IBOutlet weak var writeCounter: UILabel!

    var dataImporter = Importer()

    @IBAction func start(_ sender: Any) {
        dataImporter = Importer {
            if let path = Bundle.main.url(forResource: "export", withExtension: "xml") {
                if let parser = XMLParser(contentsOf: path) {
                    parser.delegate = self.dataImporter
                    self.dataImporter.readCounterLabel  = self.readCounter
                    self.dataImporter.writeCounterLabel = self.writeCounter
                    parser.parse()
                    self.dataImporter.saveAllSamples()
                }
            } else {
                os_log("File not found")
            }
        }
    }
}
