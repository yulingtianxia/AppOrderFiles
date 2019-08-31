//
//  AppOrderFiles.h
//  AppOrderFiles
//
//  Created by 杨萧玉 on 2019/8/31.
//  Copyright © 2019 杨萧玉. All rights reserved.
//

#import <Foundation/Foundation.h>

//! Project version number for AppOrderFiles.
FOUNDATION_EXPORT double AppOrderFilesVersionNumber;

//! Project version string for AppOrderFiles.
FOUNDATION_EXPORT const unsigned char AppOrderFilesVersionString[];

extern void AppOrderFiles(void(^completion)(NSString *orderFilePath));

