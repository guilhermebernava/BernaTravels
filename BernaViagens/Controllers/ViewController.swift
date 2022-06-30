//
//  ViewController.swift
//  BernaViagens
//
//  Created by Guilherme Bernava on 30/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var travelsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        travelsTableView.dataSource = self
        travelsTableView.delegate = self
    }
    
}

//serve para separar implementações de PROTOCOLOS da classe principal
//funciona igualmente se colocar na classe principal
extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "Travel \(indexPath.row)"
        return cell
    }
    
}

extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //busca dentro do swift uma VIEW
        let headerView = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.first as? HeaderView
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
}

