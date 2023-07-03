//
//  FavoriteView.swift
//  AstroMap
//
//  Created by AstroTeam on 21/03/2023.
//

import SwiftUI

struct Start : Identifiable {
     let id = UUID()
     let image : String
     let name  : String
}

struct NewList : View {
    var recuperationPlaces : Start
     
    var body : some View {
        VStack{
            Image(systemName: recuperationPlaces.image)
            Text(recuperationPlaces.name)
        }
    
    }
}



struct FavoriteView : View {
    
 @State  private var  showinfo : Bool = false



  var FavorryArray = [Start(image:"AppIcon", name: "L’observatoire Camille-Flammarion")]
      

    private func actionSheet() {
        guard let urlShare = URL(string: "https://developer.apple.com/xcode/swiftui/") else { return }
        let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
        
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let rootViewController = windowScene.windows.first?.rootViewController {
            rootViewController.present(activityVC, animated: true, completion: nil)
        }
    }

  var body: some View {
       ZStack {
          
               Spacer()
        
             ScrollView(.vertical, showsIndicators: false){
                HStack{
                    
                    Spacer()
                    Text("Favoris").font(.title).foregroundColor(Color("Yellow"))
                
                    Spacer()
                    Button(action: actionSheet) {
                        Image(systemName: "square.and.arrow.up").font(.title).foregroundColor(Color("Yellow"))
                    }.padding()
                    
                        Spacer()
                       }
                VStack (alignment: .leading){
                        
                    VStack (alignment: .leading, spacing: 0.0){
                       
                        HStack {
                            Text("Observatoire : ").font(.title).fontWeight(.regular).foregroundColor(Color( "WhiteGold")).multilineTextAlignment(.leading).padding()
                           
                            Button(action:{
                                
                                showinfo.toggle()
                                
                              },label: {
                                
                                  Image(systemName: "bell.circle.fill")
                                      .foregroundColor(Color("Yellow")).font(.largeTitle).padding()
                                
                              }).sheet(isPresented: $showinfo, content: {ToggleNotification(out: $showinfo, showinfo:$showinfo)
                                
                            })
                        }
                      
                  }// mécanisme de déplacement à gauche/droite et en bas
                   
                            ScrollView(.horizontal, showsIndicators: false){
                            
                HStack(alignment: .top){
                                
                    ForEach(FavorryArray) { FavorryArray in
                                    
                        
                        ExtractionStart(name: "Observatoire de Paris-Meudon-Nançay", image: "Observatoire de Paris-Meudon-Nançay", lieu:"5 Pl. Jules Janssen, 92190 Meudon  \r ", news: "Fondé en 1667 pour être le lieu de travail des astronomes académiciens du Roi Soleil, il est toujours le cœur de l’astronomie française, institution majeure dans le monde scientifique. Il a été un site d’observation jusqu’à la fin du XXe siècle, de conception d’instruments et de recherches théoriques abordant tous les domaines de l’astronomie. Avec une activité scientifique ininterrompue et un soin de conserver et archiver, il est devenu un lieu extrêmement riche de patrimoines scientifiques et techniques.", timeAstronommie: "de 8h à  20h du 1er avril au 30 septembre \r de 8h à 18h du 1er octobre au 31 mars")
                        
                        
                        ExtractionStart(name: "Observatoire Camille Flammarion", image: "Observatoire Camille Flammarion", lieu: "32 Av. de la Cr de France, 91260 Juvisy-sur-Orge", news:"L’observatoire a été fondé en 1883 par Camille Flammarion. Il est classé monument historique. Son fonds scientifique privé de Camille Flammarion est le plus important d’Île-de-France, témoin précieux de l’astronomie et de ses progrès au XIXe et début du XXe siècles. La coupole abrite la lunette de Camille Flammarion de 240 mm de diamètre et 3 600 mm de focale. De monture équatoriale, elle s’inspire d’une de celles de l’Observatoire de Paris. À l’exception de la partie haute, de sa coupole et de sa lunette astronomique qui ont été restaurées récemment et sont en activité, le bâtiment principal est très dégradé. L’édifice nécessite une restauration importante afin de pouvoir à nouveau héberger la collection scientifique de Flammarion. C’est le grand projet qu’a entrepris de mener à bien la SAF dans les années qui viennent et qui nécessite le concours de nombreux partenaires, tant publics que privés." , timeAstronommie: "Lundi au vendredi : 9 h 00 à 17 h 30 Samedi : sous réserve de réunion de commission Fermé le dimanche")
                        ExtractionStart(name: " Observatoire de Lyon", image: "Observatoire de Lyon", lieu: "9 Av. Charles André, 69230 Saint-Genis-Laval", news: " L'observatoire de Lyon est un « observatoire des sciences de l'univers » (OSU) rattaché à l'université Claude Bernard Lyon 1 et co-piloté par l'Institut national des sciences de l'univers (INSU) et par le Centre national de la recherche scientifique (CNRS). À la Recherche et aux formations initiale et continue s’ajoutent des missions spécifiques : les « services d’observation » et la diffusion de la culture scientifique et technique.L'observatoire de Lyon est un ensemble d’environ 200 personnes, établi sur deux sites : le site historique de Saint-Genis-Laval fondé en 1878 et le bâtiment Géode sur le campus universitaire de la Doua avec une antenne importante à l’École Normale Supérieure de Lyon, à Gerland.", timeAstronommie: "")
                        ExtractionStart(name: " Observatoire ", image: "Observatoire de Bordeaux", lieu: "9 Av. Charles André, 69230 Saint-Genis-Laval", news: "La réalisation de travaux de Recherche fondamentale ou appliquée en sciences de la Terre et de l’univers, en liaison avec les grands organismes de recherche nationaux et internationaux, notamment l’INSU et le CNRS ; L’observation permanente de phénomènes naturels et anthropiques ;La formation initiale et continue dans le domaine des sciences de la Terre et de l’univers ;Le progrès et la diffusion des connaissances dans le domaine des sciences de la Terre et de l’univers, en particulier auprès des personnels enseignants et des usagers du service public de l’enseignement ; Le soutien aux réalisations instrumentales ; La collecte, l’archivage, le traitement et la diffusion, au plan national et international, des données d’observatoires et des grands programmes nationaux et internationaux en sciences de la Terre et de l’univers.", timeAstronommie: "")
                        
                                }
                            }
                               

                        }
                VStack (alignment: .leading, spacing: 0.0){
                    
                    
                        Text("Planétarium :").font(.title).fontWeight(.regular).foregroundColor(Color( "WhiteGold")).multilineTextAlignment(.leading).padding()
                    
                    
                            
                        }
                        
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(alignment: .top){
                                
                            ForEach(FavorryArray) { FavorryArray in
                                    
                                ExtractionStart(name: "À la rencontre d'Andromède", image: "À la rencontre d'Andromède", lieu: "30 avenue Corentin Cariou 75019 Paris, France", news: "La galaxie se cache non loin de la constellation du même nom et du fameux W de Cassiopée, mère d’Andromède dans la mythologie grecque. L’étude de sa lumière est riche d’informations pour les astrophysiciens afin de comprendre sa structure, sa composition et l’histoire de sa formation. L’analyse du spectre lumineux a aussi permis de prédire une future collision avec notre galaxie. Elle est prévue par les scientifiques dans quatre milliards d’années... En avant-première, le Planétarium vous propose d’assister à cette fascinante rencontre !", timeAstronommie: "à 14h en période scolaire (zones A, B et C) : du mardi 7 mars au dimanche 9 avril   du mardi 9 mai au dimanche 9 juillet")
                                
                                ExtractionStart(name: "Pécho sous les étoiles", image: "Pécho sous les étoiles" , lieu: "Avenue Franklin Delano Roosevelt 75008 Paris, France", news: "Découvrir les bases de l’observation du ciel à l’œil nu : différence entre une étoile et une planète, se repérer dans le ciel à l’aide des constellations. Le thème de la séduction amoureuse est un excellent prétexte pour aborder de manière légère et humoristique différentes notions d’astronomie (les saisons, la précession des équinoxes, les étoiles filantes…).Grâce au simulateur astronomique, l’animateur vous emmène faire un voyage à la fois dans le temps et dans l’espace. Le temps d’un rendez-vous, le planétarium deviendra l’antichambre du septième ", timeAstronommie: "")
                                ExtractionStart(name: "Parés au décollage !", image: "Parés au décollage !", lieu: "30 avenue Corentin Cariou 75019 Paris, France", news: "Ce spectacle, à destination du jeune public, a été créé  en collaboration avec l'équipe de la Cité des enfants.À bord d’un vaisseau spatial et spécial, embarquez pour un voyage immersif à travers le système solaire. La sonde Voyager 1 risque à tout moment de s’éteindre… Votre mission : la retrouver et la recharger. Ce spectacle immersif théâtralisé, rythmé par des temps d’échanges et des anecdotes surprenantes, permettra de vous glisser dans la peau d’un-e spationaute pour une mission de haute volée !", timeAstronommie: "à 14h en période scolaire (zones A, B et C) :du mardi 7 mars au dimanche 9 avril du mardi 9 mai au dimanche 9 juillet")
                                ExtractionStart(name: "Polaris", image: "Polaris", lieu: "30 avenue Corentin Cariou 75019 Paris, France", news: "", timeAstronommie: "à 12h, en période scolaire (zones A, B et C) du mardi 7 mars au dimanche 9 avril du mardi 9 mai au dimanche 9 juillet à 11h, du mardi au dimanche, du 11 avril au 7 mai")
                                
                                
                                }
                            }
                        }
                        
                    VStack (alignment: .leading, spacing: 0.0){
                        
                        
                        
                            Text("Musée :").font(.title).fontWeight(.regular).foregroundColor(Color( "WhiteGold")).multilineTextAlignment(.leading).padding()
                        
                        
                        
                            
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            
                            HStack(alignment:.top){
                                
                                ForEach(FavorryArray) { FavorryArray in
                                    
                                    
                                    ExtractionStart(name: "Musée de l'aire et de l'espace du Bourget", image: "Musée de l'aire et de l'espace du Bourget", lieu: "5 Pl. Jules Janssen, 92190 Meudon \t ", news: "S’installer aux commandes de simulateurs de vol pour comprendre la dynamique du vol, être assis confortablement dans le planétarium pour explorer l’espace, bénéficier de mini visites guidées en groupes restreints, monter à bord d’aéronefs et accéder à des parties habituellement interdites au public, tout ceci est possible au musée. Embarquement immédiat !", timeAstronommie: " mardi au dimanche de 10h00 à 17h00. Fermeture tous les lundis.")
                                    ExtractionStart(name: "Musée de l'Air et de l'Espace", image: "Musée de l'Air et de l'Espace au Bourget", lieu: "Aéroport de Paris-Le Bourget, 93352 Le Bourget", news: "PARIS - NOUMÉA  90 ans du premier raid Le 6 mars 1932, Charles de Verneilh, Max Devé et Emile Munch décollaient de l’aéroport du Bourget à bord du Couzinet 33 Biarritz en ce qui constitua le tout premier vol entre la France métropolitaine et la Nouvelle-Calédonie.  Départ du Bourget © D.R. / Coll. Musée de l'Air et de l'Espace - Le Bourget   Ce fut en bravant de nombreuses difficultés (notamment l’absence de frein et d’aide radio) et après 18 arrêts en Afrique, en Asie et en Australie, que les trois aviateurs parvinrent à rejoindre Nouméa, le 5 avril 1932.   Pour commémorer les 90 ans de cet événement mythique, le musée de l'Air et de l'Espace propose de le revivre étape par étape, au travers de photos et documents historiques postés sur ses réseaux sociaux.", timeAstronommie: "lundi    Fermé  mardi    10:00–17:00  mercredi    10:00–17:00  jeudi    10:00–17:00  vendredi    10:00–17:00  samedi    10:00–17:00 dimanche    10:00–17:00")
                                    ExtractionStart(name: "Musée de l'Air  ", image: "la-salle-des-huit-colonnes", lieu: "Aéroport de Paris-Le Bourget, 93352 Le Bourget", news: "Bertrand Dévé, fils du navigateur Max Dévé, donne rendez-vous à ceux et celles qui souhaitent en apprendre davantage sur le premier raid reliant la métropole à la Nouvelle-Calédonie. L'occasion pour lui de répondre aux questions des journalistes et, pour le musée de l'Air et de l'Espace, de présenter la maquette de l’avion Biarritz qui sera installée dans le parcours permanent, dans le Hall Entre-deux-guerres, et d’évoquer d’autres raids pendant la période.", timeAstronommie: ""
                                    )
                                    ExtractionStart(name: " grande-galerie-musee-de-lair", image: "grande-galerie-musee-de-lair", lieu: "36 Rue Geoffroy-Saint-Hilaire, 75005 Paris", news: "Les espèces terrestres s’adaptent aussi. Au premier niveau, l’éléphant conduit la caravane des animaux de la savane africaine. Les gros mammifères et leurs prédateurs s’emboîtent le pas. Des buffles, bubales, gnous, girafes et zèbres, des hyènes, lycaons, lions et guépards : devinez qui mange qui. Après la savane, direction l’Amérique du Sud. Parmi les locataires de la haute sculpture métallique qui reproduit l’étagement de la forêt tropicale, vous les reconnaîtrez peut-être : en bas, les tapir, tamanoir, tatou, anaconda et jaguar ; plus haut, les paresseux, le ara bleu ou le chat margay.  Sous d’autres latitudes, tout semble distinguer la faune saharienne (dromadaire, gazelle et renard des sables) de celle de l’Arctique ou de l’Antarctique (ours blanc, manchot empereur et phoque du Groenland). Excepté leurs conditions de vie extrêmes !", timeAstronommie: "0 H - 17 H"
                                    )
                                }
                                
                            }
                            
                            
                        }
                        
                    VStack (alignment: .leading, spacing: 0.0){
                            Text("Club d'astronomie :").font(.title).fontWeight(.regular).foregroundColor(Color( "WhiteGold")).multilineTextAlignment(.leading).padding()
                        
                        
                        
                    }
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            
                            HStack(alignment:.top){
                                
                                ForEach(FavorryArray) { FavorryArray in
                                    
                                    
                                    ExtractionStart(name: " Club de science Astronomie", image: "Pécho sous les étoiles", lieu: "17, rue Emile Deutsch de la Meurthe 75014 PARIS", news: "Découvrir les bases de l’observation du ciel à l’œil nu : différence entre une étoile et une planète, se repérer dans le ciel à l’aide des constellations.   Le thème de la séduction amoureuse est un excellent prétexte pour aborder de manière légère et humoristique différentes notions d’astronomie (les saisons, la précession des équinoxes, les étoiles filantes…).Grâce au simulateur astronomique, l’animateur vous emmène faire un voyage à la fois dans le temps et dans l’espace. Le temps d’un rendez-vous, le planétarium deviendra l’antichambre du septième ciel.", timeAstronommie: "")
                                    ExtractionStart(name: "Club d'astronomie d'Antony", image: "Club d'astronomie d'Antony", lieu: "193 Rue des Rabats, 92160 Antony", news: "Le Club d'Astronomie d'Antony promeut l'astronomie auprès d'un large public, et réunit des passionnés où chacun apporte son savoir et ses expériences dans un but d'enrichissement commun.Le Club organise des soirées d'observation, des interventions en milieu scolaire pour une découverte du système solaire, des conférences spécialisées d'astrophysique. Il participe aux manifestations scientifiques locales et nationales.  Au sein du club, vous participez à des sorties nocturnes d'observation, des ateliers de manipulations d'instruments, d'astrophotographie ou de traitements d'images, des exposés traitant aussi bien d'une constellation que de cosmologie.  Quel que soit votre niveau, vous serez les bienvenus pour vous joindre aux activités proposées.", timeAstronommie: "")
                                    ExtractionStart(name: "Astro-Club de la GIRAFE", image: "Astro-Club de la GIRAFE", lieu: "   TANDEM - Centre d'Animation Beaulieu-Maladrerie 8, rue Nicolas Oresme - 14000 CAEN", news: "L’astroclub de la Girafe est un club d’amateurs d’astronomie situé à Caen.  Son objectif est de partager avec vous le ciel normand.  Notre association vous propose conseils, prêt de matériels, soirées d’observation sur le site de Banneville sur Ajon et à Caen, mais aussi des ateliers de formation et d’astrobricolage.  Si depuis sa création, en 1999, il a changé trois fois de nom et deux fois de statut, l’esprit du club est resté inchangé. Son but est toujours d’initier les personnes intéressées par l’astronomie, conseiller et assister les débutants, mais aussi de permettre aux amateurs de tous niveaux de se regrouper afin de partager leur passion céleste commune, de progresser dans leurs connaissances et leur pratique de l’astronomie.   Notre club est exclusivement animé par des bénévoles qui œuvrent pour l’association, en sus de leurs obligations quotidiennes professionnelles, familiales ou personnelles.  Nous faisons en sorte de répondre à tous, mais nous gérons en priorité les demandes de nos membres. Nous vous remercions de votre indulgence pour les délais éventuels de nos réponses.", timeAstronommie: "")
                                    ExtractionStart(name: "Les Pléiades du Perche", image: "Les Pléiades du Perche", lieu: " Mairie 5, rue des Pesles, La Saucelle, France", news: "Depuis 1995, l’AFA a initié des actions et des réflexions autour de la protection du ciel nocturne et de la pollution lumineuse. S'il paraît évident que la communauté des astronomes amateurs, et à ce titre l'AFA, est concernée, les conséquences de la disparition de la nuit sont multiples et pluridisciplinaires. Reconnue d'utilité publique depuis 2005, l’AFA a décidé de mettre à profit cette reconnaissance et de s'en servir pour mener des actions spécifiques relatives à la protection du ciel nocturne.", timeAstronommie: "")
                                    //extraction de la structure FirstView pour afficher le boutton les images et les titres
                                    
                                }
                            }
                        }
                        
                    }
                    
                }
                
            }.padding(.trailing, 15).background(Color("DarkBlue"))
        }
        
       
    }
    
