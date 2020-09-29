//
//  CustomTableViewCell.swift
//  TableViewNavPro
//
//  Created by Ghassan  albakuaa  on 9/28/20.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    static let reuseId: String = "CustomTableView"
    var progressBar: UIProgressView?
    var rImagView: UIImageView?
    var rImagView2: UIImageView?
    var topLabel: UILabel?
    var bottomLabel:UILabel?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setUp()
    }
    required init?(coder: NSCoder) {
        fatalError("init(code:) has been not implemented")
    }
    
    private func setUp() {
        let vStackView = UIStackView(frame: .zero)
        vStackView.translatesAutoresizingMaskIntoConstraints = false
        vStackView.distribution = .fillEqually
        vStackView.axis = .vertical
        vStackView.alignment = .center
        
        //ImageView
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "hat01")
        
        let imageView2 = UIImageView(frame: .zero)
        imageView2.translatesAutoresizingMaskIntoConstraints = false
        imageView2.image = UIImage(named: "hat01")
        
        // Top Label
        let topLabel = UILabel(frame: .zero)
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        topLabel.textAlignment = .center
        topLabel.text = "Top Label"
        topLabel.textColor = .purple
        
        // Bottom Label
        let bottomLabel = UILabel(frame: .zero)
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomLabel.textAlignment = .center
        bottomLabel.text = "Bottom Label"
        bottomLabel.textColor = .purple
        
        // Progress Bar
        let progressBar = UIProgressView(frame: .zero)
        progressBar.translatesAutoresizingMaskIntoConstraints = false
        progressBar.progress = 0.5
        progressBar.progressTintColor = .purple
        
        // Add Arranged
        vStackView.addArrangedSubview(progressBar)
        vStackView.addArrangedSubview(topLabel)
        vStackView.addArrangedSubview(bottomLabel)
        
        // Add to Content View
        self.contentView.addSubview(vStackView)
        self.contentView.addSubview(imageView)
        self.contentView.addSubview(imageView2)
        
        // Set Constraints
        vStackView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8).isActive = true
        vStackView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8).isActive = true
        vStackView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8).isActive = true
        
        imageView.leadingAnchor.constraint(equalTo: vStackView.trailingAnchor, constant: 8).isActive = true
        imageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8).isActive = true
        imageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8).isActive = true
        imageView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        imageView2.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -53).isActive = true
        imageView2.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8).isActive = true
        imageView2.widthAnchor.constraint(equalToConstant: 40).isActive = true
        imageView2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        
        
        progressBar.widthAnchor.constraint(equalTo: vStackView.widthAnchor, multiplier: 0.8).isActive = true
        
        
        // Assign To class Variables
        self.rImagView = imageView
        self.rImagView2 = imageView2
        self.topLabel = topLabel
        self.bottomLabel = bottomLabel
        self.progressBar = progressBar
    }
    

}
