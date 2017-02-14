//
//  StringTools.m
//  WordEffects
//
//  Created by Dave Augerinos on 2017-02-06.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "StringTools.h"

@implementation StringTools

// Methods

// Converts input string to all uppercase
-(NSString *)stringToolsUppercaseString:(NSString *)inputString {
    
    _myString = [[NSString alloc] init];
    _myString = inputString.localizedUppercaseString;
    return _myString;
    
}

// Converts input string to all lowercase
-(NSString *)stringToolsLowercaseString:(NSString *)inputString {

    _myString = [[NSString alloc] init];
    _myString = inputString.localizedLowercaseString;
    return _myString;
}

// Convert a string representation a number into a number
-(NSNumber *)stringToolsNumberizeString:(NSString *)inputString {

    NSNumberFormatter *num = [[NSNumberFormatter alloc] init];
    NSNumber *myNumber = [num numberFromString:inputString];
    return myNumber;

}

// Appends ", eh ?" to the input string
-(NSString *)stringToolsCanadianizeString:(NSString *)inputString {

    _myString = @", eh?";
    _myString = [inputString stringByAppendingString:_myString];
    return _myString;

}

// Responds to strings ending in either ? or !
-(NSString *)stringToolsRespondString:(NSString *)inputString {

    _myString = [[NSString alloc] init];
    _myString = inputString;
    
    if([_myString hasSuffix:@"!"]){
        _myString = @"Whoa, calm down!";
    }
    else if ([_myString hasSuffix:@"?"]) {
        _myString = @"I don't know!";
    }
    
    return _myString;

}

// Substitutes spaces for "-"
-(NSString *)stringToolsDeSpaceItString:(NSString *)inputString {

    _myString = [[NSString alloc] init];
    _myString = [inputString stringByReplacingOccurrencesOfString:@" "
                                                       withString:@"-"];
    return _myString;

}


// Stretch methods

// Counts number of words in a string
-(long int)stringToolsWordCountString:(NSString *)inputString {

    NSArray *words = [inputString componentsSeparatedByString:@" "];
    
    return [words count];

}

// Removes punctuations from strings
-(NSString *)stringToolsPunctuatinRemovalString:(NSString *)inputString {

    _myString = [[NSString alloc] init];
    
    return _myString;

}


@end
