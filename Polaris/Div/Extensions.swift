//
//  Extensions.swift
//  Polaris
//
//  Created by Antonio Iacono on 22/11/21.
//

//Extensions.swift



import Foundation

extension Date
{
    func toString( dateFormat format  : String ) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }

}
