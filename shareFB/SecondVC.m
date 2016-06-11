//
//  SecondVC.m
//  shareFB
//
//  Created by MD on 09.06.16.
//  Copyright © 2016 MD. All rights reserved.
//

#import "SecondVC.h"
#import <Social/Social.h>


@interface SecondVC ()

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (IBAction)facebookAction:(UIButton *)sender {

    SLComposeViewController *composeController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];

    [composeController setInitialText:@"Just found this great website"];
    [composeController addImage : [UIImage imageNamed: @"shareImg"]];
    [composeController addURL   : [NSURL URLWithString:  @"http://www.ebookfrenzy.com"]];

    [self presentViewController:composeController  animated:YES completion:nil];
}

- (IBAction)twitterAction:(UIButton*)sender {
    
    SLComposeViewController *composeController = [SLComposeViewController  composeViewControllerForServiceType:SLServiceTypeTwitter];

    [composeController setInitialText:@"Just found this great website"];
    [composeController addImage : [UIImage imageNamed: @"shareImg"]];
    [composeController addURL   : [NSURL URLWithString:  @"http://www.ebookfrenzy.com"]];

    [self presentViewController:composeController  animated:YES completion:nil];
}

@end
