//
//  ViewController.swift
//  Example
//
//  Created by David Cordero on 17.10.19.
//  Copyright © 2019 Zattoo. All rights reserved.
//

import UIKit
import GradientView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    // MARK: - Private
    
    private lazy var gradientView: GradientView = {
        let gradient = Gradient(
            startColor: .blue,
            endColor: .green,
            startPoint: CGPoint(x: 0, y: 0),
            endPoint: CGPoint(x: 0, y: 1))
        
        let gradientView = GradientView()
        gradientView.applyGradient(gradient)
        return gradientView
    }()
    
    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "GradientView"
        titleLabel.font = UIFont(name: "HelveticaNeue-Thin", size: 40)!
        return titleLabel
    }()
    
    private func setUpView() {
        view.addSubview(gradientView)
        setUpGradientViewConstraints()
        
        view.addSubview(titleLabel)
        setUpTitleLabelConstraints()
    }
    
    private func setUpGradientViewConstraints() {
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        gradientView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        gradientView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        gradientView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        gradientView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    private func setUpTitleLabelConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
