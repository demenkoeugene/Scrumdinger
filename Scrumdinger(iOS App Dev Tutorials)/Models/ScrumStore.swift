//
//  ScrumStore.swift
//  Scrumdinger(iOS App Dev Tutorials)
//
//  Created by Eugene Demenko on 06.03.2023.
//

import Foundation
import SwiftUI

class ScrumStore: ObservableObject {
    @Published var scrums: [DailyScrum] = []
    
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory,
                                            in: .userDomainMask,
                                            appropriateFor: nil,
                                    create: false)
        .appendingPathComponent("scrums.data")
    }
    static func load() async throws -> [DailyScrum] {
        try await withCheckedThrowingContinuation { continuation in
            load { result in
                           switch result {
                           case .failure(let error):
                               continuation.resume(throwing: error)
                           case .success(let scrums):
                                             continuation.resume(returning: scrums)
                           }
            }
        }
    }
    
    static func load(completion: @escaping (Result<[DailyScrum], Error>)->Void) {
        DispatchQueue.global(qos: .background).async {
            do {
                let fileURL = try fileURL()
                guard let file = try? FileHandle(forReadingFrom: fileURL) else {
                                   DispatchQueue.main.async {
                                       completion(.success([]))
                                   }
                                   return
                }
                _ = try JSONDecoder().decode([DailyScrum].self, from: file.availableData)
            } catch {
                DispatchQueue.main.async {
                                   completion(.failure(error))
                               }
            }
        }
    }
//The save function returns a value that callers of the function may not use. The @discardableResult attribute disables warnings about the unused return value.
    @discardableResult
       static func save(scrums: [DailyScrum]) async throws -> Int {
           try await withCheckedThrowingContinuation { continuation in
               save(scrums: scrums) { result in
                   switch result {
                   case .failure(let error):
                       continuation.resume(throwing: error)
                   case .success(let scrumsSaved):
                       continuation.resume(returning: scrumsSaved)
                   }
               }
            }
       }
    
    //Add a method to save data
      static func save(scrums: [DailyScrum], completion: @escaping (Result<Int, Error>)->Void) {
          DispatchQueue.global(qos: .background).async {
                     do {
                         let data = try JSONEncoder().encode(scrums)
                         let outfile = try fileURL()
                         try data.write(to: outfile)
                         DispatchQueue.main.async {
                                             completion(.success(scrums.count))
                                         }
                     } catch {
                         DispatchQueue.main.async {
                                            completion(.failure(error))
                                        }
                     }
                 }
      }
}
