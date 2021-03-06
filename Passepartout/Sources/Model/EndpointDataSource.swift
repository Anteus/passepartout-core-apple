//
//  EndpointDataSource.swift
//  Passepartout
//
//  Created by Davide De Rosa on 9/5/18.
//  Copyright (c) 2020 Davide De Rosa. All rights reserved.
//
//  https://github.com/passepartoutvpn
//
//  This file is part of Passepartout.
//
//  Passepartout is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  Passepartout is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with Passepartout.  If not, see <http://www.gnu.org/licenses/>.
//

import Foundation
import TunnelKit

public protocol EndpointDataSource {
    var mainAddress: String? { get }
    
    var addresses: [String] { get }
    
    var protocols: [EndpointProtocol] { get }
    
    var canCustomizeEndpoint: Bool { get }
    
    var customAddress: String? { get set }
    
    var customProtocol: EndpointProtocol? { get set }
}

public extension EndpointDataSource {
    var usesCustomEndpoint: Bool {
        return (customAddress != nil) || (customProtocol != nil)
    }
}
