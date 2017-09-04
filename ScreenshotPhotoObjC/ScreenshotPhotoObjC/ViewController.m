//
//  ViewController.m
//  ScreenshotPhotoObjC
//
//  Created by Sharad Paghadal on 14/12/16.
//  Copyright © 2016 temp. All rights reserved.
//

#import "ViewController.h"
#import <Photos/Photos.h>
#import <Foundation/Foundation.h>

@interface ViewController ()

@end

@implementation AlbumModel : NSObject
    NSString *name;
    int *count;
    PHAssetCollection *collection;
@end

PHAsset *assets[];

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //smartAlbums = PHAssetCollection
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
