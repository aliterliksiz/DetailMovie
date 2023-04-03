//
//  MyPresenter.swift
//  DetailMovie
//
//  Created by Ali Terliksiz on 3.04.2023.
//

import UIKit

class MyPresenter: UIViewController {
    weak var viewController: UIViewController?

    @IBAction func firstButtonTapped(_ sender: Any) {
    }
    @IBAction func secondButtonTapped(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

        func configureView() {
            guard let viewController = viewController else { return }
            
            // Image View
            let imageView = UIImageView(image: UIImage(named: "myImage"))
            imageView.contentMode = .scaleAspectFit
            viewController.view.addSubview(imageView)
            
            // First Label
            let firstLabel = UILabel()
            firstLabel.text = "First Label"
            firstLabel.font = UIFont.boldSystemFont(ofSize: 20)
            viewController.view.addSubview(firstLabel)
            
            // First Button
            let firstButton = UIButton(type: .system)
            firstButton.setTitle("First Button", for: .normal)
            firstButton.addTarget(self, action: #selector(firstButtonTapped), for: .touchUpInside)
            viewController.view.addSubview(firstButton)
            
            // Second Label
            let secondLabel = UILabel()
            secondLabel.text = "Second Label"
            viewController.view.addSubview(secondLabel)
            
            // Second Button
            let secondButton = UIButton(type: .system)
            secondButton.setTitle("Second Button", for: .normal)
            secondButton.addTarget(self, action: #selector(secondButtonTapped), for: .touchUpInside)
            viewController.view.addSubview(secondButton)
            
            // Text Field
            let textField = UITextField()
            textField.borderStyle = .roundedRect
            textField.placeholder = "Enter text here"
            viewController.view.addSubview(textField)
            
            // Stack View
            let stackView = UIStackView()
            stackView.axis = .vertical
            stackView.spacing = 16
            viewController.view.addSubview(stackView)
            
            // First sub-stack view
            let firstSubStackView = UIStackView()
            firstSubStackView.axis = .horizontal
            firstSubStackView.spacing = 8
            stackView.addArrangedSubview(firstSubStackView)
            
            // First sub-stack view's Label
            let firstSubStackViewLabel = UILabel()
            firstSubStackViewLabel.text = "First Sub-Stack View Label"
            firstSubStackView.addArrangedSubview(firstSubStackViewLabel)
            
            // First sub-stack view's Button
            let firstSubStackViewButton = UIButton(type: .system)
            firstSubStackViewButton.setTitle("First Sub-Stack View Button", for: .normal)
            firstSubStackView.addArrangedSubview(firstSubStackViewButton)
            
            // Second sub-stack view
            let secondSubStackView = UIStackView()
            secondSubStackView.axis = .horizontal
            secondSubStackView.spacing = 8
            stackView.addArrangedSubview(secondSubStackView)
            
            // Second sub-stack view's Label
            let secondSubStackViewLabel = UILabel()
            secondSubStackViewLabel.text = "Second Sub-Stack View Label"
            secondSubStackView.addArrangedSubview(secondSubStackViewLabel)
            
            // Second sub-stack view's Button
            let secondSubStackViewButton = UIButton(type: .system)
            secondSubStackViewButton.setTitle("Second Sub-Stack View Button", for: .normal)
            secondSubStackView.addArrangedSubview(secondSubStackViewButton)
            
            // Set constraints
            imageView.translatesAutoresizingMaskIntoConstraints = false
            firstLabel.translatesAutoresizingMaskIntoConstraints = false
            firstButton.translatesAutoresizingMaskIntoConstraints = false
            secondLabel.translatesAutoresizingMaskIntoConstraints = false
            secondButton.translatesAutoresizingMaskIntoConstraints = false
            textField.translatesAutoresizingMaskIntoConstraints = false
            stackView.translatesAutoresizingMaskIntoConstraints = false
            firstSubStackView.translatesAutoresizingMaskIntoConstraints = false
            firstSubStackViewLabel.translatesAutoresizingMaskIntoConstraints = false
        }

}
