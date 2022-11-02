//
//  DataStore.swift
//  AnimationHW
//
//  Created by Roman Golubinko on 02.11.2022.
//

import SpringAnimation

class DataStore {
    
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    
    let curves = AnimationCurve.allCases
    
    private init() {}
}
