//
//  PokemonDetailVC.swift
//  Pokédex
//
//  Created by Justin Krysinski on 3/10/16.
//  Copyright © 2016 Justin Krysinski. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var idLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var evoLbl: UILabel!

    var pokemon: Pokemon!

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl.text = pokemon.name.capitalizedString
        let img = UIImage(named: "\(pokemon.pokedexId)")
        mainImg.image = img
        currentEvoImg.image = img
        
        nextEvoImg.hidden = true
        

        pokemon.downloadPokemonDetails { () -> () in

            self.updateUI()
        }
    }

    func updateUI() {

        descLbl.text = pokemon.description
        typeLbl.text = pokemon.type
        attackLbl.text = pokemon.attack
        defenseLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        weightLbl.text = pokemon.weight
        idLbl.text = "\(pokemon.pokedexId)"

        if pokemon.nextEvolutionId == "" {

            evoLbl.text = "No Evolutions"
            nextEvoImg.hidden = true
        }
        else {

            nextEvoImg.hidden = false
            nextEvoImg.image = UIImage(named: pokemon.nextEvolutionId)
            var str = "Next Evolution: \(pokemon.nextEvolutionTxt)"

            if pokemon.nextEvolutionLvl != "" {

                str += " - LVL \(pokemon.nextEvolutionLvl)"
                evoLbl.text = str
            }
        }
    }

    @IBAction func backBtnPressed(sender: UIButton) {

        dismissViewControllerAnimated(true, completion: nil)
    }
}
