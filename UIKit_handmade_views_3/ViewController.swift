//
//  ViewController.swift
//  UIKit_handmade_views_3
//
//  Created by Matteo on 29/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let pizzaImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage.init(named: "pizza"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let descriptionView: UITextView = {
        let textView = UITextView()
        textView.text = "Come and have a bite at our Pizza!"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(pizzaImageView)
        view.addSubview(descriptionView)
        
        setupLayout()
        
    }
    
    private func setupLayout() {
        pizzaImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        pizzaImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        pizzaImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pizzaImageView.topAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.topAnchor,
            constant: 50
        ).isActive = true
        
        descriptionView.topAnchor.constraint(equalTo: pizzaImageView.bottomAnchor, constant: 50).isActive = true
        descriptionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        descriptionView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40).isActive = true
        descriptionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        descriptionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
    }

}

