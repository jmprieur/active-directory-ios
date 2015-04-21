//
//  samplesShowClaimsViewController.m
//  Microsoft Tasks
//
//  Created by Brandon Werner on 4/21/15.
//  Copyright (c) 2015 Microsoft. All rights reserved.
//


#import "samplesShowClaimsViewController.h"
#import "samplesTaskListTableViewController.h"

@interface samplesShowClaimsViewController ()

@end

@implementation samplesShowClaimsViewController

@synthesize tokenText;
@synthesize claims;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    tokenText.text = claims;
    // Do any additional setup after loading the view.
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

- (IBAction)homePressed:(id)sender {
    
    dispatch_sync(dispatch_get_main_queue(), ^{
        samplesTaskListTableViewController* homeController = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeView"];
        [self.navigationController pushViewController:homeController animated:YES];
    });

}
@end
