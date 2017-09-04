//
//  rotateVC.m
//  GestureObjC
//
//  Created by Sharad Paghadal on 30/11/16.
//  Copyright © 2016 Sharad Paghadal. All rights reserved.
//

#import "rotateVC.h"

@interface rotateVC ()
-(void)rotateFn: (UIRotationGestureRecognizer *)rotateGesture;
@end

@implementation rotateVC

- (void)viewDidLoad {
    [super viewDidLoad];
    UIRotationGestureRecognizer *rotateGesture = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotateFn:)];
    [self.testView addGestureRecognizer:rotateGesture];
    // Do any additional setup after loading the view.
}

-(void)rotateFn:(UIRotationGestureRecognizer *)rotateGesture{
    self.testView.transform = CGAffineTransformRotate(self.testView.transform, rotateGesture.rotation);
    rotateGesture.rotation = 0.0;
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
