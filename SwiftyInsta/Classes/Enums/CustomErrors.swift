//
//  CustomErrors.swift
//  SwiftyInsta
//
//  Created by Mahdi on 10/24/18.
//  Copyright © 2018 Mahdi. All rights reserved.
//

import Foundation

enum CustomErrors: Error {
    case urlCreationFaild(_ description: String)
    case runTimeError(_ description: String)
}