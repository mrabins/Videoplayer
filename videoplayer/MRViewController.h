//
//  MRViewController.h
//  videoplayer
//
//  Created by Mark Rabins on 7/30/14.
//  Copyright (c) 2014 edu.self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MRViewController : UIViewController

//Required properties and outlets for the log in view controller

@property (strong, nonatomic) IBOutlet UIButton *createAccountButtonPressed;
@property (strong, nonatomic) IBOutlet UIButton *logInAccountButtonPressed;
@property (strong, nonatomic) IBOutlet UITextField *emailAddress;
@property (strong, nonatomic) IBOutlet UITextField *password;
@property (strong, nonatomic) IBOutlet UITextField *confirmPassword;


- (IBAction)createAccount:(id)sender;
- (IBAction)logIn:(id)sender;

@end
