//
//  pinchVC.m
//  GestureObjC
//
//  Created by Sharad Paghadal on 30/11/16.
//  Copyright © 2016 Sharad Paghadal. All rights reserved.
//

#import "pinchVC.h"

@interface pinchVC ()
-(void)pinchFn: (UIPinchGestureRecognizer *)pinchGestuerRecognizer;
@end

@implementation pinchVC

- (void)viewDidLoad {
    [super viewDidLoad];
    UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchFn:)];
    [self.testView addGestureRecognizer:pinchGesture];
    // Do any additional setup after loading the view.
}

- (void)pinchFn:(UIPinchGestureRecognizer *)pinchGestuerRecognizer{
    self.testView.transform = CGAffineTransformScale(self.testView.transform, pinchGestuerRecognizer.scale, pinchGestuerRecognizer.scale);
    pinchGestuerRecognizer.scale = 1;
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
