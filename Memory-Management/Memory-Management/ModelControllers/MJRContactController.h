//
//  MJRContactController.h
//  Memory-Management
//
//  Created by Marlon Raskin on 10/16/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MJRContact;

NS_ASSUME_NONNULL_BEGIN

@interface MJRContactController : NSObject

@property (readonly) NSArray<MJRContact *> *contactArray;

@end

NS_ASSUME_NONNULL_END
