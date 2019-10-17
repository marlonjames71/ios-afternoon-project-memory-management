//
//  MJRContactDetailViewController.h
//  Memory-Management
//
//  Created by Marlon Raskin on 10/16/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MJRContact;

NS_ASSUME_NONNULL_BEGIN

@interface MJRContactDetailViewController : UIViewController

@property (retain) MJRContact *contact;

@end

NS_ASSUME_NONNULL_END
