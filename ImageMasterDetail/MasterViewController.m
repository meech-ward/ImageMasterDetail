//
//  MasterViewController.m
//  ImageMasterDetail
//
//  Created by Sam Meech Ward on 2016-03-22.
//  Copyright © 2016 Meech-Ward. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

#import "ImageCell.h"

@interface MasterViewController ()

@property NSMutableArray *images;
@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupImageArray];
}

- (void)setupImageArray {
    self.images = [NSMutableArray array];
    
    for (int i = 0; i < 20; ++i) {
        UIImage *image = [UIImage imageNamed:@"test-image"];
        [_images addObject:image];
    }
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showImage"]) {
        // Get the image for the cell that was just pressed
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        UIImage *image = _images[indexPath.row];
        
        // Get the view controller that is about to be presented
        DetailViewController *detailViewController = (DetailViewController *)[[segue destinationViewController] topViewController];
        
        // Add the image to that view controller
        detailViewController.image = image;
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.images.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ImageCell *cell = (ImageCell *)[tableView dequeueReusableCellWithIdentifier:@"imageCell" forIndexPath:indexPath];

    // Add the image to the cell
    UIImage *image = _images[indexPath.row];
    cell.myImageView.image = image;
    
    return cell;
}


@end
