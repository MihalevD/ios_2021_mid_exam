//
//  AgentsTableViewController.swift
//  ios_2021_mid_exam
//
//  Created by Denislav's Mac Book on 7.01.22.
//

import UIKit

class AgentsTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}
extension AgentsTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let contacts = Model().contacts
        return contacts.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = Model()
        let agent = model.contacts[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AgentCell") as? AgentTableViewCell else {return UITableViewCell()}
        cell.agentName.text = agent.name
        cell.agentImageView.image = UIImage(named: agent.photo)
        cell.agentPhoneNumber.text = "\(agent.phoneNumber.prefix) \(agent.phoneNumber.number)"
    
        return cell
        
    }
}
extension AgentsTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "openAgent", sender: self)
        
    }
}

extension AgentsTableViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "openAgent"{
            let model = Model()
            let indexPath: IndexPath = tableView.indexPathForSelectedRow!
            let agent = model.contacts[indexPath.row ?? .zero]
            let vc = segue.destination as! PhoneViewController
            vc.agentImage = UIImage(named: agent.photo)
            vc.phoneName = agent.name
            vc.num = "\(agent.phoneNumber.prefix) \(agent.phoneNumber.number)"
            
        }
    }
}
