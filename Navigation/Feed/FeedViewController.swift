//
//  FeedViewController.swift
//  Navigation
//
//  Created by Апанасенко Михаил Витальевич on 22.12.2021.
//
import UIKit

class FeedViewController: UIViewController {
    private var verticalStack: UIStackView {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }
    private var firstPostButton: UIButton {
        let button = UIButton()
        button.setTitle("Open post", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .gray
        button.addTarget(self, action: #selector(postButtonTapped), for: .touchUpInside)
        return button
    }
    private var secondPostButton: UIButton {
        let button = UIButton()
        button.setTitle("Open second post", for: .normal)
        button.setTitleColor(.darkGray, for: .normal)
        button.backgroundColor = .lightGray
        button.addTarget(self, action: #selector(postButtonTapped), for: .touchUpInside)
        return button
    }
    private let post = Post(title: "Post Title")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(verticalStack)

        [firstPostButton,
         secondPostButton
        ].forEach { verticalStack.addArrangedSubview($0) }
        
        NSLayoutConstraint.activate([
            firstPostButton.heightAnchor.constraint(equalToConstant: 50),
            secondPostButton.heightAnchor.constraint(equalTo: firstPostButton.heightAnchor),
            secondPostButton.widthAnchor.constraint(equalTo: firstPostButton.widthAnchor),
            
            verticalStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            verticalStack.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }

    @objc private func postButtonTapped(_ sender: UIButton) {
        let postViewController = PostViewController(post: post)
        navigationController?.pushViewController(postViewController, animated: true)
    }
}
