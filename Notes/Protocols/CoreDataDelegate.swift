
import CoreData

protocol NoteCoreDataDelegate {
    static var appDelegate: AppDelegate { get }
    static func retrieveData() -> [Note]?
    static func createData(title: String, text: String, created_at: Date?, last_update: Date?)
    static func updateData(title: String, text: String, id: UUID)
    static func deleteData(note: Note)
}
