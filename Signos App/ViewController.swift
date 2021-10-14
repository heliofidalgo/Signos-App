//
//  ViewController.swift
//  Signos App
//
//  Created by Helio Marcus Nery Fidalgo on 06/10/21.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos : [String] = []
    var significadoSignos : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //config signos no array
        signos.append("Aries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sargitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        //configura significado no array
        
        significadoSignos.append("Os nascidos de Áries são pessoas cheias de entusiamo. Pioneiro e aventureiros, lhe encantam as metas, a liberdade e novas idéias.")
        significadoSignos.append("Os nascidos de Touro tendem a ser mais ponderados, firmes e difíceis de serem persuadidos quando tomam decisões. touro também é símbolo de força de trabalho. Além de um instinto natural para a sensualidade, os nativos desse signo tendem a apreciar tudo intensamente.")
        significadoSignos.append("Os nascidos de Gêmeos são comunicativos, versáteis e sociáveis. Gostam de criar linhas de raciocínio e especulações na tentativa de entender diversos assuntos. ")
        significadoSignos.append("Os nascidos de Câncer precisam de uma casinha para se esconder quando sentem o perigo, e quando desejam alguma coisa, rodeiam, rodeiam, até conquistar seus objetivos.")
        significadoSignos.append("Os nascidos de Leão pertencem ao elemento Fogo, que basicamente, mostra muita determinação, volatilidade e animação. Quem experimenta toda essa energia tem muita coragem para enfrentar o que for, mas também se torna um pouco temperamental demais. Quanto à fama, são conhecidos como os mais vaidosos e exibidos do Zodíaco.")
        significadoSignos.append("Os nascidos de VIgem são o signo da ordem e da limpeza, do asseio e da organização. ... Virgem é um signo complexo, que precisa de leis e regras para não enlouquecer diante de tantos detalhes que enxerga em torno de si.")
        significadoSignos.append("Os nascidos de Libra simbolizam justiça, calma, integridade e empatia. Os nativos desse signo costumam ser comunicativos e espontâneos, o que muitas vezes os levam a dúvidas. as características de Libra marcantes estão relacionadas com a perfeição, sinceridade e equilíbrio.")
        significadoSignos.append("O nascidos de Escorpião são corajosos, destemidos, ambiciosos e quase sempre conseguem o que quer; Se você estiver procurando um(a) parceiro(a) para a vida toda, sensualidade e profundidade numa relação e que suporte as crises certeiras de um relacionamento, não hesite em arriscar uma pessoa de Escorpião.")
        significadoSignos.append("Os nascidos de Sargitário sabem ser um bom conselheiro, como um sacerdote, mas sabe também, dar seus coices. Sim, porque Sagitário é um signo agressivo, briguento, intolerante. ... Sagitário traz como principal marca, o sentido de liberdade, portanto, nem tente aprisioná-lo ou controlá-lo.")
        significadoSignos.append("Os nascidos de Capricórnio, assim como o cabrito, escala a montanha do sucesso e da aquisição de poder pessoal. ... Todo Capricórnio é trabalhador, constante, persistente, obstinado, ambicioso, astuto e dono de uma considerável força de vontade.")
        significadoSignos.append("Os nascidos de Aquário muitas vezes é mal compreendido. É o signo da Nova Era e as pessoas que estão devidamente sintonizadas com essas energias, compreendem com mais clareza e racionalidade, as mudanças coletivas que todos vivemos neste momento planetário.")
        significadoSignos.append("Os nascidos de Peixes é um signo de água regido por Netuno, o deus dos mares e oceanos. Este é um signo complexo que traz em si a confusão própria da dificuldade em definir uma identidade. ... Essa é a forma que toda pessoa de Peixes se relaciona com pessoas, com o mundo e a vida em geral.")
      

        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for:indexPath)
        celula.textLabel?.text = signos[indexPath.row]
        
        return celula 
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertaController = UIAlertController(title: "Significado do Signo", message: significadoSignos[indexPath.row], preferredStyle: .alert)
        let acaoConfirmar = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertaController.addAction(acaoConfirmar)
        
        present(alertaController, animated: true, completion: nil)
        
        // print(significadoSignos[indexPath.row])
    }


}

