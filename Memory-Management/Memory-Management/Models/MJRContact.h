//
//  MJRContact.h
//  Memory-Management
//
//  Created by Marlon Raskin on 10/16/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MJRContact : NSObject

@property (retain) UIImage *image;
@property (copy) NSString *fullName;
@property (copy) NSString *phone;
@property (copy) NSString *email;
@property (copy) NSString *address;

- (instancetype)initContactWithName:(NSString *)name phone:(NSString *)phone email:(NSString *)email;

@end

NS_ASSUME_NONNULL_END
