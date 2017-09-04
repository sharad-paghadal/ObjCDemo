//
//  ViewController.h
//  datePickerObjC
//
//  Created by Sharad Paghadal on 30/11/16.
//  Copyright © 2016 Sharad Paghadal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UILabel *lbl;
- (IBAction)dateChanged:(id)sender;

@end

