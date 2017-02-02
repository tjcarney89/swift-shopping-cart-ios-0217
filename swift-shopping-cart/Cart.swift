//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    var items: [Item]
    
    init(items: [Item]) {
        self.items = items
    }
    
    init() {
        items = []
    }
    
    func totalPriceInCents() -> Int {
        var total = 0
        for item in items {
            total += item.priceInCents
        }
        return total
    }
    
    func add(item: Item) {
        items.append(item)
    }
    
    func remove(item: Item) {
        if let index = items.index(of: item) {
            items.remove(at: index )
        }
    }
    
    func items(withName name: String) -> [Item] {
        var itemsList: [Item] = []
        for item in items {
            if name == item.name {
                itemsList.append(Item(name: item.name, priceInCents: item.priceInCents))
            }
        }
        return itemsList
    }
    
    func items(withMinPrice price: Int) -> [Item] {
        var minPriceList: [Item] = []
        for item in items {
            if price <= item.priceInCents {
                minPriceList.append(Item(name: item.name, priceInCents: item.priceInCents))
            }
        }
        return minPriceList
    }
    
    func items(withMaxPrice price: Int) -> [Item] {
        var maxPriceList: [Item] = []
        for item in items {
            if price >= item.priceInCents {
                maxPriceList.append(Item(name: item.name, priceInCents: item.priceInCents))
            }
        }
        return maxPriceList
    }
    
    
}
