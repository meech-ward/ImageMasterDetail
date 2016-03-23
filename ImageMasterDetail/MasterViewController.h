//
//  MasterViewController.h
//  ImageMasterDetail
//
//  Created by Sam Meech Ward on 2016-03-22.
//  Copyright © 2016 Meech-Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;


@end

