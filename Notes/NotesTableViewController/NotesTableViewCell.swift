import UIKit

class NotesTableViewCell: UITableViewCell {
    static let reuse_id = "NotesTableViewCell"
    
    var note : Note? {
        didSet {
            noteTitleLabel.text = note!.title
        }
    }
    
    private let noteTitleLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        uiSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func uiSetup() {
        contentView.addSubview(noteTitleLabel)
        
        noteTitleLabel.anchor(top: nil, left: contentView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
        noteTitleLabel.anchor(centerX: nil, centerY: contentView.centerYAnchor)
        
    }
    

}
