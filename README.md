# gitDemo


下载请Followers我


git 动态图




对iOS有激情有拼劲的请加 qq－群 486025323 此群不闲聊



也可以 Followers 我，让我认识更多的有激情有拼劲iOS工程师



















//过滤图片数组
-(NSMutableArray*)imageHtml:(NSString*)content{
    
    //    NSString *str=@"<img.*src\\s*=\\s*(.*?)[^>]*?>";
    NSString *str=@"<img(.*?)src=\"(.*?)\"";
    NSRegularExpression* regex = [NSRegularExpression regularExpressionWithPattern:str options:NSRegularExpressionCaseInsensitive error:nil];
    
    // 提取图片
    NSArray *results = [regex matchesInString:content options:NSMatchingReportCompletion range:NSMakeRange(0, content.length)];
    NSMutableArray *arr = [[NSMutableArray alloc] initWithCapacity:results.count];
    for (NSTextCheckingResult *res in results) {
        NSString *sub = [content substringWithRange:[res rangeAtIndex:0]];
        
        NSArray *subArr=[sub componentsSeparatedByString:@"\""];
        //        NSLog(@"subArr %@",subArr);
//        [arr addObject:subArr[1]];
        for (NSString *item in subArr) {
            if ([item hasPrefix:@"http"]) {
                [arr addObject:item];
                NSLog(@"截取后的image %@",item);
            }
        }

    }
    NSLog(@"统配图片数组 %@",arr);
    return arr;
}
