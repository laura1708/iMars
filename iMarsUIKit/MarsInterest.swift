//
//  MarsInterest.swift
//  iMarsUIKit
//
//  Created by Kevin MASLOWSKI on 24/03/2021.
//

import Foundation
import SwiftUI

struct MarsInterest: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let category: Category
    let description: String
    var latitude: Double
    var longitude: Double
    var imageName: String { return title }
}

enum Category: String, Codable, CaseIterable, Identifiable {
    case tout
    case topography = "Topography"
    case lansdscape = "Landscape"
    case landing = "Landing Site"
    
    var id: String { self.rawValue }
}

extension MarsInterest {
    static var pointsOfInterest: [MarsInterest] {
        [
            MarsInterest(title: "Planum Boreum",
                         subtitle: "Ice and dust make intricate layers at the edge of the polar cap. This view looks to the northeast of the North Polar Cap Edge",
                         category: .topography,
                         description: """
            For Latin "Northern Plain", the Planum Boreum is the north polar area of Mars. The north polar cap, with a diameter of 1.100km,  is composed of water and carbon dioxide ices, with many layers visible in satellite images. The lauers may have been deposited in successive clilmate cycles, as is the case withh Earth's polar ice caps.
            The polar cap's edge exposes layers of ice alternating with sheets of dust and sand. As the icecap erodes in the present climate, the edge retreats northward. But due to variations in the dusty and sandy layers, the retreat doesn't go smoothly. These accumulate like pages in a climate history book as the Martian years roll past. The larger particles can't move as far or as fast - most will end up in the giant sand sea that surrounds the northern icecap.
            """,
                         latitude: 81.4,
                         longitude: 15),
            MarsInterest(title: "Planum Australe",
                         subtitle: "This VIS image shows part of the south polar cap.",
                         category: .topography,
                         description: """
The south polar cap of Mars is called Australe Planum (Latin: "Southern Plain"), with a diameter of 1540km. This image was taken during the summer season at the south pole.
The cap was created over millions of years with deposition of water ice, with a thin covering of carbon dioxide ice and dust during different seasons, creating the layering seen in the image. Carbon dioxide freezes at a lower temperature than water, so at both poles, carbon dioxide sublimes (disappears) into the air in the summer season, and freezes out of the air winter.
Because of its higher elevation and more extreme seasons, the south pole is on average colder than the north pole, so it retains a surface layer of carbon dioxide ice year-round. Strange patterns in the soil appear in the high southern latitudes as the season changes from winter to summer; these are speculated to be caused by jets of carbon dioxide as it is released into the air.

""",
                         latitude: -84.2566,
                         longitude: 154.375),
            MarsInterest(title: "Perseverance Landing Jezero Crater",
                         subtitle: "The targeted landing site ellipse, Jezero Crater.",
                         category: .landing,
                         description: """
                    Perseverance has launched on July 30, 2020 and landed on Mars on February 18, 2021. The targeted landing site is Jezero Crater, which was a large crater lake in Mars’ distant past (roughly 49 km in diameter), takes the form of an ellipse rather than a precise point because of a number of uncertainties that arise in the entry, descent, and landing phase of Perseverance's journey. These variables include slight uncertainties in the angle, location, timings, and velocity of the spacecraft as it enters Mars' atmosphere and variability in Mars' atmospheric density and wind sas the spacecraft makes its descent.
                    Perseverance will explore the floor of Jezero, studying sedimentary deposits that accumulated on the crater floor when water once flowed across the surface of Mars. It will look for clues about Mars’ ancient environment, its possible past habitability, potential biomarkers preserved in sedimentary deposits, and changing geological processes over time. It will collect and cache sample materials for retrieval by a future sample return mission. As Perseverance explores the ground, it will deploy robotic, flying drone named Ingenuity to scout for interesting research targets and help plan safe traverse paths for Perseverance.
                    """,
                         latitude: 18.44187,
                         longitude: 77.46867),
            MarsInterest(title: "Tharsis Montes",
                         subtitle: "On the southwest edge of the immense volcanic region of Tharsis, lava from its giant volcanoes flowed down to meet the old cratered landscape of Terra Sirenum. This false-color mosaic image combines separate frames taken by the Thermal Emission Imaging System (THEMIS), a special camera on NASA's Mars Odyssey.",
                         category: .topography,
                         description: "Tharsis Montes is the largest volcanic region on Mars. It is approximately 4,000 km across,10 km high, and contains 12 large volcanoes. The largest volcanoes in the Tharsis region are 4 shield volcanoes named Ascraeus Mons, Pavonis Mons, Arsia Mons, and Olympus Mons. The Tharsis Montes (Ascraeus, Pavonis, and Arsia) are located on the crest of the crustal bulge and their summits are about the same elevation as the summit of Olympus Mons, the largest of the Tharsis volcanoes. While not the largest of the Tharsis volcanoes, Arsia Mons has the largest caldera on Mars, having a diameter of120 km (75 mi)! The main difference between the volcanoes on Mars and Earth is their size; volcanoes in the Tharsis region are up to 100 times larger than those anywhere on Earth.",
                         latitude: 2.2,
                         longitude: 247.5),
            MarsInterest(title: "Curiosity Bradbury Landing",
                         subtitle: "Goulburn rock outcrop: conglomerated fluvial sediment at Bradbury Landing.",
                         category: .landing,
                         description: "Bradbury Landing is the landing site for the Curiosity rover within Gale Crater (2012-08-06). With a diameter of 154km and a central peak 5.5 km tall, Gale Crater is named after writer Ray Bradbury and is located in Aeolis Palus, a flat plain between Gale Craters's northern rim and central peak. Aeolis Palus lies in what appears to be the wash debris of Peace Vallis, an outflow channel flowing down the slope of Gale Craters's rim. Shortly after landing, Curiosity found evidence supporting this view in the form of rock outcrops in the immediate area composed of conglomerated fluvial sediments, the type of formation that would form in a vigourously flowing stream.",
                         latitude: -4.42999,
                         longitude: 137.32044),
            MarsInterest(title: "Spirit Columbia Memorial Landing",
                         subtitle: "On January 4, 2004, Spirit, landed in Gusev Crater.",
                         category: .landing,
                         description: "One of two robotic rovers in NASA's Mars Exploration Rover program, Spirit, also known as Mars Exploration Rover-A, look for evidence for the presence of liquid water on Mars' surface in the past, look for geological clues to the environmental conditions that existed when liquid water was present, and assess whether those environments were conducive to life. \n Spirit's + landing site was named Columbia Memorial Station in honor of the seven astronauts killed in the Space Shuttle Columbia disaster.",
                         latitude: -14.40349,
                         longitude: 175.35591),
            MarsInterest(title: "InSight Landing Elysium Planitia",
                         subtitle: "Looking eastward across the planned area",
                         category: .landing,
                         description: """
                    Elysium Planitia was chosen for InSight's landing site for its flat, smooth plain selected not for its surface features, but for safety considerations.
                    InsSight's purpose is to study the interior of Mars, not the surface. Thus, in the selection of a landing site, what's on the surface mattered less on this missions focused on the geology.
                    The landing site lies in the western portion of Elysium Planitia - mixed of the ancient Greek name for an afterlife paradise and "planitia" meaning flat surface in Latin. This is just 373 miles (600 kilometers) from Curiosity's landing site, Gale Crater.
                    """,
                         latitude: 4.46863,
                         longitude: 135.82942),
            MarsInterest(title: "Opportunity Landing Eagle Crater",
                         subtitle: "The martian landscape at Meridiani Planum from Eagle Crater.",
                         category: .landing,
                         description: """
                    On January 25, 2004, Opportunity, also known as Mars Exploration Rover-B, landed in Meridiani Planum. One of two robotic rovers in NASA's Mars Exploration Rover program, Opportunity was designed to explore the geology of Mars, look for evidence for the presence of liquid water on Mars' surface in the past, look for geological clues to the environmental conditions that existed when liquid water was present, and assess whether those environments were conducive to life.
                    Eagle crater, with a diameter of 22 meters and a depth of 3 meters, proved to be an excellent place for Opportunity to start its mission. The crater contains exposed rock outcrops which, upon close examination, revealed the source of the grey hematite readings seen from space.
                    In the crosk and ground around it are numerous small, hematite-rich spherules which the scientists referred to as "bluberries". The bluberries are actually concretions that formed in the presence of water.
                    """,
                         latitude: -1.948,
                         longitude: -5.52552),
            MarsInterest(title: "Phoenix Landing Vastitas Borealis",
                         subtitle: "Phoenix hanging from its parachute as it descended to the Martian surface, captured from orbit by the Mars Reconnaissance Orbiter.",
                         category: .landing,
                         description: """
                    On May 25, 2008, NASA's Phoenix probe touched down in Mars' northern plains known as Vastitas Borealis. The landing site, given the unofficial name of Green Valley, was chosen for its smooth, boulder-free terrain and suitability for fulfilling Pathfinder's objectives of (1) studying the history of water on Mars in all its phases, and (2) searching for evidence of a habitable zone and assessing the biological potential of the ice-soil boundary. The presence of the ice was confirmed when it was exposed in a trench dug by Phoenix's robotic arm.
                    Findings of soil analysis from the area revealed the presence of carbonates as well as perchlorate.
                    Designed to operate for three months, Phoenix lasted for five months before succumbing to the diminishing light of the approaching winter.
                    """,
                         latitude: 68.55163,
                         longitude: -125.9904),
            MarsInterest(title: "Sojourner Landing Ares Vallis",
                         subtitle: "View from lander after successful entry, descent and landing.",
                         category: .landing,
                         description: """
                    On July 4, 1997, NASA's Mars Pathfinder mission, carrying the Sojourner rover, touched down in Ares Vallis. The mission was an engineering demonstration of key technologies and concepts for use in future missions to Mars. During the mission, Pathfinder transmitted data that included images, chemical analyses of rocks and soil and data on winds and other weather factors.
                    The first robotic rover to drive on the surface of Mars, Sojourner measure compositino of Martian rocks and dust.
                    Designed for a mission lasting 7 sols (Martian days or 24 hours, 39 minutes, and 35.244 seconds), but conitnued operating for 83 sols, until a battery in the lander finally was exhausted. During tha time, it covered a distance of 100 meters around its landing site.
                    """,
                         latitude: 19.09561,
                         longitude: -33.38002),
            MarsInterest(title: "Viking 1",
                         subtitle: "The lander has been precisely located in this image from the High Resolution Imaging Science Experiment camera on NASA's Mars Reconnaissance Orbiter. Also, likely locations have been found for the heat shield, back shell, and parachute attached to the back shell. The lander location has been confirmed by overlaying the lander-derived topographic contours on the high-resolution camera's image, which provides an excellent match.",
                         category: .landing,
                         description: """
                    Viking Lander 1 touched down in western Chryse Planitia on July 20, 1976 (the 7th anniversary of the Apollo 11 landing on the Moon).  It was the first of two identical probes in the U.S. Viking program. It was launched on August 20, 1975 and entered into Mars orbit on June 19, 1976.
                    The primary goals of Viking were to obtain high-resolution images of the Martian surface, characterize the structure and composition of the atmosphere and surface, and search for evidence of life on Mars. Together, the Viking 1 and 2 orbiters returned 50,500 images of Mars' surface, covering the entire surface with resolutions of 250 meters per pixel or better. Viking's global mapping of Mars revealed numerous features that indicated large amounts of water flowed across Mars' terrain long ago. The orbiters were also used to locate safe landing sites and acted as communication landing sites for the rovers.
                     The Viking 1 lander continued to operate until November 11, 1982, claiming a 2307 Earth-day record for the longest Mars surface mission, which endured until being broken by the Opportunity rover in 2010. In January, 1982, the Viking 1 Lander was named the Thomas Mutch Memorial Station in honor of the leader of the Viking imaging team.
                    """,
                         latitude: 22.26985,
                         longitude: -47.95401),
            MarsInterest(title: "Viking 2",
                         subtitle: "The boulder-strewn field of red rocks reaches to the horizon nearly two miles from Viking 2 on Mars' Utopian Plain. Scientists believe the colors of the Martian surface and sky in this photo represent their true colors. Fine particles of red dust have settled on spacecraft surfaces. The salmon color of the sky is caused by dust particles suspended in the atmosphere. The circular structure at top is the high-gain antenna, pointed toward Earth. ",
                         category: .landing,
                         description: """
                    Viking 2 was the second of two identical probes in the U.S. Viking program. The probe consisted of an orbiter and a lander. Together, the Viking 1 and 2 orbiters returned 50,500 images of Mars' surface, covering the entire surface with resolutions of 250 meters per pixel or better.
                    Though the seismometer on the Viking 1 lander failed to deploy, the Viking 2 lander's seismometer operated successfully, detecting a possible seismic event on sol 80 of its mission. Viking 2 was launched on September 9, 1975 and entered into Mars orbit on August 7, 1976. On September 3, 1976 the Viking 2 orbiter released the lander, which then made a safe landing on the surface. The Viking 2 lander continued to operate until April 11, 1980. Operating for 1280 sols (Martian days), the Viking 2 lander greatly exceeded its 120 sol designed lifetime. In 2001, the Viking 2 Lander was named the Gerald Soffen Memorial Station in honor of the Project Scientist for the NASA's Viking program of Mars landers and later Director of Life Sciences at NASA.
                    The lander's precise location was only able to be determined years later when the Mars Reconnaissance Orbiter's HIRISE camera was actually able to image the Viking 2 lander on the surface.
                    """,
                         latitude: 47.66697,
                         longitude: 134.27941),
            MarsInterest(title: "Mount Sharp",
                         subtitle: "This mosaic taken by NASA's Mars Curiosity rover looks uphill at Mount Sharp, which Curiosity has been climbing. Highlighted in white is an area with clay-bearing rocks that scientists are eager to explore; it could shed additional light on the role of water in creating Mount Sharp. The mosaic was assembled from dozens of images taken by Curiosity's Mast Camera (Mastcam). It was taken on Sol 1931 back in January 2014.",
                         category: .topography,
                         description: "Mount Sharp stands in the middle of Gale Crater, which is 96 miles (154 kilometers) in diameter. This mount, which Curiosity has been climbing since 2014, likely formed in the presence of water at various points of time in Mars ancient history. That makes it an ideal place to study how water influenced the habitability of Mars billions of years ago. \n The scene has been white-balanced so the colors of the rock materials resemble how they would appear under daytime lighting conditions on Earth.",
                         latitude: -4.72579,
                         longitude: 137.383173),
            MarsInterest(title: "Husband Hill",
                         subtitle: """
                    Mars Rover Spirit's View from the top of "Husband Hill" presents the view toward the south from that summit, in October 2005.
                    """,
                         category: .topography,
                         description: """
                    After climbing Husband Hill, Spirit spent more than 4 years exploring locations within this view, including the "Comanche" outcrop and the "Home Plate" area. At Comanche, the rover found carbonate minerals, evidence of an ancient wet environment that was not acidic, and also a clue that some of the carbon dioxide in Mars' original atmosphere may have been converted to carbonates. Near Home Plate, Spirit found a deposit of nearly pure silica, evidence of an ancient environment of hot springs or steam vents.
                    The summit of Husband Hill is a broad plateau of rock outcrops and windblown drifts about 100 meters (300 feet) higher than the surrounding plains of Gusev Crater, where Spirit landed in January 2004.
                    This approximately true-color scene combines images taken through three different Pancam color filters, centered on wavelengths of 750 nanometers, 530 nanometers and 430 nanometers.
                    """,
                         latitude: -1.63015,
                         longitude: -5.79477),
            MarsInterest(title: "Arabia Terra",
                         subtitle: "The orbiter's High Resolution Imaging Science Experiment (HiRISE) camera recorded this image on Jan. 29, 2010, showig dunes and inverted crater in the Arabia Terra region of Mars",
                         category: .topography,
                         description: """
                    The inverted crater seen here spans about 250 meters (about 800 feet) in diameter. Sand in the dark dunes around the crater was probably derived from basalt, a black volcanic rock that is common on Mars. Most craters are depressions, but this one sticks up above the surrounding plains. Such "inverted topography" is found on Mars and Earth where erosion has stripped away surrounding topography. In this case, the crater was filled with sediment, and then subsequent erosion stripped away the terrain around the filled crater.
                    This image covers a swath of ground about 600 meters (about 2,000 feet) wide at about 3 degrees north latitude, 5 degrees east longitude.
                    The sand is dark because it was probably derived from basalt, a black volcanic rock that is common on Mars. Unlike traditional craters that are depressions, those here stick up above the surrounding plains. Such “inverted topography” is found on Mars and Earth where erosion has stripped away surrounding topography.
                    In this case, the craters were filled with sediment. Subsequent erosion stripped away the terrain around the filled craters, leaving the inverted topography visible here.
                    """,
                         latitude: 3.120,
                         longitude: 4.553),
            MarsInterest(title: "Olympus Rupes",
                         subtitle: "This image is located along the southeastern margin of Olympus Mons, the largest Martian volcano.",
                         category: .topography,
                         description: "Olympus Rupes is the name of the large escarpment surrounding Olympus Mons. The escarpment is a cliff where there is a large elevation change over a short distance. The elevation change from the lower volcanic plains to the volcano flank is up to 5 miles (26,400 feet), almost the height of Mount Everest.",
                         latitude: 13.9993,
                         longitude: 228.976),
            MarsInterest(title: "Valles Marineris",
                         subtitle: """
                The mosaic is composed of 102 Viking Orbiter images of Mars. The center of the scene (lat -8, long 78) shows the entire Valles Marineris canyon system (3769km), the "Grand Canyon of Mars".
                """,
                         category: .topography,
                         description: """
                Valles Marineris, or Mariner Valley, is a vast canyon system that runs along the Martian equator just east of the Tharsis region. Valles Marineris is 4000 km (2500 mi) long and reaches depths of up to 7 km (4 mi)! For comparison, the Grand Canyon in Arizona is about 800 km (500 mi) long and 1.6 km (1 mi) deep. In fact, the extent of Valles Marineris is as long as the United States and it spans about 20 percent (1/5) of the entire distance around Mars, wide enough to reach from Los Angeles to nearly New York City !
                The canyon extends from the Noctis Labyrinthus region in the west to the chaotic terrain in the east. Most researchers agree that Valles Marineris is a large tectonic "crack" in the Martian crust, forming as the planet cooled, affected by the rising crust in the Tharsis region to the west, and subsequently widened by erosional forces. However, near the eastern flanks of the rift there appear to be some channels that may have been formed by water.
                Many huge ancient river channels begin from the chaotic terrain from north-central canyons and run north. The three Tharsis volcanoes (dark red spots), each about 25 kilometers high, are visible to the west. South of Valles Marineris is very ancient terrain covered by many impact craters.
                """,
                         latitude: 13.8,
                         longitude: 300.8),
            
        ]
    }
}


