#import "NSMutableArray-kod.h"

@implementation NSMutableArray (Kod)

- (void)reverseObjectsInRange:(NSRange)range {
  NSUInteger end = range.location + range.length;
  if (end > [self count]) {
    [NSException raise:NSRangeException
                format:@"range goes beyond number of items"];
  }
  while ( (range.location != end) && (range.location != --end)) {
    [self exchangeObjectAtIndex:range.location++ withObjectAtIndex:end];
  }
}

@end