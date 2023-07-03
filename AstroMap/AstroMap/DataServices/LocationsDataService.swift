//
//  LocationsDataService.swift
//  AstroMap
//
//  Created by AstroTeam on 24/03/2023.
//

import Foundation
import MapKit

class LocationsDataService {
    static let locations: [Location] = [
        Location(
            name: "Observatoire de Paris",
            address: "61 Avenue de l'Observatoire, 75014 Paris",
            cityName: "Paris",
            coordinate: CLLocationCoordinate2D(latitude: 48.835892, longitude: 2.336510),
            description: "Fondé en 1667, l'Observatoire de Paris est le plus ancien observatoire astronomique encore en activité en France. Il propose des visites et des conférences sur l'astronomie et l'astrophysique.",
            schedule: ["Lundi :","Mardi :","Mercredi :","Jeudi :","Vendredi :","Samedi :","Dimanche :"],
            hours: ["9h - 18h", "9h - 18h", "9h - 18h", "9h - 18h", "9h - 18h", "10h - 16h", "fermé"],
            price: ["Adulte": 10.0, "Enfant": 5.0],
            image: "observatory-paris",
            category: .observatory,
            isOpen: true,
            favorite: true
        ),
        Location(
            name: "Observatoire de la Sorbonne",
            address: "17, rue de la Sorbonne, 75005 Paris",
            cityName: "Paris",
            coordinate: CLLocationCoordinate2D(latitude: 48.848789, longitude: 2.343605),
            description: "L'Observatoire de la Sorbonne, situé au cœur de Paris, a été fondé en 1885 par l'astronome Camille Flammarion. Il fait partie de l'Université de la Sorbonne et est installé sur le toit de celle-ci. Doté d'instruments d'observation astronomique, l'observatoire sert de centre de recherche et d'éducation. Bien qu'il ne soit pas ouvert au public pour des visites régulières, des événements spéciaux y sont parfois organisés.",
            schedule: ["Lundi :","Mardi :","Mercredi :","Jeudi :","Vendredi :","Samedi :","Dimanche :"],
            hours: ["9h - 18h", "9h - 18h", "9h - 18h", "9h - 18h", "9h - 18h", "10h - 16h", "fermé"],
            price: ["Adulte": 10.0, "Enfant": 5.0],
            image: "observatory-sorbonne",
            category: .observatory,
            isOpen: false,
            favorite: false
        ),
        Location(
            name: "Pic du Midi",
            address: "65200 La Mongie",
            cityName: "La Mongie",
            coordinate: CLLocationCoordinate2D(latitude: 42.936111, longitude: 0.142778),
            description: "Le Pic du Midi est un observatoire astronomique situé à 2 877 mètres d'altitude dans les Pyrénées. Il offre des vues spectaculaires et propose des activités telles que des visites, des ateliers et des observations nocturnes.",
            schedule: ["Lundi :","Mardi :","Mercredi :","Jeudi :","Vendredi :","Samedi :","Dimanche :"],
            hours: ["9h - 18h", "9h - 18h", "9h - 18h", "9h - 18h", "9h - 18h", "10h - 16h", "fermé"],
            price: ["Adulte": 10.0, "Enfant": 5.0],
            image: "observatory-pic-midi",
            category: .observatory,
            isOpen: true,
            favorite: false
        ),
        Location(
            name: "Cité des sciences et de l'industrie",
            address: "75018 Paris",
            cityName: "Paris",
            coordinate: CLLocationCoordinate2D(latitude: 48.895618, longitude: 2.387829),
            description: "Description A",
            schedule: ["Lundi :","Mardi :","Mercredi :","Jeudi :","Vendredi :","Samedi :","Dimanche :"],
            hours: ["9h - 18h", "9h - 18h", "9h - 18h", "9h - 18h", "9h - 18h", "10h - 16h", "fermé"],
            price: ["Adulte": 10.0, "Enfant": 5.0],
            image: "museum-cite-sciences",
            category: .museum,
            isOpen: true,
            favorite: false
        ),
        Location(
            name: "Palais de la Découverte",
            address: "Av. Franklin Delano Roosevelt, 75008 Paris",
            cityName: "Paris",
            coordinate: CLLocationCoordinate2D(latitude: 48.866153, longitude: 2.310813),
            description: "Description B",
            schedule: ["Lundi :","Mardi :","Mercredi :","Jeudi :","Vendredi :","Samedi :","Dimanche :"],
            hours: ["9h - 18h", "9h - 18h", "9h - 18h", "9h - 18h", "9h - 18h", "10h - 16h", "fermé"],
            price: ["Adulte": 10.0, "Enfant": 5.0],
            image: "museum-palais-decouverte",
            category: .museum,
            isOpen: true,
            favorite: false
        ),
        Location(
            name: "Musée de l’Air et de l’Espace",
            address: "3, esplanade de l’Air et de l’Espace, 93350 Le Bourget",
            cityName: "Le Bourget",
            coordinate: CLLocationCoordinate2D(latitude: 48.946537, longitude: 2.434635),
            description: "Description A",
            schedule: ["Lundi :","Mardi :","Mercredi :","Jeudi :","Vendredi :","Samedi :","Dimanche :"],
            hours: ["9h - 18h", "9h - 18h", "9h - 18h", "9h - 18h", "9h - 18h", "10h - 16h", "fermé"],
            price: ["Adulte": 10.0, "Enfant": 5.0],
            image: "planetarium-bourget",
            category: .planetarium,
            isOpen: true,
            favorite: false),
        Location(
            name: "Cité de l'Espace",
            address: "Av. Jean Gonord, 31500 Toulouse",
            cityName: "Toulouse",
            coordinate: CLLocationCoordinate2D(latitude: 43.586614, longitude: 1.493339),
            description: "Description B",
            schedule: ["Lundi :","Mardi :","Mercredi :","Jeudi :","Vendredi :","Samedi :","Dimanche :"],
            hours: ["9h - 18h", "9h - 18h", "9h - 18h", "9h - 18h", "9h - 18h", "10h - 16h", "fermé"], price: ["Adulte": 10.0, "Enfant": 5.0],
            image: "planetarium-cite-espace",
            category: .planetarium,
            isOpen: true,
            favorite: false
        ),
        Location(
            name: "Association Française d'Astronomie",
            address: "17 Rue Émile Deutsch de la Meurthe, 75014 Paris",
            cityName: "Paris",
            coordinate: CLLocationCoordinate2D(latitude: 48.821666, longitude: 2.334709),
            description: "Fondée en décembre 1946 par Pierre Bourge, l'Association française d'astronomie a pour objectif de « donner au plus grand nombre l'envie et les moyens de pratiquer l'astronomie ». Elle est présidée depuis 1993 par Olivier Las Vergnas et animée par Alain Cirou et Éric Piednoël.",
            schedule: ["Lundi :","Mardi :","Mercredi :","Jeudi :","Vendredi :","Samedi :","Dimanche :"],
            hours: ["9h - 18h", "9h - 18h", "9h - 18h", "9h - 18h", "9h - 18h", "10h - 16h", "fermé"],
            price: ["Adulte": 10.0, "Enfant": 5.0],
            image: "astroclub-afa",
            category: .astronomyclub,
            isOpen: true,
            favorite: false
        ),
        Location(
            name: "Club d'Astronomie Antony",
            address: "193 Rue des Rabats, 92160 Antony",
            cityName: "Antony",
            coordinate: CLLocationCoordinate2D(latitude: 48.737441, longitude: 2.303687),
            description: "Description B",
            schedule: ["Lundi :","Mardi :","Mercredi :","Jeudi :","Vendredi :","Samedi :","Dimanche :"],
            hours: ["9h - 18h", "9h - 18h", "9h - 18h", "9h - 18h", "9h - 18h", "10h - 16h", "fermé"],
            price: ["Adulte": 10.0, "Enfant": 5.0],
            image: "astroclub-2",
            category: .astronomyclub,
            isOpen: true,
            favorite: false
        ),
        Location(
            name: "Les Étincelles du Palais de la découverte",
            address: "186 Rue St Charles, 75015 Paris",
            cityName: "Paris",
            coordinate: CLLocationCoordinate2D(latitude: 48.840925, longitude: 2.279657),
            description: "Un planétarium de 49 places vous entraîne dans les méandres de l’univers grâce à un projecteur numérique permettant d’effectuer un véritable voyage aux confins de la galaxie. De quoi remplir les esprits même quand il n’y a pas école.",
            schedule: ["Lundi :","Mardi :","Mercredi :","Jeudi :","Vendredi :","Samedi :","Dimanche :"],
            hours: ["10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h"],
            price: ["Adulte": 4.0, "Enfant": 4.0],
            image: "planetarium-etincelles",
            category: .planetarium,
            isOpen: true,
            favorite: false
        ),
        Location(
            name: "Observatoire de Paris - Meudon",
            address: "5 Pl. Jules Janssen, 92190 Meudon",
            cityName: "Meudon",
            coordinate: CLLocationCoordinate2D(latitude: 48.804991, longitude: 2.226694),
            description: "Fondé en 1667 pour être le lieu de travail des astronomes académiciens du Roi Soleil, il est toujours le cœur de l’astronomie française, institution majeure dans le monde scientifique. Il a été un site d’observation jusqu’à la fin du XXe siècle, de conception d’instruments et de recherches théoriques abordant tous les domaines de l’astronomie. Avec une activité scientifique ininterrompue et un soin de conserver et archiver, il est devenu un lieu extrêmement riche de patrimoines scientifiques et techniques.",
            schedule: ["Lundi :","Mardi :","Mercredi :","Jeudi :","Vendredi :","Samedi :","Dimanche :"],
            hours: ["10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h"],
            price: ["Adulte": 7.0, "Enfant": 7.0],
            image: "Observatoire_PMN",
            category: .observatory,
            isOpen: true,
            favorite: false
        ),
        Location(
            name: "Parc aux Etoiles",
            address: "2 rue de la Chapelle, 78510 Triel-sur-Seine",
            cityName: "Triel-sur-Seine",
            coordinate: CLLocationCoordinate2D(latitude: 48.998101, longitude: 2.009057),
            description: "Ce musée d'astronomie vous propose de découvrir les mystères de l'univers. Galaxies, constellations, système solaire, Big-bang et ondes martiennes n'auront plus de secret pour vous. La grande lunette astronomique, accessible au public vous dévoilera ses images spectaculaires de la Lune, du soleil et des planètes... Parcourez également le domaine boisé du Château de la Tour, véritable havre de paix et de verdure.",
            schedule: ["Lundi :","Mardi :","Mercredi :","Jeudi :","Vendredi :","Samedi :","Dimanche :"],
            hours: ["10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h"],
            price: ["Adulte": 4.0, "Enfant": 4.0],
            image: "Parc_aux-etoiles",
            category: .museum,
            isOpen: true,
            favorite: false
        ),
        Location(
            name: "Planétarium Ludiver",
            address: "1700 Rue de la Libération, 50460 La Hague",
            cityName: "La Hague",
            coordinate: CLLocationCoordinate2D(latitude: 0, longitude: 0),
            description: "Ouvert en mai 2000, Ludiver a pour vocation de présenter l'astronomie de manière ludique. Cela se traduit par le choix de son nom, mélange des mots ludique et univers. Ce planétarium est adapté à tous les âges. Il propose en effet des activités pour les enfants dès l'âge de 3 ans.Ludiver possède un planétarium de 96 places, ainsi que deux télescopes de 600 mm et 300 mm informatisés, une salle des planètes représentant les astres du système solaire et la conquête de la Lune par des activités ludiques, un amphithéâtre de 100 places. Ludiver comprend également, une boutique, un espace de lecture sur place, se nommant la ludithèque. Le hall (relativement grand) propose une exposition temporaire renouvelée tous les six mois, et la salle des planètes constitue l'exposition permanente.Un espace détente, avec vue panoramique est accessible en accès libre avec distributeur de boissons et de confiseries. Le parc qui entoure le planétarium propose des jeux de pistes interactifs adaptés aux différents types d'âges, et un ancien cadran solaire romain est exposé au milieu.",
            schedule: ["Lundi :","Mardi :","Mercredi :","Jeudi :","Vendredi :","Samedi :","Dimanche :"],
            hours: ["10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h"],
            price: ["Adulte": 4.0, "Enfant": 4.0],
            image: "Planetarium_Ludiver",
            category: .planetarium,
            isOpen: true,
            favorite: false
        ),
        Location(
            name: "Le Telescope",
            address: "103 Av. Georges Gosnat, 94200 Ivry-sur-Seine",
            cityName: "Ivry-sur-Seine",
            coordinate: CLLocationCoordinate2D(latitude: 48.811292, longitude: 2.384724),
            description: "PETITE HISTOIRE DU CLUB Le club d’astronomie existe à Ivry depuis les années 1970 intégré dans un mouvement d’éducation populaire. Depuis 2000, il s’est constitué en association loi 1901 à part entière. L’objet de l’association est la pratique et la promotion de l’astronomie.LES MEMBRES L’association regroupe environ une quarantaine de membres venant de tout horizon, tous bénévoles et amateurs d’astronomie. ",
            schedule: ["Lundi :","Mardi :","Mercredi :","Jeudi :","Vendredi :","Samedi :","Dimanche :"],
            hours: ["10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h"],
            price: ["Adulte": 4.0, "Enfant": 4.0],
            image: "Le_telescope",
            category: .astronomyclub,
            isOpen: true,
            favorite: false
        ),
        Location(
            name: "Espace des sciences",
            address: "10 Cr des Alliés, 35000 Rennes",
            cityName: "Rennes",
            coordinate: CLLocationCoordinate2D(latitude: 0, longitude: 0),
            description: "Association loi de 1901, l’Espace des sciences, créé le 7 avril 1984, est un centre de culture scientifique, technique et industrielle. Acteur majeur de la médiation scientifique à destination du grand public et des scolaires, il est situé à Rennes au sein des Champs Libres.",
            schedule: ["Lundi :","Mardi :","Mercredi :","Jeudi :","Vendredi :","Samedi :","Dimanche :"],
            hours: ["10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h"],
            price: ["Adulte": 4.0, "Enfant": 4.0],
            image: "Espace_des_sciences",
            category: .museum,
            isOpen: true,
            favorite: false
        ),
        Location(
            name: "Club d'Astronomie Lyon Ampère",
            address: "Bâtiment planétaire, Place de la Nation, 69120 Vaulx-en-Velin",
            cityName: "Vaulx-en-Velin",
            coordinate: CLLocationCoordinate2D(latitude: 0, longitude: 0),
            description: "Le club a pour vocation le développement de la culture scientifique et technique liée à l'astronomie.Ses objectifs sont la diffusion des connaissances en astronomie, à un public le plus varié possible, en particulier en direction des enfants et adolescents, et des quartiers difficiles.Cette association se veut accessible à tous quel que soit le niveau de connaissance et de culture initiale.",
            schedule: ["Lundi :","Mardi :","Mercredi :","Jeudi :","Vendredi :","Samedi :","Dimanche :"],
            hours: ["10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h", "10h - 18h"],
            price: ["Adulte": 8.0, "Enfant": 6.0],
            image: "astroclub-lyon-ampere",
            category: .astronomyclub,
            isOpen: true,
            favorite: false
        ),
    ]
}