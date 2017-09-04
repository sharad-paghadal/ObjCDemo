//
//  TapVC.m
//  GestureObjC
//
//  Created by Sharad Paghadal on 30/11/16.
//  Copyright © 2016 Sharad Paghadal. All rights reserved.
//

#import "TapVC.h"

@interface TapVC ()

-(void)tapGestureFn:(UITapGestureRecognizer *)tapGestureRecognizer;

@end


@implementation TapVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureFn:)];
    [self.testView addGestureRecognizer:singleTap];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tapGestureFn:(UITapGestureRecognizer *)tapGestureRecognizer{
    CGFloat newWidth = 100.0;
    if (self.testView.frame.size.width == 100.0) {
        newWidth = 200.0;
    }
    
    CGPoint currentCenter = self.testView.center;
    
    self.testView.frame = CGRectMake(self.testView.frame.origin.x, self.testView.frame.origin.y, newWidth, self.testView.frame.size.height);
    self.testView.center = currentCenter;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
