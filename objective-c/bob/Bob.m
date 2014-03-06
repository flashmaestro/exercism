//
//  Bob.m
//  bob
//
//  Created by 송 종근 on 14. 3. 6..
//  Copyright (c) 2014년 G.B.U Studio. All rights reserved.
//

#import "Bob.h"

@implementation Bob

- (NSString*) hey:(NSString *)str {
    if ([self is_without:str]) {
        return @"Fine, be that way.";
    } else if ([self is_yell:str]) {
        return @"Woah, chill out!";
    } else if([self is_question:str]) {
        return @"Sure.";
    } else {
        return @"Whatever.";
    }
}

- (BOOL)is_yell:(NSString *)str {
    return [[str uppercaseString] isEqualToString:str] && [str rangeOfString:@"[A-z]" options:NSRegularExpressionSearch].location != NSNotFound;
}

-(BOOL)is_question:(NSString *)str {
    return [str hasSuffix:@"?"];
}

-(BOOL)is_without:(NSString *)str {
    return ![[str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length];
}

@end
