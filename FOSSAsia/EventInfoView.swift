//
//  EventInfoView.swift
//  FOSSAsia
//
//  Created by Jurvis Tan on 31/1/16.
//  Copyright © 2016 FossAsia. All rights reserved.
//

import UIKit

class EventInfoView: UIView {
    @IBOutlet weak var eventLabel: UILabel!
    @IBOutlet weak var speakerLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    private var delegate: EventDetailsPresentable?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        eventLabel.preferredMaxLayoutWidth = eventLabel.bounds.size.width
        speakerLabel.preferredMaxLayoutWidth = speakerLabel.bounds.size.width
        locationLabel.preferredMaxLayoutWidth = locationLabel.bounds.size.width
        super.layoutSubviews()
    }
    
    func configure(presenter: EventDetailsPresentable) {
        delegate = presenter
        
        if let delegate = self.delegate {
            eventLabel.text = delegate.eventName
            speakerLabel.text = delegate.speakerNames
            locationLabel.text = delegate.timing
        }
    }
}
