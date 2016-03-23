//
//  DetailViewController.m
//  ImageMasterDetail
//
//  Created by Sam Meech Ward on 2016-03-22.
//  Copyright © 2016 Meech-Ward. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

/// The view that displays the image.
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _imageView.image = _image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
