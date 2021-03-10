import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }
    
    func setData(title: String, text: String, created_at: Date?, id: UUID?) {
        let now = Date()
        self.setValuesForKeys(["title": title, "text": text, "created_at": created_at ?? now, "last_update": now, "id": id ?? UUID()])
    }

    @NSManaged public var created_at: NSDate?
    @NSManaged public var id: UUID?
    @NSManaged public var last_update: NSDate?
    @NSManaged public var text: String?
    @NSManaged public var title: String?

}


