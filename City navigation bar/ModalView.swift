//
//  ModalView.swift
//  City navigation bar
//
//  Created by Zhanna Fursova on 1/5/15.
//  Copyright (c) 2015 John Doe. All rights reserved.
//

import UIKit

class ModalView: UIView {

   let modalViewController: ModalViewController;

	init(modalViewController: ModalViewController) {
		// Initialization code
		self.modalViewController = modalViewController;
		super.init(frame: CGRectZero);
		backgroundColor = UIColor.purpleColor();
	}

	//Never called.
	required init(coder aDecoder: NSCoder) {
		let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate! as AppDelegate;
		let moscowController: MoscowController = appDelegate.window!.rootViewController! as MoscowController;
		modalViewController = moscowController.presentingViewController! as ModalViewController;
		super.init(coder: aDecoder);
	}

	/*
	// Only override drawRect: if you perform custom drawing.
	// An empty implementation adversely affects performance during animation.
	override func drawRect(rect: CGRect) {
		// Drawing code
	}
	*/

}