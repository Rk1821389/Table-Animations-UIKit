//
//  TableViewAnimations.swift
//  TableAnimations
//
//  Created by Manoj kumar on 10/02/23.
//

import UIKit

enum TableViewAnimationType {
    case fade
    case rightToLeft
    case leftToRight
    case topToBottom
    case bottomToTop
    case scaleUp
    case rotate
    case bounce 
}

class TableViewAnimations {
    
    static func animateTableView(tableView: UITableView, animationType: TableViewAnimationType) {
        switch animationType {
        case .fade:
            tableView.reloadData()
            let cells = tableView.visibleCells
            let tableViewHeight = tableView.bounds.size.height
            
            for cell in cells {
                cell.alpha = 0
            }
            
            var delayCounter = 0
            for cell in cells {
                UIView.animate(withDuration: 1.75, delay: Double(delayCounter) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                    cell.alpha = 1
                }, completion: nil)
                delayCounter += 1
            }
        case .rightToLeft:
            tableView.reloadData()
            let cells = tableView.visibleCells
            let tableViewWidth = tableView.bounds.size.width
            
            for cell in cells {
                cell.transform = CGAffineTransform(translationX: tableViewWidth, y: 0)
            }
            
            var delayCounter = 0
            for cell in cells {
                UIView.animate(withDuration: 1.75, delay: Double(delayCounter) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                    cell.transform = CGAffineTransform.identity
                }, completion: nil)
                delayCounter += 1
            }
        case .leftToRight:
            tableView.reloadData()
            let cells = tableView.visibleCells
            let tableViewWidth = tableView.bounds.size.width
            
            for cell in cells {
                cell.transform = CGAffineTransform(translationX: -tableViewWidth, y: 0)
            }
            
            var delayCounter = 0
            for cell in cells {
                UIView.animate(withDuration: 1.75, delay: Double(delayCounter) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                    cell.transform = CGAffineTransform.identity
                }, completion: nil)
                delayCounter += 1
            }
        case .topToBottom:
            tableView.reloadData()
            let cells = tableView.visibleCells
            let tableViewHeight = tableView.bounds.size.height
            
            for cell in cells {
                cell.transform = CGAffineTransform(translationX: 0, y: -tableViewHeight)
            }
            
            var delayCounter = 0
            for cell in cells {
                UIView.animate(withDuration: 1.75, delay: Double(delayCounter) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                    cell.transform = CGAffineTransform.identity
                }, completion: nil)
                delayCounter += 1
            }
        case .bottomToTop:
            tableView.reloadData()
            let cells = tableView.visibleCells
            let tableViewHeight = tableView.bounds.size.height
            
            for cell in cells {
                cell.transform = CGAffineTransform(translationX: 0, y: tableViewHeight)
            }
            
            var delayCounter = 0
            for cell in cells {
                UIView.animate(withDuration: 1.75, delay: Double(delayCounter) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                    cell.transform = CGAffineTransform.identity
                }, completion: nil)
                delayCounter += 1
            }
        case .scaleUp:
            tableView.reloadData()
            let cells = tableView.visibleCells
            
            for cell in cells {
                cell.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            }
            
            var delayCounter = 0
            for cell in cells {
                UIView.animate(withDuration: 1.75, delay: Double(delayCounter) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                    cell.transform = CGAffineTransform.identity
                }, completion: nil)
                delayCounter += 1
            }
        case .rotate:
            tableView.reloadData()
            let cells = tableView.visibleCells
            
            for cell in cells {
                cell.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            }
            
            var delayCounter = 0
            for cell in cells {
                UIView.animate(withDuration: 1.75, delay: Double(delayCounter) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                    cell.transform = CGAffineTransform.identity
                }, completion: nil)
                delayCounter += 1
            }
        case .bounce:
            tableView.reloadData()
            let cells = tableView.visibleCells
            
            for cell in cells {
                cell.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            }
            
            var delayCounter = 0
            for cell in cells {
                UIView.animate(withDuration: 1.75, delay: Double(delayCounter) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                    cell.transform = CGAffineTransform.identity
                }, completion: nil)
                delayCounter += 1
            }
        }
    }
}
