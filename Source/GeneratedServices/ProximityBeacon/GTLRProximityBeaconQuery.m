// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Proximity Beacon API (proximitybeacon/v1beta1)
// Description:
//   Registers, manages, indexes, and searches beacons.
// Documentation:
//   https://developers.google.com/beacons/proximity/

#import "GTLRProximityBeaconQuery.h"

#import "GTLRProximityBeaconObjects.h"

// ----------------------------------------------------------------------------
// Constants

// alertFilter
NSString * const kGTLRProximityBeaconAlertFilterAlertUnspecified = @"ALERT_UNSPECIFIED";
NSString * const kGTLRProximityBeaconAlertFilterLowBattery     = @"LOW_BATTERY";
NSString * const kGTLRProximityBeaconAlertFilterWrongLocation  = @"WRONG_LOCATION";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRProximityBeaconQuery

@dynamic fields;

@end

@implementation GTLRProximityBeaconQuery_BeaconinfoGetforobserved

+ (instancetype)queryWithObject:(GTLRProximityBeacon_GetInfoForObservedBeaconsRequest *)object {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSString *pathURITemplate = @"v1beta1/beaconinfo:getforobserved";
  GTLRProximityBeaconQuery_BeaconinfoGetforobserved *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:nil];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLRProximityBeacon_GetInfoForObservedBeaconsResponse class];
  query.loggingName = @"proximitybeacon.beaconinfo.getforobserved";
  return query;
}

@end

@implementation GTLRProximityBeaconQuery_BeaconsActivate

@dynamic beaconName, projectId;

+ (instancetype)queryWithBeaconName:(NSString *)beaconName {
  NSArray *pathParams = @[ @"beaconName" ];
  NSString *pathURITemplate = @"v1beta1/{+beaconName}:activate";
  GTLRProximityBeaconQuery_BeaconsActivate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.beaconName = beaconName;
  query.expectedObjectClass = [GTLRProximityBeacon_Empty class];
  query.loggingName = @"proximitybeacon.beacons.activate";
  return query;
}

@end

@implementation GTLRProximityBeaconQuery_BeaconsAttachmentsBatchDelete

@dynamic beaconName, namespacedType, projectId;

+ (instancetype)queryWithBeaconName:(NSString *)beaconName {
  NSArray *pathParams = @[ @"beaconName" ];
  NSString *pathURITemplate = @"v1beta1/{+beaconName}/attachments:batchDelete";
  GTLRProximityBeaconQuery_BeaconsAttachmentsBatchDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.beaconName = beaconName;
  query.expectedObjectClass = [GTLRProximityBeacon_DeleteAttachmentsResponse class];
  query.loggingName = @"proximitybeacon.beacons.attachments.batchDelete";
  return query;
}

@end

@implementation GTLRProximityBeaconQuery_BeaconsAttachmentsCreate

@dynamic beaconName, projectId;

+ (instancetype)queryWithObject:(GTLRProximityBeacon_BeaconAttachment *)object
                     beaconName:(NSString *)beaconName {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"beaconName" ];
  NSString *pathURITemplate = @"v1beta1/{+beaconName}/attachments";
  GTLRProximityBeaconQuery_BeaconsAttachmentsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.beaconName = beaconName;
  query.expectedObjectClass = [GTLRProximityBeacon_BeaconAttachment class];
  query.loggingName = @"proximitybeacon.beacons.attachments.create";
  return query;
}

@end

@implementation GTLRProximityBeaconQuery_BeaconsAttachmentsDelete

@dynamic attachmentName, projectId;

+ (instancetype)queryWithAttachmentName:(NSString *)attachmentName {
  NSArray *pathParams = @[ @"attachmentName" ];
  NSString *pathURITemplate = @"v1beta1/{+attachmentName}";
  GTLRProximityBeaconQuery_BeaconsAttachmentsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.attachmentName = attachmentName;
  query.expectedObjectClass = [GTLRProximityBeacon_Empty class];
  query.loggingName = @"proximitybeacon.beacons.attachments.delete";
  return query;
}

@end

@implementation GTLRProximityBeaconQuery_BeaconsAttachmentsList

@dynamic beaconName, namespacedType, projectId;

+ (instancetype)queryWithBeaconName:(NSString *)beaconName {
  NSArray *pathParams = @[ @"beaconName" ];
  NSString *pathURITemplate = @"v1beta1/{+beaconName}/attachments";
  GTLRProximityBeaconQuery_BeaconsAttachmentsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.beaconName = beaconName;
  query.expectedObjectClass = [GTLRProximityBeacon_ListBeaconAttachmentsResponse class];
  query.loggingName = @"proximitybeacon.beacons.attachments.list";
  return query;
}

@end

@implementation GTLRProximityBeaconQuery_BeaconsDeactivate

@dynamic beaconName, projectId;

+ (instancetype)queryWithBeaconName:(NSString *)beaconName {
  NSArray *pathParams = @[ @"beaconName" ];
  NSString *pathURITemplate = @"v1beta1/{+beaconName}:deactivate";
  GTLRProximityBeaconQuery_BeaconsDeactivate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.beaconName = beaconName;
  query.expectedObjectClass = [GTLRProximityBeacon_Empty class];
  query.loggingName = @"proximitybeacon.beacons.deactivate";
  return query;
}

@end

