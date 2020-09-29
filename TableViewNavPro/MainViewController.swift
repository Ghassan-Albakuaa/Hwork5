//
//  MainViewController.swift
//  TableViewNavPro
//
//  Created by Ghassan  albakuaa  on 9/28/20.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate {
///////////////
    
    var cartoon = ["rrr" , "yyy" , "uuy" , "gh"]
    var cartoon2 = ["rrr" , "yyy" , "uuy" , "tyty"]
    var sections = ["part1" , "part2","part3","part4" , "part5","part6"]
//////////////////
    var tableView: UITableView?
    var random = Int.random(in: 3...50)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.setUp()
        
    }
   
    
    private func setUp(){
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        
        // Register cell
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.reuseId)
        
        //constraints
        self.view.addSubview(tableView)
        let top = tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8)
          let left = tableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8)
          let right = tableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8)
          let bottom = tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -8)
          NSLayoutConstraint.activate([top, left, right, bottom])
         let constraint = NSLayoutConstraint(item: tableView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 8)
        tableView.backgroundColor = .darkGray
        self.tableView = tableView
    }

    private func determineImage(index: Int) -> UIImage? {
        switch index % 4 {
        case 0:
            return UIImage (named: "dice1" )
           
        case 1:
            return UIImage(named: "dice2")
        case 2:
            return UIImage(named: "dice3")
        default:
            return UIImage(named: "dice4")
        }
    }
    private func determineImage2(index: Int) -> UIImage? {
        switch index % 4 {
        case 0:
            return UIImage (named: "dice4" )
           
        case 1:
            return UIImage(named: "dice3")
        case 2:
            return UIImage(named: "dice2")
        default:
            return UIImage(named: "dice1")
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let image = self.determineImage(index: indexPath.row)
        let image2 = self.determineImage2(index: indexPath.row)
        let top = "Section: \(indexPath.section)"
        let bottom = "Row: \(indexPath.row)"
        let progress = Float(indexPath.row) / Float(self.random)
       
        let vc = DetailViewController(image: image, image2: image2,
             progress: progress, top: top, bottom: bottom)
   //     let cartoonn2 = Any (cartoon2 [indexPath.row])
   //     let vc = DetailViewController(image: image, progress: progress, top: top, bottom: bottom , cartoon2: cartoon2 )
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    //how many Sections
        func numberOfSections(in tableView: UITableView) -> Int {
            return sections.count    }
       
       
        //title For Header In Section
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            sections[section]
        }
        }

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartoon.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.reuseId, for: indexPath) as? CustomTableViewCell
        else {
            return UITableViewCell()
       
            }
        
        cell.rImagView?.image = self.determineImage(index: indexPath.row)
        cell.progressBar?.progress = Float(indexPath.row) / Float(self.random)
       cell.topLabel?.text = "Section: \(indexPath.section)"
        cell.textLabel?.text = cartoon2[indexPath.row]
        cell.rImagView2?.image = self.determineImage2(index: indexPath.row)
      cell.bottomLabel?.text = "Row: \(indexPath.row)"
        
        return cell
        }
    }
    

