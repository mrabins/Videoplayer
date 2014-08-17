//
//  MRViewController.m
//  videoplayer
//
//  Created by Mark Rabins on 7/30/14.
//  Copyright (c) 2014 edu.self.edu. All rights reserved.
//

#import "MRViewController.h"

@interface MRViewController ()

@end

@implementation MRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if(![defaults boolForKey:@"registered"]) {
    NSLog(@"No user registered");
    _logInAccountButtonPressed.hidden = YES;
        
}
    else{
    NSLog(@"User is registered");
    _confirmPassword.hidden = YES;
    _createAccountButtonPressed.hidden = YES;
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Creates a account
-(IBAction)createAccount:(id)sender
{
    NSLog(@"create account");

    if([_emailAddress.text isEqualToString:@""] || [_password.text isEqualToString:@""] || [_confirmPassword.text isEqualToString:@""]){
        
        UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Enter correct Log In Information" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [error show];
    }
    else { 
        [self checkPasswordsMatch];
    }
}

//Alerts the user is password does not match
-(void) checkPasswordsMatch
{
    NSLog(@"passwords Match!");

    if ([_password.text isEqualToString:_confirmPassword.text]) {
        [self registerUser];
        
    }
     else {
        UIAlertView  *error = [[UIAlertView alloc] initWithTitle:@"Incorrect" message:@"Passwords do not match" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        
    [error show];
    }
}
//registers user
-(void)registerUser
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:_emailAddress.text forKey:@"username"];
    [defaults setObject:_password.text forKey:@"password"];
    [defaults setBool:YES forKey:@"registered"];
    
    [defaults synchronize];
    
    UIAlertView  *success = [[UIAlertView alloc] initWithTitle:@"Successful" message:@"You registered a new user" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    
     [success show];

    [self performSegueWithIdentifier:@"Log In Segue" sender:self];
    
}
//Logs in
- (IBAction)logIn:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if([_emailAddress.text isEqualToString:[defaults objectForKey:@"username"]] && [_password.text isEqualToString:[defaults objectForKey:@"password"]]){
    
        _emailAddress.text = nil;
        _confirmPassword.text = nil;
        
    [self performSegueWithIdentifier:@"Log In Segue" sender:self];
        
     }
    
    else {
    UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Oooops" message:@"Your username and password does not match" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
          
        [error show];

     }
}


@end