@implementation GTLRProximityBeaconQuery_BeaconsDecommission

@dynamic beaconName, projectId;

+ (instancetype)queryWithBeaconName:(NSString *)beaconName {
  NSArray *pathParams = @[ @"beaconName" ];
  NSString *pathURITemplate = @"v1beta1/{+beaconName}:decommission";
  GTLRProximityBeaconQuery_BeaconsDecommission *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.beaconName = beaconName;
  query.expectedObjectClass = [GTLRProximityBeacon_Empty class];
  query.loggingName = @"proximitybeacon.beacons.decommission";
  return query;
}

@end

@implementation GTLRProximityBeaconQuery_BeaconsDelete

@dynamic beaconName, projectId;

+ (instancetype)queryWithBeaconName:(NSString *)beaconName {
  NSArray *pathParams = @[ @"beaconName" ];
  NSString *pathURITemplate = @"v1beta1/{+beaconName}";
  GTLRProximityBeaconQuery_BeaconsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.beaconName = beaconName;
  query.expectedObjectClass = [GTLRProximityBeacon_Empty class];
  query.loggingName = @"proximitybeacon.beacons.delete";
  return query;
}

@end

@implementation GTLRProximityBeaconQuery_BeaconsDiagnosticsList

@dynamic alertFilter, beaconName, pageSize, pageToken, projectId;

+ (instancetype)queryWithBeaconName:(NSString *)beaconName {
  NSArray *pathParams = @[ @"beaconName" ];
  NSString *pathURITemplate = @"v1beta1/{+beaconName}/diagnostics";
  GTLRProximityBeaconQuery_BeaconsDiagnosticsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.beaconName = beaconName;
  query.expectedObjectClass = [GTLRProximityBeacon_ListDiagnosticsResponse class];
  query.loggingName = @"proximitybeacon.beacons.diagnostics.list";
  return query;
}

@end

@implementation GTLRProximityBeaconQuery_BeaconsGet

@dynamic beaconName, projectId;

+ (instancetype)queryWithBeaconName:(NSString *)beaconName {
  NSArray *pathParams = @[ @"beaconName" ];
  NSString *pathURITemplate = @"v1beta1/{+beaconName}";
  GTLRProximityBeaconQuery_BeaconsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.beaconName = beaconName;
  query.expectedObjectClass = [GTLRProximityBeacon_Beacon class];
  query.loggingName = @"proximitybeacon.beacons.get";
  return query;
}

@end

@implementation GTLRProximityBeaconQuery_BeaconsList

@dynamic pageSize, pageToken, projectId, q;

+ (instancetype)query {
  NSString *pathURITemplate = @"v1beta1/beacons";
  GTLRProximityBeaconQuery_BeaconsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRProximityBeacon_ListBeaconsResponse class];
  query.loggingName = @"proximitybeacon.beacons.list";
  return query;
}

@end

@implementation GTLRProximityBeaconQuery_BeaconsRegister

@dynamic projectId;

+ (instancetype)queryWithObject:(GTLRProximityBeacon_Beacon *)object {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSString *pathURITemplate = @"v1beta1/beacons:register";
  GTLRProximityBeaconQuery_BeaconsRegister *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:nil];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLRProximityBeacon_Beacon class];
  query.loggingName = @"proximitybeacon.beacons.register";
  return query;
}

@end

@implementation GTLRProximityBeaconQuery_BeaconsUpdate

@dynamic beaconName, projectId;

+ (instancetype)queryWithObject:(GTLRProximityBeacon_Beacon *)object
                     beaconName:(NSString *)beaconName {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"beaconName" ];
  NSString *pathURITemplate = @"v1beta1/{+beaconName}";
  GTLRProximityBeaconQuery_BeaconsUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.beaconName = beaconName;
  query.expectedObjectClass = [GTLRProximityBeacon_Beacon class];
  query.loggingName = @"proximitybeacon.beacons.update";
  return query;
}

@end

@implementation GTLRProximityBeaconQuery_NamespacesList

@dynamic projectId;

+ (instancetype)query {
  NSString *pathURITemplate = @"v1beta1/namespaces";
  GTLRProximityBeaconQuery_NamespacesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRProximityBeacon_ListNamespacesResponse class];
  query.loggingName = @"proximitybeacon.namespaces.list";
  return query;
}

@end

@implementation GTLRProximityBeaconQuery_NamespacesUpdate

@dynamic namespaceName, projectId;

+ (instancetype)queryWithObject:(GTLRProximityBeacon_Namespace *)object
                  namespaceName:(NSString *)namespaceName {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"namespaceName" ];
  NSString *pathURITemplate = @"v1beta1/{+namespaceName}";
  GTLRProximityBeaconQuery_NamespacesUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.namespaceName = namespaceName;
  query.expectedObjectClass = [GTLRProximityBeacon_Namespace class];
  query.loggingName = @"proximitybeacon.namespaces.update";
  return query;
}

@end

@implementation GTLRProximityBeaconQuery_V1beta1GetEidparams

+ (instancetype)query {
  NSString *pathURITemplate = @"v1beta1/eidparams";
  GTLRProximityBeaconQuery_V1beta1GetEidparams *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRProximityBeacon_EphemeralIdRegistrationParams class];
  query.loggingName = @"proximitybeacon.getEidparams";
  return query;
}

@end