struct ToggleNotification : View {
@Binding var out : Bool
@Binding var showinfo : Bool
@State var Fisttoggle = false
@State var Secondtoggle = false
@State var Threetoggle = false
@State var Fourtoggle = false
@State private  var icone : String = "⌫"

    var body : some View {
        
        
        VStack {
            Button(action:{
                
                out.toggle()//boutton de retour
                
            },label:{
                
                VStack {
                    Text(icone).padding().background(Color("Yellow")).foregroundColor(Color.black)
                }
               
            }).foregroundColor(Color("Yellow")).accessibilityIdentifier("Identifier")
            List{
                Section(header: Text("Notification")) {
                   
                  
                Toggle(isOn: $Fisttoggle) {
                    Text("Observatoire")
                }
                Toggle(isOn: $Secondtoggle) {
                    Text("Planétarium")
                }
                Toggle(isOn: $Threetoggle) {
                    Text("Musée")
                }
                Toggle(isOn: $Fourtoggle) {
                    Text("Club d'astronomie")
                }
                } .headerProminence(.increased)
            }.listStyle(.insetGrouped)
            
        }.background(Color("DarkBlue"))
        
    }
}
struct FavoriteView_Previews: PreviewProvider {
static var previews: some View {
        
              FavoriteView()
            
        }
     }

