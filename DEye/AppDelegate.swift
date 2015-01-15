//
//  AppDelegate.swift
//  DEye
//
//  Created by Shashank S. Belvadi on 1/14/15.
//  Copyright (c) 2015 Experiments. All rights reserved.
//

import UIKit

let cognitoAccountId: String = "291115927752"
let identityPoolId: String = "us-east-1:f8c974bb-bc71-4def-a7a4-be6c75393eab"
let cognitoUnauthRoleArn: String = "arn:aws:iam::291115927752:role/Cognito_EarthScapeUnauth_DefaultRole"

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        let credentialsProvider = AWSCognitoCredentialsProvider.credentialsWithRegionType(
            AWSRegionType.USEast1,
            accountId: cognitoAccountId,
            identityPoolId: identityPoolId,
            unauthRoleArn: cognitoUnauthRoleArn,
            authRoleArn: nil
        )
        
        let serviceConfiguration = AWSServiceConfiguration(
            region: AWSRegionType.USEast1,
            credentialsProvider:credentialsProvider
        )
        
        AWSServiceManager.defaultServiceManager().setDefaultServiceConfiguration(serviceConfiguration)
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

