
@import <Foundation/CPObject.j>

#include "Platform.h"


@implementation CPPlatform : CPObject
{
}

+ (void)bootstrap
{
#if PLATFORM(DOM)
    var body = document.getElementsByTagName("body")[0];

    body.innerHTML = ""; // Get rid of anything that might be lingering in the body element.
    body.style.overflow = "hidden";

    if (document.documentElement)
        document.documentElement.style.overflow = "hidden";
#endif

    [CPPlatformString bootstrap];
    [CPPlatformWindow setPrimaryPlatformWindow:[[CPPlatformWindow alloc] _init]];
}

@end
