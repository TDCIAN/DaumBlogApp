//
//  AlertActionConvertible.swift
//  DaumBlogApp
//
//  Created by JeongminKim on 2022/01/04.
//

import UIKit

protocol AlertActionConvertible {
    var title: String { get }
    var style: UIAlertAction.Style { get }
}
