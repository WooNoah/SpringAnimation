

#import "UIView+PresentationLayer.h"

@implementation UIView (PresentationLayer)

-(CGPoint) PresentationLayerCenter:(BOOL) shouldUsePresentationLayer {
    if (shouldUsePresentationLayer) {
        CALayer *presentationLayer = [self.layer presentationLayer];
        return presentationLayer.position;
    }
    NSLog(@"%f,%f",self.center.x,self.center.y);
    return self.center;
}

@end
