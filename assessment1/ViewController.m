//
//  ViewController.m
//  assessment1
//
//  Created by Iván Mervich on 7/24/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondNumberTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultsLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)onMultiplyButtonPressed:(id)sender
{
    // dismiss the keyboard
    [self.firstNumberTextField resignFirstResponder];
    [self.secondNumberTextField resignFirstResponder];


    // if any textfield is empty, skip the operation
    if ([self.firstNumberTextField.text length] == 0 || [self.secondNumberTextField.text length] == 0) {
        return;
    }

    // calculate and show result
    float firstNumber = [self.firstNumberTextField.text floatValue];
    float secondNumber = [self.secondNumberTextField.text floatValue];

    float result = firstNumber * secondNumber;

    // set the label color
    if (result < 0) {
        self.resultsLabel.textColor = [UIColor redColor];
    } else {
        self.resultsLabel.textColor = [UIColor greenColor];
    }

    self.resultsLabel.text = [NSString stringWithFormat:@"%.05f", result];
}

@end
