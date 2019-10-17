//
//  MJRContactDetailViewController.m
//  Memory-Management
//
//  Created by Marlon Raskin on 10/16/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "MJRContactDetailViewController.h"
#import "MJRContact.h"

@interface MJRContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *addressTextField;
@property (retain, nonatomic) IBOutlet UIView *containerView;
@property (retain, nonatomic) IBOutlet UIButton *saveButton;


@end

@implementation MJRContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.containerView.layer.cornerRadius = 10;
    self.containerView.layer.cornerCurve = kCACornerCurveContinuous;
    self.saveButton.layer.borderWidth = 1.5;
    self.saveButton.layer.borderColor = UIColor.systemPinkColor.CGColor;
    self.saveButton.layer.cornerCurve = kCACornerCurveContinuous;
    self.saveButton.layer.cornerRadius = 8;
    [self updateViews];
}

- (IBAction)saveButtonTapped:(id)sender {

}

- (void)updateViews {
    if (self.contact != nil) {
        self.title = self.contact.fullName;
        self.phoneTextField.text = self.contact.phone;
        self.emailTextField.text = self.contact.email;
        self.addressTextField.text = self.contact.address;
    }
}



- (void)dealloc {
    [_containerView release];
    [_phoneTextField release];
    [_emailTextField release];
    [_addressTextField release];
    [_saveButton release];
    [super dealloc];
}
@end