struct  ExtractionStart: View {
@State var name : String
@State var image : String
@State var lieu : String
@State var news : String
@State private var Validation : Bool = false
@State private var Selectostart : String =  "star.slash"
@State private var paddIng  : Double = 10
@State private var texte : String = ""
@State private var nul : String = ""
@State var timeAstronommie : String
@State private var  showingAlert : Bool = false


   

    var body: some View {
         ZStack {
             VStack {
                 Button(action:{
                        
                     Validation.toggle()
                        
                    },label: {
                        VStack(alignment: .center, spacing: 1.0){
                            HStack {
                                Image(image).resizable().scaledToFit().frame(width: 290,height: 290)
                                
                                Button(action:{
                                    
                                    showingAlert = true
                                  
                                    },label:{
                                    
                                 
                                    Image(systemName: Selectostart).font(.title).foregroundColor(Color("Yellow"))
                                    
                                    }).foregroundColor(Color.yellow).alert(isPresented:$showingAlert){
                                    Alert(
                                        title: Text("Supprimer \(name)?"),
                                        message: Text("Cet element sera  définitivement supprimer de vos favoris "),primaryButton: .default(Text("Supprimer")){
                                            
                                            paddIng = -500
                                            
                                        },secondaryButton: .default( Text("Annuler")))
                                }
                            }
                            
                            Text(name).font(.body)
                                .fontWeight(.medium)
                                          .multilineTextAlignment(.center).foregroundColor(Color("WhiteGold"))
                         
                    }
                    }).padding(paddIng).foregroundColor(Color("DarkBlue")).cornerRadius(20) .sheet(isPresented:$Validation, content: {ModalView(OutModal: $Validation, Selectostart:$Selectostart, name : $name,image:$image, Validation: $Validation, paddIng: $paddIng, lieu: $lieu, texte: $texte,timeAstronommie: $timeAstronommie,news: $news)
                       
                    })
                }
            }
        }
    }

