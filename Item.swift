
import UIKit

class Item: NSObject {
    var name: String
    var valueInDollars: Int
    var serialNumber: String?
    let dateCreated: Date

    init(name: String, valueInDollars: Int, serialNumber: String?) {
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = Date()
        
        super.init()
    }
    
    convenience init(random: Bool = false) {
        let adjectives = ["Fluffy", "Warm", "Cool", "Sexy"]
        let nouns = ["Fork", "Orange", "Sweater", "Banana"]
        
        var idx = arc4random_uniform(UInt32(adjectives.count))
        let randomAdjective = adjectives[Int(idx)]
        
        idx = arc4random_uniform(UInt32(nouns.count))
        let randomNoun = nouns[Int(idx)]
        
        let serialNumber = UUID().uuidString.components(separatedBy: "-").first!
        let randomName = "\(randomNoun) \(randomAdjective)"
        
        let randomValue = Int(arc4random_uniform(100))
        
        self.init(name: randomName, valueInDollars: randomValue, serialNumber: serialNumber)
        
        
    }
}
