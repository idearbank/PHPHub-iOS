//
//  TopicEntity.m
//  PHPHub
//
//  Created by Aufree on 9/22/15.
//  Copyright (c) 2015 ESTGroup. All rights reserved.
//

#import "TopicEntity.h"

@implementation TopicEntity

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"topicId" : @"id",
             @"categoryId" : @"category_id",
             @"topicTitle" : @"title",
             @"topicBody" : @"body",
             @"topicRepliesCount" : @"reply_count",
             @"voteCount" : @"vote_count",
             @"user" : @"user.data",
             @"lastReplyUser" : @"last_reply_user.data",
             @"category" : @"category.data",
             @"topicContentUrl" : @"links.details_web_view",
             @"topicRepliesUrl" : @"links.replies_web_view",
             @"voteUp" : @"vote_up",
             @"voteDown" : @"vote_down",
             @"updatedAt" : @"updated_at",
             };
}

+ (NSValueTransformer *)userJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UserEntity class]];
}

+ (NSValueTransformer *)lastReplyUserJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UserEntity class]];
}

+ (NSValueTransformer *)categoryJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[CategoryEntity class]];
}
@end
