//
//  MJRContact.m
//  Memory-Management
//
//  Created by Marlon Raskin on 10/16/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "MJRContact.h"

@implementation MJRContact

- (instancetype)initContactWithName:(NSString *)name phone:(NSString *)phone email:(NSString *)email {
    if (self = [super init]) {
        self.fullName = name;
        self.phone = phone;
        self.email = email;
    }
    return self;
}

@end
