//
//  DetailViewController.h
//  ImageMasterDetail
//
//  Created by Sam Meech Ward on 2016-03-22.
//  Copyright © 2016 Meech-Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

