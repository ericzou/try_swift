import UIKit

class MyTableViewCell: UITableViewCell {
    let lightOrange:UIColor = UIColor(red: 0.996, green: 0.467, blue: 0.224, alpha: 1)
    let medOrange:UIColor = UIColor(red: 0.973, green: 0.338, blue: 0.173, alpha: 1)
    let darkOrange:UIColor = UIColor(red: 0.7, green: 0.2, blue: 0.1, alpha: 1)
    
    init(style: UITableViewCellStyle, reuseIdentifier: String) {
        super.init(style: UITableViewCellStyle.Subtitle, reuseIdentifier: reuseIdentifier)
        
        self.textLabel.textColor = UIColor.whiteColor()
        self.backgroundColor = medOrange
        self.selectionStyle = UITableViewCellSelectionStyle.None
    }
}
