//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  MGTVAnyWatch.m
//  MGTVAnyWatch
//
//  Created by 无情生哥 on 2018/11/15.
//  Copyright (c) 2018 Cool. All rights reserved.
//

#import "MGTVAnyWatch.h"
#import <CaptainHook/CaptainHook.h>
#import <UIKit/UIKit.h>



CHDeclareClass(PhoneVideoAuthSource)


CHOptimizedMethod0(self, NSString *, PhoneVideoAuthSource, url){
   
    NSString *tempURL = CHSuper(0, PhoneVideoAuthSource, url);
    
    if(tempURL && tempURL.length && [tempURL containsString:@"arange="]) {
        
        NSRange r = [tempURL rangeOfString:@"arange="];
        
        NSInteger index = r.location + r.length;
        
        tempURL = [tempURL stringByReplacingCharactersInRange:NSMakeRange(index, tempURL.length - index) withString:@"0"];
    }
    
    return tempURL;
    
}

CHConstructor{
    CHLoadLateClass(PhoneVideoAuthSource);
    CHClassHook0(PhoneVideoAuthSource, url);
}





