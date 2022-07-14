//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Апанасенко Михаил Витальевич on 22.12.2021.
//
import UIKit

class ProfileViewController: UIViewController {
    
    let profileHeaderView = ProfileHeaderView()
    private var statusText: String = "Waiting for something..."

    override func viewDidLoad() {
        super.viewDidLoad()
        view.clipsToBounds = true
        view.backgroundColor = .lightGray
        view.addSubview(profileHeaderView)
        
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.backgroundColor = .systemBackground
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.title = "Profile"
        
        profileHeaderView.avatarImageView.image = UIImage(named: "cat")
        profileHeaderView.nameLabel.text = "Hipster Cat"
        profileHeaderView.statusLabel.text = statusText
        profileHeaderView.statusInputTextField.placeholder = statusText
        profileHeaderView.statusButton.setTitle("Show statusaaaaa", for: .normal)
        
        profileHeaderView.statusButton.addTarget(self, action: #selector(statusButtonPressed), for: .touchUpInside)
        profileHeaderView.statusInputTextField.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
//        Не смог добиться правильного отображения назначая фрейм, поэтому использовал констрейнты, что, как мне кажется более правильным
//        profileHeaderView.frame = view.frame
        
        NSLayoutConstraint.activate([
            profileHeaderView.topAnchor.constraint(equalTo: view.topAnchor),
            profileHeaderView.leftAnchor.constraint(equalTo: view.leftAnchor),
            profileHeaderView.rightAnchor.constraint(equalTo: view.rightAnchor),
            profileHeaderView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    @objc func statusButtonPressed() {
        profileHeaderView.statusLabel.text = statusText
        print(profileHeaderView.statusLabel.text)

    }
    
    @objc func statusTextChanged(_ textField: UITextField) {
        statusText = textField.text ?? statusText
    }
}
