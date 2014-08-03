//import UIKit
//
//NSLog("sdfdsf")
//
//let lightOrange:UIColor = UIColor(red: 0.996, green: 0.467, blue: 0.224, alpha: 1)
//let medOrange:UIColor = UIColor(red: 0.973, green: 0.338, blue: 0.173, alpha: 1)
//let darkOrange:UIColor = UIColor(red: 0.7, green: 0.2, blue: 0.1, alpha: 1)
//let green:UIColor = UIColor(red: 0.251, green: 0.831, blue: 0.494, alpha: 1)
//let white:UIColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
//
//
//class MyTableViewCell: UITableViewCell {
//    let lightOrange:UIColor = UIColor(red: 0.996, green: 0.467, blue: 0.224, alpha: 1)
//    let medOrange:UIColor = UIColor(red: 0.973, green: 0.338, blue: 0.173, alpha: 1)
//    let darkOrange:UIColor = UIColor(red: 0.7, green: 0.2, blue: 0.1, alpha: 1)
//    
//    init(style: UITableViewCellStyle, reuseIdentifier: String) {
//        super.init(style: UITableViewCellStyle.Subtitle, reuseIdentifier: reuseIdentifier)
//        
//        self.textLabel.textColor = UIColor.whiteColor()
//        self.backgroundColor = medOrange
//        self.selectionStyle = UITableViewCellSelectionStyle.None
//    }
//}
//
//var tableView = UITableView(frame: CGRectMake(0, 100, 400, 500), style: UITableViewStyle.Plain)
//var textField = UITextField(frame: CGRectMake(0, 0, 400, 100))
//var tableViewData = [String]()
//
//tableView.backgroundColor = darkOrange
//
//tableView.registerClass(MyTableViewCell.self, forCellReuseIdentifier: "mycell")
//tableView.separatorStyle = UITableViewCellSeparatorStyle.SingleLine
//
//
//
//textField.backgroundColor = lightOrange
//
//let viewController = UIViewController()
//
//viewController.view
//
//viewController.view.addSubview(tableView)
//
//viewController.view
//
//viewController.view.addSubview(textField)
//
//viewController.view
//
//class ActionDelegate: NSObject, UITableViewDelegate, UITextFieldDelegate {
//    // the method here looks weird
//    // why is ! sign, 
//    // why didSelectRowAtIndexPath and indexPath has space?
//    //
//    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath){
//        println("view got clicked!")
//    }
//    
//    func textFieldShouldReturn(textField: UITextField!) -> Bool {
////        tableViewData.append(textField.text)
////        viewController.view.
//        return true
//    }
//    
//}
////
//let actionDelegate = ActionDelegate();
////
////// setup delegates
//tableView.delegate = actionDelegate
//textField.text = "test"
//
//viewController.view


var a = "A"
var b = "B"

func swap<T>(inout a:T, inout with b:T) {
    return (a, b) = (b, a)
}

swap(&a, &b)

a
b