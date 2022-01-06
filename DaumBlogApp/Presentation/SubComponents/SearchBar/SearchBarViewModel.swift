//
//  SearchBarViewModel.swift
//  DaumBlogApp
//
//  Created by JeongminKim on 2022/01/06.
//

import RxSwift
import RxCocoa

struct SearchBarViewModel {
    let queryText = PublishRelay<String?>()
    let searchButtonTapped = PublishRelay<Void>()
    let shouldLoadResult: Observable<String>
    
    init() {
        self.shouldLoadResult = searchButtonTapped
            .withLatestFrom(queryText) { $1 ?? "" }
            .filter { !$0.isEmpty }
            .distinctUntilChanged()
    }
}