struct ModalView: View {
@Binding  var OutModal: Bool
@Binding  var Selectostart : String
@Binding  var name : String
@Binding  var image : String
@Binding  var Validation : Bool
@Binding  var paddIng : Double
@Binding  var lieu : String
@Binding  var texte : String
@Binding  var timeAstronommie : String
@Binding  var news : String
@State private  var icone : String = "⌫"
@State private var showMoreInfo: Bool = false

   
    var body: some View {
        ZStack {
           Color("DarkBlue").ignoresSafeArea()
            ScrollView{
                VStack {
                    Spacer()
                    HStack {
                    
                        
                        Button(icone){
                            
                            OutModal.toggle()//boutton de retour
                            
                        }.foregroundColor(Color("DarkBlue")).accessibilityIdentifier("Identifier").padding().background(Color("Yellow"))
                        
                     
                  
                    }
                    
                    Spacer()
                    VStack {
                        Image(image).resizable().aspectRatio(contentMode:.fit)
                        
                        Text(name).font(.largeTitle).foregroundColor(Color("WhiteGold")).multilineTextAlignment(.leading).padding(.bottom, 7.0)
                        
                        Text(news).foregroundColor(Color( "WhiteGold")).multilineTextAlignment(.leading).lineLimit(showMoreInfo ? nil : 2)
                        
                        Text(texte).foregroundColor(Color("WhiteGold")).multilineTextAlignment(.leading).lineLimit(showMoreInfo ? nil : 2)
                        
                        Text(lieu).foregroundColor(Color("WhiteGold")).multilineTextAlignment(.leading).lineLimit(showMoreInfo ? nil : 2).padding(.vertical).fontWeight(.heavy)
                        
                        Text("Ouvert du lundi au vendredi  : \(timeAstronommie)").foregroundColor(Color("WhiteGold")).multilineTextAlignment(.leading).lineLimit(showMoreInfo ? nil : 2).padding(.vertical).fontWeight(.bold)
                       
                    }
                    Button(action: {
                        showMoreInfo.toggle()
                    }) {
                        Text(showMoreInfo ? "Masquer la description" : "Afficher la description")
                            .font(.callout)
                            .foregroundColor(Color.black)
                        
                        
                    }.padding().background(Color("Yellow"))
                    Spacer()
                    
                    
                }
             }
            }
            
        }
    }
