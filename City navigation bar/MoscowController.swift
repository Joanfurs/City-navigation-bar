//
//  MoscowController.swift
//  City navigation bar
//
//  Created by Zhanna Fursova on 1/5/15.
//  Copyright (c) 2015 John Doe. All rights reserved.
//

import UIKit

class MoscowController: UIViewController {

    init(title: String) {
		super.init(nibName: nil, bundle: nil);
		self.title = title;	//self.title is the property, title is the parameter
		navigationItem.prompt = "Welcome to \(title)!";
		
		navigationItem.rightBarButtonItem = UIBarButtonItem(
			barButtonSystemItem: UIBarButtonSystemItem.Add, //its icon is a plus sign
			target: self,
			action: "slideUpModal");
	}

	//not called
	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder);
	}

	//Give the view a reference to myself.

	override func loadView() {
		view = Moscow(moscowController: self);
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	func slideUpModal() {
	
		presentViewController(
			UINavigationController(rootViewController: ModalViewController()),
			animated: true,
			completion: nil);
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