
import UIKit

class ItemStore: NSObject {
    var allItems = [Item]()
    
    
    override init() {
        super.init()
        for _ in 0..<5 {
            createItem()
        }
    }
    
    @discardableResult func createItem() -> Item{
        let item = Item(random: true)
        allItems.append(item)
        
        return item
    }
    
    @discardableResult func removeItem(i: Int ) -> Item{
        let deletedItem = allItems.remove(at: i)
                
        return deletedItem
    }
    
    func moveItem(from fromIndex: Int, to toIndex: Int){
        let itemAtIndex = allItems[fromIndex]
        
        allItems.remove(at: fromIndex)
        allItems.insert(itemAtIndex, at: toIndex)
    }
    
    
}
