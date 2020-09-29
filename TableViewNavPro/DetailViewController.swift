//
//  DetailViewController.swift
//  TableViewNavPro
//
//  Created by Ghassan  albakuaa  on 9/28/20.
//

import UIKit

class DetailViewController: UIViewController {

    
    

    var imageView: UIImageView?
    var imageView2: UIImageView?
    var progressBar: UIProgressView?
    var topLabel: UILabel?
    var bottomLabel: UILabel?

    
    
    // var cartoon2: String
    var image: UIImage?
    var image2: UIImage?
    var progress: Float
    var topText: String
    var bottomText: String
    
    init(image: UIImage?,image2: UIImage?, progress: Float, top: String, bottom: String ) {
        self.image = image
        self.image2 = image2
        self.progress = progress
        self.topText = top
        self.bottomText = bottom
  //      self.cartoon2 = cartoon2
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUp()
    }
    
    private func setUp() {
        self.view.backgroundColor = .white
        self.navigationItem.title = "Programmatic Detail"
        
        // ImageView
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = self.image
        
        let imageView2 = UIImageView(frame: .zero)
        imageView2.translatesAutoresizingMaskIntoConstraints = false
        imageView2.contentMode = .scaleAspectFit
        imageView2.image = self.image2
        
        // Progress Bar
        let progressBar = UIProgressView(frame: .zero)
        progressBar.translatesAutoresizingMaskIntoConstraints = false
        progressBar.progress = self.progress
        progressBar.progressTintColor = .purple
        
        // Top Label
        let topLabel = UILabel(frame: .zero)
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        topLabel.textAlignment = .center
        topLabel.text = self.topText
        topLabel.numberOfLines = 0
        topLabel.textColor = .purple
        
        //  Array
     /*   let cartoon = UILabel(frame: .zero)
        cartoon.translatesAutoresizingMaskIntoConstraints = false
        cartoon.textAlignment = .center
       
        cartoon.text = self.cartoon2
        cartoon.numberOfLines = 0
        cartoon.textColor = .red
        */
        
        // Bottom Label
        let bottomLabel = UILabel(frame: .zero)
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomLabel.textAlignment = .center
        bottomLabel.text = self.bottomText
        bottomLabel.numberOfLines = 0
        bottomLabel.textColor = .purple
        
        // Buffer View
        let bufferView = UIView(frame: .zero)
        bufferView.translatesAutoresizingMaskIntoConstraints = false
        bufferView.setContentHuggingPriority(.defaultLow, for: .vertical)
        bufferView.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        
        // Add to view
        self.view.addSubview(imageView)
        self.view.addSubview(progressBar)
        self.view.addSubview(topLabel)
        self.view.addSubview(bottomLabel)
        self.view.addSubview(bufferView)
        self.view.addSubview(imageView2)
        
        // Constraints
       // imageView.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.4).isActive = true
        
        imageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        imageView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 32).isActive = true
        imageView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -32).isActive = true
        
        imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        imageView2.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 162).isActive = true
        imageView2.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 32).isActive = true
        
        imageView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -32).isActive = true
        imageView2.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageView2.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        progressBar.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8).isActive = true
        progressBar.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -32).isActive = true
        progressBar.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 32).isActive = true
        
        topLabel.topAnchor.constraint(equalTo: progressBar.bottomAnchor, constant: 8).isActive = true
        topLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -32).isActive = true
        topLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 32).isActive = true
        
        bottomLabel.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 8).isActive = true
        bottomLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -32).isActive = true
        bottomLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 32).isActive = true
        
        bufferView.topAnchor.constraint(equalTo: bottomLabel.bottomAnchor, constant: 8).isActive = true
        bufferView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -32).isActive = true
        bufferView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 32).isActive = true
        bufferView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -32).isActive = true
        
        // Set to class properties
        self.imageView = imageView
        self.imageView2 = imageView2
        self.topLabel = topLabel
        self.bottomLabel = bottomLabel
        self.progressBar = progressBar
    }
    
    

}
