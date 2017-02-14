//
//  StringTools.h
//  WordEffects
//
//  Created by Dave Augerinos on 2017-02-06.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringTools : NSObject

// Properites
@property NSString *myString;

// Methods
-(NSString *)stringToolsUppercaseString:(NSString *)inputString;
-(NSString *)stringToolsLowercaseString:(NSString *)inputString;
-(NSNumber *)stringToolsNumberizeString:(NSString *)inputString;
-(NSString *)stringToolsCanadianizeString:(NSString *)inputString;
-(NSString *)stringToolsRespondString:(NSString *)inputString;
-(NSString *)stringToolsDeSpaceItString:(NSString *)inputString;

// Stretch methods
-(long int)stringToolsWordCountString:(NSString *)inputString;
-(NSString *)stringToolsPunctuatinRemovalString:(NSString *)inputString;

@end
