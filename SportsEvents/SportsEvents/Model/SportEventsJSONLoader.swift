//
//  SportEventsJSONLoader.swift
//  SportsEvents
//
//  Created by Mandy Rogers on 4/5/18.
//  Copyright © 2018 Mandy Rogers. All rights reserved.
//

import UIKit

class SportEventsJSONLoader {
    
    class func load(fileName: String) -> [SportsEvent] {
        var events = [SportsEvent]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
                events = SportsEventsJSONParser.parse(data)
        }
        
        return events
    }
}
