//
//  ArticleModel.swift
//  iMarsUIKit
//
//  Created by Laura on 18/03/2021.
//
import SwiftUI
import Foundation




struct Article : Identifiable{
    var id = UUID()
    let photo : String
    let titre : String
    let source : String
    let date : String
    let contenu : String
    let icone : String
}


let Articles = [
    Article(photo: "marsice", titre: "What happened to Mars's water?", source: "California Institute of Technology", date: "March 16, 2021", contenu: "Billions of years ago, the Red Planet was far more blue; according to evidence still found on the surface, abundant water flowed across Mars and forming pools, lakes, and deep oceans. The question, then, is where did all that water go?\n The answer: nowhere. According to new research from Caltech and JPL, a significant portion of Mars's water -- between 30 and 99 percent -- is trapped within minerals in the planet's crust. The research challenges the current theory that the Red Planet's water escaped into space. \n The Caltech/JPL team found that around four billion years ago, Mars was home to enough water to have covered the whole planet in an ocean about 100 to 1,500 meters deep; a volume roughly equivalent to half of Earth's Atlantic Ocean. But, by a billion years later, the planet was as dry as it is today. Previously, scientists seeking to explain what happened to the flowing water on Mars had suggested that it escaped into space, victim of Mars's low gravity. Though some water did indeed leave Mars this way, it now appears that such an escape cannot account for most of the water loss.\n Atmospheric escape doesn't fully explain the data that we have for how much water actually once existed on Mars, says Caltech PhD candidate Eva Scheller (MS '20), lead author of a paper on the research that was published by the journal Science on March 16 and presented the same day at the Lunar and Planetary Science Conference (LPSC). Scheller's co-authors are Bethany Ehlmann, professor of planetary science and associate director for the Keck Institute for Space Studies; Yuk Yung, professor of planetary science and JPL senior research scientist; Caltech graduate student Danica Adams; and Renyu Hu, JPL research scientist. Caltech manages JPL for NASA.\n The team studied the quantity of water on Mars over time in all its forms (vapor, liquid, and ice) and the chemical composition of the planet's current atmosphere and crust through the analysis of meteorites as well as using data provided by Mars rovers and orbiters, looking in particular at the ratio of deuterium to hydrogen (D/H).\n Water is made up of hydrogen and oxygen: H2O. Not all hydrogen atoms are created equal, however. There are two stable isotopes of hydrogen. The vast majority of hydrogen atoms have just one proton within the atomic nucleus, while a tiny fraction (about 0.02 percent) exist as deuterium, or so-called heavy hydrogen, which has a proton and a neutron in the nucleus.\n The lighter-weight hydrogen (also known as protium) has an easier time escaping the planet's gravity into space than its heavier counterpart. Because of this, the escape of a planet's water via the upper atmosphere would leave a telltale signature on the ratio of deuterium to hydrogen in the planet's atmosphere: there would be an outsized portion of deuterium left behind.\n However, the loss of water solely through the atmosphere cannot explain both the observed deuterium to hydrogen signal in the Martian atmosphere and large amounts of water in the past. Instead, the study proposes that a combination of two mechanisms -- the trapping of water in minerals in the planet's crust and the loss of water to the atmosphere -- can explain the observed deuterium-to-hydrogen signal within the Martian atmosphere.\n When water interacts with rock, chemical weathering forms clays and other hydrous minerals that contain water as part of their mineral structure. This process occurs on Earth as well as on Mars. Because Earth is tectonically active, old crust continually melts into the mantle and forms new crust at plate boundaries, recycling water and other molecules back into the atmosphere through volcanism. Mars, however, is mostly tectonically inactive, and so the drying of the surface, once it occurs, is permanent.\n Atmospheric escape clearly had a role in water loss, but findings from the last decade of Mars missions have pointed to the fact that there was this huge reservoir of ancient hydrated minerals whose formation certainly decreased water availability over time, says Ehlmann.\n All of this water was sequestered fairly early on, and then never cycled back out, Scheller says. The research, which relied on data from meteorites, telescopes, satellite observations, and samples analyzed by rovers on Mars, illustrates the importance of having multiple ways of probing the Red Planet, she says.\n Ehlmann, Hu, and Yung previously collaborated on research that seeks to understand the habitability of Mars by tracing the history of carbon, since carbon dioxide is the principal constituent of the atmosphere. Next, the team plans to continue to use isotopic and mineral composition data to determine the fate of nitrogen and sulfur-bearing minerals. In addition, Scheller plans to continue examining the processes by which Mars's surface water was lost to the crust using laboratory experiments that simulate Martian weathering processes, as well as through observations of ancient crust by the Perseverance rover. Scheller and Ehlmann will also aid in Mars 2020 operations to collect rock samples for return to Earth that will allow the researchers and their colleagues to test these hypotheses about the drivers of climate change on Mars.\n 1 . E. L. Scheller, B. L. Ehlmann, Renyu Hu, D. J. Adams, Y. L. Yung. Long-term drying of Mars by sequestration of ocean-scale volumes of water in the crust. Science, 2021; eabc7717 DOI: 10.1126/science.abc7717\n 2. California Institute of Technology. (2021, March 16). What happened to Mars's water? It is still trapped there: New data challenges the long-held theory that all of Mars's water escaped into space. ScienceDaily. Retrieved March 18, 2021 from www.sciencedaily.com/releases/2021/03/210316132106.htm", icone: "doc.plaintext.fill"),
    
    Article(photo: "roverlanding", titre: "Touchdown! NASA's Mars Perseverance rover safely lands on Red Planet", source: "NASA", date: "February 18, 2021", contenu:"The largest, most advanced rover NASA has sent to another world touched down on Mars Thursday, after a 203-day journey traversing 293 million miles (472 million kilometers). Confirmation of the successful touchdown was announced in mission control at NASA's Jet Propulsion Laboratory in Southern California at 3:55 p.m. EST (12:55 p.m. PST). Packed with groundbreaking technology, the Mars 2020 mission launched July 30, 2020, from Cape Canaveral Space Force Station in Florida. The Perseverance rover mission marks an ambitious first step in the effort to collect Mars samples and return them to Earth. This landing is one of those pivotal moments for NASA, the United States, and space exploration globally -- when we know we are on the cusp of discovery and sharpening our pencils, so to speak, to rewrite the textbooks, said acting NASA Administrator Steve Jurczyk. The Mars 2020 Perseverance mission embodies our nation's spirit of persevering even in the most challenging of situations, inspiring, and advancing science and exploration. The mission itself personifies the human ideal of persevering toward the future and will help us prepare for human exploration of the Red Planet.\nAbout the size of a car, the 2,263-pound (1,026-kilogram) robotic geologist and astrobiologist will undergo several weeks of testing before it begins its two-year science investigation of Mars' Jezero Crater. While the rover will investigate the rock and sediment of Jezero's ancient lakebed and river delta to characterize the region's geology and past climate, a fundamental part of its mission is astrobiology, including the search for signs of ancient microbial life. To that end, the Mars Sample Return campaign, being planned by NASA and ESA (European Space Agency), will allow scientists on Earth to study samples collected by Perseverance to search for definitive signs of past life using instruments too large and complex to send to the Red Planet.\nBecause of today's exciting events, the first pristine samples from carefully documented locations on another planet are another step closer to being returned to Earth, said Thomas Zurbuchen, associate administrator for science at NASA. Perseverance is the first step in bringing back rock and regolith from Mars. We don't know what these pristine samples from Mars will tell us. But what they could tell us is monumental -- including that life might have once existed beyond Earth.\nSome 28 miles (45 kilometers) wide, Jezero Crater sits on the western edge of Isidis Planitia, a giant impact basin just north of the Martian equator. Scientists have determined that 3.5 billion years ago the crater had its own river delta and was filled with water. The power system that provides electricity and heat for Perseverance through its exploration of Jezero Crater is a Multi-Mission Radioisotope Thermoelectric Generator, or MMRTG. The U.S. Department of Energy (DOE) provided it to NASA through an ongoing partnership to develop power systems for civil space applications.\nEquipped with seven primary science instruments, the most cameras ever sent to Mars, and its exquisitely complex sample caching system -- the first of its kind sent into space -- Perseverance will scour the Jezero region for fossilized remains of ancient microscopic Martian life, taking samples along the way.\nPerseverance is the most sophisticated robotic geologist ever made, but verifying that microscopic life once existed carries an enormous burden of proof, said Lori Glaze, director of NASA's Planetary Science Division.\nWhile we'll learn a lot with the great instruments we have aboard the rover, it may very well require the far more capable laboratories and instruments back here on Earth to tell us whether our samples carry evidence that Mars once harbored life.\n1.NASA. Touchdown! NASA's Mars Perseverance rover safely lands on Red Planet. ScienceDaily. ScienceDaily, 18 February 2021. <www.sciencedaily.com/releases/2021/02/210218162028.htm>.", icone: "doc.plaintext.fill"),
    
    Article(photo: "marscore", titre: "Journey to the center of Mars", source: "Tohoku University", date: "February 20, 2020", contenu: "While InSight's seismometer has been patiently waiting for the next big marsquake to illuminate its interior and define its crust-mantle-core structure, two scientists, Takashi Yoshizaki (Tohoku University) and Bill McDonough (Tohoku University and University of Maryland, College Park) have built a new compositional model for Mars. They used rocks from Mars and measurements from orbiting satellites to predict the depth to its core-mantle boundary, some 1,800 km beneath the surface and have been able to suggest that its core contains moderate amounts of sulfur, oxygen and hydrogen as light elements.\nYoshizaki explains, Knowing the composition and interior structure of rocky planets tells us about formation conditions, how and when the core separated from the mantle, and the timing and amount of crust extracted from the mantle. Early astronomers used the separation distances and orbital periods of planets and their moons to determine the size, mass and density of these bodies. Today's orbiting spacecrafts provide greater details about a planet's shape and density, but the distribution of density in its interior has remained unknown. The seismic profile of a planet supplies this critical insight. When a quake rocks a planet, sound waves travel through its interior at speeds controlled by its internal composition and temperature. Strong contrasts in density, for example, rock versus steel, cause sound waves to respond differently, revealing the core-mantle boundary depth and details of the likely composition of these different layers.\nBy the end of the 19th century, scientists hypothesized a metallic core inside the Earth, but it was not until 1914 that seismologists demonstrated its existence at a depth of 2,900 km. Seismologists revealed the structure of the planet's interior, which helps us to locate sources and understand the nature of earthquakes. The 4 lunar seismometers brought by Apollo astronauts, defined the Moon's core-mantle-crust structure. Mars, the second-best explored planet, received in mid-2018 its first seismometer from the InSight mission. Compositional models for a planet are developed by bringing together data from surface rocks, physical observations, and chondritic meteorites, the primitive building blocks of the planets. These meteorites are mixtures of rock and metal, like the planets, that are composed of solids accreted from the early solar nebula. Different proportions of oxides of magnesium, silicon and iron and alloys of iron and nickel make up these solids.\nYoshizaki adds that  we found that Mar's core is only about one-sixth of its mass, whereas for the Earth it is one-third of its mass. These findings are consistent with Mars having more oxygen atoms than Earth, a smaller core and a rusty red surface. They also found higher volatile element abundances, for example sulfur and potassium, in Mars than the Earth, but less of these elements than in the chondritic meteorites.\nThe seismometer on NASA's InSight mission will directly test this new model of Mars when it defines the depth to the Martian core-mantle boundary. Such compositional models for Mars and Earth provide clues to the origin and nature of planets and conditions for their habitability.\n1.Takashi Yoshizaki, William F. McDonough. The composition of Mars. Geochimica et Cosmochimica Acta, 2020; 273: 137 DOI: 10.1016/j.gca.2020.01.011\n2.Tohoku University. Journey to the center of Mars. ScienceDaily. ScienceDaily, 20 February 2020. <www.sciencedaily.com/releases/2020/02/200220104055.htm>", icone: "doc.plaintext.fill"),
    
    Article(photo: "oppylastmessage", titre: "NASA's Opportunity rover mission on Mars comes to end", source: "NASA/Jet Propulsion Laboratory", date: "February 13, 2019", contenu: "‘my battery is low and it’s getting dark’\nWhat's True\nThe Opportunity Rover's final transmission to NASA from Mars was a bare-bones data dump indicating it was low on power as a storm approached.\nWhat's False\nThe Opportunity Rover didn't actually send the words: My battery is low and it's getting dark; this was a poetic translation of the rover's more technical transmission.\nOne of the most successful and enduring feats of interplanetary exploration, NASA's Opportunity rover mission is at an end after almost 15 years exploring the surface of Mars and helping lay the groundwork for NASA's return to the Red Planet.\nThe Opportunity rover stopped communicating with Earth when a severe Mars-wide dust storm blanketed its location in June 2018. After more than a thousand commands to restore contact, engineers in the Space Flight Operations Facility at NASA's Jet Propulsion Laboratory (JPL) made their last attempt to revive Opportunity Tuesday, to no avail. The solar-powered rover's final communication was received June 10.\nIt is because of trailblazing missions such as Opportunity that there will come a day when our brave astronauts walk on the surface of Mars, said NASA Administrator Jim Bridenstine. And when that day arrives, some portion of that first footprint will be owned by the men and women of Opportunity, and a little rover that defied the odds and did so much in the name of exploration.\nDesigned to last just 90 Martian days and travel 1,100 yards (1,000 meters), Opportunity vastly surpassed all expectations in its endurance, scientific value and longevity. In addition to exceeding its life expectancy by 60 times, the rover traveled more than 28 miles (45 kilometers) by the time it reached its most appropriate final resting spot on Mars -- Perseverance Valley.\nFor more than a decade, Opportunity has been an icon in the field of planetary exploration, teaching us about Mars' ancient past as a wet, potentially habitable planet, and revealing uncharted Martian landscapes, said Thomas Zurbuchen, associate administrator for NASA's Science Mission Directorate. Whatever loss we feel now must be tempered with the knowledge that the legacy of Opportunity continues -- both on the surface of Mars with the Curiosity rover and InSight lander -- and in the clean rooms of JPL, where the upcoming Mars 2020 rover is taking shape.\nThe final transmission, sent via the 70-meter Mars Station antenna at NASA's Goldstone Deep Space Complex in California, ended a multifaceted, eight-month recovery strategy in an attempt to compel the rover to communicate.\nWe have made every reasonable engineering effort to try to recover Opportunity and have determined that the likelihood of receiving a signal is far too low to continue recovery efforts, said John Callas, manager of the Mars Exploration Rover (MER) project at JPL.\nOpportunity landed in the Meridiani Planum region of Mars on Jan. 24, 2004, seven months after its launch from Cape Canaveral Air Force Station in Florida. Its twin rover, Spirit, landed 20 days earlier in the 103-mile-wide (166-kilometer-wide) Gusev Crater on the other side of Mars. Spirit logged almost 5 miles (8 kilometers) before its mission wrapped up in May 2011.\nFrom the day Opportunity landed, a team of mission engineers, rover drivers and scientists on Earth collaborated to overcome challenges and get the rover from one geologic site on Mars to the next. They plotted workable avenues over rugged terrain so that the 384-pound (174-kilogram) Martian explorer could maneuver around and, at times, over rocks and boulders, climb gravel-strewn slopes as steep as 32-degrees (an off-Earth record), probe crater floors, summit hills and traverse possible dry riverbeds. Its final venture brought it to the western limb of Perseverance Valley.\nI cannot think of a more appropriate place for Opportunity to endure on the surface of Mars than one called Perseverance Valley, said Michael Watkins, director of JPL. The records, discoveries and sheer tenacity of this intrepid little rover is testament to the ingenuity, dedication, and perseverance of the people who built and guided her.\n1.https://www.snopes.com/fact-check/opportunity-rovers-final-words/\n2.NASA/Jet Propulsion Laboratory. NASA's Opportunity rover mission on Mars comes to end. ScienceDaily. ScienceDaily, 13 February 2019. <www.sciencedaily.com/releases/2019/02/190213150035.htm>", icone: "doc.plaintext.fill"),
    
    Article(photo: "Olympus", titre: "Simulating the evolution of Mars volcano Olympus Mons", source: "Freie Universitaet Berlin", date: "May 9, 2016", contenu: "Scientists from the Division of Planetary Sciences and Remote Sensing in the Institute of Geological Sciences at Freie Universität Berlin have succeeded in creating a model simulating the formation of mysterious structures on the surface of the Mars volcano, Olympus Mons. The study was conducted in collaboration with the German Research Centre for Geosciences in Potsdam and Arizona State University. The findings were published in the latest issue of the international scientific journal, Journal of Geophysical Research -- Planets. The research project is based on image data of the High Resolution Stereo Camera (HRSC) that is installed on the European Mars Express spacecraft, which has been orbiting the red planet since December 2003. Using the camera images, the scientists in the Planetary Sciences and Remote Sensing group generated a mosaic and a terrain model of the Olympus Mons volcano. The image data show that the volcano shield is shaped in the form of arched terraces and the foot of the otherwise very flat volcano drops steeply. The origin of the terraces and the steep slope of Olympus Mons were discussed heatedly in previous publications. This study indicates that the observed deformations of the volcano are due to gravity, which on Mars is about 40 percent of the Earth's gravity, and to low frictional resistance in the volcano subsurface.\nThe new investigations of the interactions between the Martian volcano and the ground underneath it were done in cooperation with the planetary scientists at Freie Universität Berlin, the Research Centre for Geosciences in Potsdam ( Physics of Earthquakes and Volcanoes section), and Arizona State University (School of Earth and Space Exploration) in Tempe, Arizona, USA. The computer simulation prepared by the Planetary Sciences and Remote Sensing team demonstrates for the first time the formation of terraces during the volcanic growth phase.\nThe Olympus Mons volcano on Mars with a height of 22 km is nearly two and a half times as high as Mount Everest. Its diameter is 600 km, which is about the distance between Berlin and Munich. Olympus Mons is thus the largest volcano in our solar system. The latest findings about this supervolcano will also help to give scientists a better understanding of volcanoes on Earth.\n1.S. Musiol, E. P. Holohan, B. Cailleau, T. Platz, A. Dumke, T. R. Walter, D. A. Williams, S. van Gasselt. Lithospheric flexure and gravity spreading of Olympus Mons volcano, Mars. Journal of Geophysical Research: Planets, 2016; 121 (3): 255 DOI: 10.1002/2015JE004896 Freie Universitaet Berlin. Simulating the evolution of Mars volcano Olympus Mons. ScienceDaily. ScienceDaily, 9 May 2016. <www.sciencedaily.com/releases/2016/05/160509085751.htm>.", icone: "doc.plaintext.fill")
]
