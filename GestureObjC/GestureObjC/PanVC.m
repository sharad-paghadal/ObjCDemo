//
//  PanVC.m
//  GestureObjC
//
//  Created by Sharad Paghadal on 30/11/16.
//  Copyright © 2016 Sharad Paghadal. All rights reserved.
//

#import "PanVC.h"

@interface PanVC ()
-(void)panGestureFn: (UITapGestureRecognizer *)panGestureRecognizer;
@end

@implementation PanVC

- (void)viewDidLoad {
    [super viewDidLoad];
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureFn:)];
    [self.testView addGestureRecognizer:panGesture];
    // Do any additional setup after loading the view.
}

-(void)panGestureFn: (UITapGestureRecognizer *)panGestureRecognizer{
    CGPoint location = [panGestureRecognizer locationInView:self.view];
    self.testView.center = location;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
