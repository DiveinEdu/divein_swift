// Playground - noun: a place where people can play

import UIKit

var tView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
tView.backgroundColor = UIColor.redColor()

var button: UIButton = UIButton.buttonWithType(UIButtonType.InfoDark) as UIButton
button.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
tView.addSubview(button as UIView)