//
//  InfoViewController.swift
//  Navigation
//
//  Created by Апанасенко Михаил Витальевич on 22.12.2021.
//
import UIKit

class InfoViewController: UIViewController {

    let infoButton = UIButton(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow

        infoButton.setTitle("Open info", for: .normal)
        infoButton.setTitleColor(.red, for: .normal)
        infoButton.backgroundColor = .green

        infoButton.frame.size.height = 50
        infoButton.frame.size.width = 100
        infoButton.center = view.center
        view.addSubview(infoButton)

        infoButton.addTarget(self, action: #selector(infoButtonTapped), for: .touchUpInside)
    }

    @objc private func infoButtonTapped (_ sender: UIButton) {
        let alert = UIAlertController(title: "Info", message: "You tapped info button", preferredStyle: .alert)

        alert.addAction(
            UIAlertAction(
                title: NSLocalizedString("Yes, I tapped", comment: "Confession"),
                style: .default,
                handler: { _ in
                    NSLog("Suspect confessed")
                }
            )
        )
        alert.addAction(
            UIAlertAction(
                title: NSLocalizedString("No, it's mistake", comment: "Denial"),
                style: .cancel,
                handler: { _ in
                    NSLog("Suspect is stubborn")
                }
            )
        )
        self.present(alert, animated: true, completion: nil)
    }
}
