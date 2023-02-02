//
//  OperateStackView.swift
//  Calculator
//
//  Created by Jinah Park on 2023/02/02.
//

import UIKit

class OperateStackView: UIStackView {
    init(operatorText: String?, operandsText: String?) {
        super.init(frame: .zero)
        configure()
        loadView(operatorLabelText: operatorText, operandsLabelText: operandsText)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadView(operatorLabelText: String?, operandsLabelText: String?) {
        addArrangedSubview(makeLabel(labelText: operatorLabelText))
        addArrangedSubview(makeLabel(labelText: operandsLabelText))
    }
    
    func configure() {
        axis = .horizontal
        alignment = .fill
        distribution = .fill
        spacing = 8
    }

    private func makeLabel(labelText: String?) -> UILabel {
        let label = UILabel()
        label.text = labelText
        label.textAlignment = .right
        label.textColor = .white
        label.font = .preferredFont(forTextStyle: .title3)
        return label
    }
}
