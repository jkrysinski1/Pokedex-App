//
//  PokeCell.swift
//  Pokédex
//
//  Created by Justin Krysinski on 3/7/16.
//  Copyright © 2016 Justin Krysinski. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {

    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!

    var pokemon: Pokemon!

    func configureCell(pokemon: Pokemon) {

        self.pokemon = pokemon

        nameLbl.text = self.pokemon.name.capitalizedString
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
}
