//
//  Modeltourl.swift
//  youtube-onedaybuild
//
//  Created by Admin on 04/09/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import Foundation

class Modeltourl  {
    func getVideos()  {
        
        let url = URL(string: Constants.API_URL)
        guard url != nil else{ return}
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            if error != nil || data == nil {
                return
            }
            do{
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                let response = try decoder.decode(Response.self, from: data!)
                 dump(response)
            }catch{
                
            }
          
        }
        
        dataTask.resume()
        
    }
    
}
