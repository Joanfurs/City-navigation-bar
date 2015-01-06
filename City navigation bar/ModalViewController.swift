//
//  ModalViewController.swift
//  City navigation bar
//
//  Created by Zhanna Fursova on 1/5/15.
//  Copyright (c) 2015 John Doe. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

   override init() {
		super.init(nibName: nil, bundle: nil);
		modalPresentationStyle = UIModalPresentationStyle.FullScreen;	//the default
		modalTransitionStyle = UIModalTransitionStyle.CoverVertical;	//the default
	
		navigationItem.rightBarButtonItem = UIBarButtonItem(
			barButtonSystemItem: UIBarButtonSystemItem.Done,
			target: self,
			action: "slideDownModal");
	
		navigationItem.leftBarButtonItem = UIBarButtonItem(
			barButtonSystemItem: UIBarButtonSystemItem.Cancel,
			target: self,
			action: "slideDownModal");
	}
	
	//not called
	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder);
	}

	//Implant a reference to myself into my view.

	override func loadView() {
		view = ModalView(modalViewController: self);
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	//Called when the user touches the ModalView.
	//The presentingViewController is the MainViewController that covered itself with me.

	func slideDownModal() {
		presentingViewController!.dismissViewControllerAnimated(true, completion: nil);
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
    

	/*
	// MARK: - Navigation

	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		// Get the new view controller using segue.destinationViewController.
		// Pass the selected object to the new view controller.
	}
	*/

}