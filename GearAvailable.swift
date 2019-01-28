//
//  GearAvailable.swift
//  Gear Calculator
//
//  Created by J.D. Shaeffer on 11/14/18.
//  Copyright © 2018 Shaeffer Enterprises LLC. All rights reserved.
//

//this class will hold a lot of gear from my fav brands for now - we'll fix it in the future so we don't need to always be updating this...

import Foundation

class PackGear
{
    var packGear:[gear] = []
    var sortedPacks:[gear] = []
    init()
    {
        let pack1 = gear(gn: "ULA CDT", gw: 24.0, gd: "The CDT is ULA's lightest, most basic backpack. With just over 50 liters of available space, it is suitable for thru-hikes, day hikes, and any distance back-country forays. 50 L.", gu: URL(string: "https://www.ula-equipment.com/product/cdt/")!)
        let pack2 = gear(gn: "ULA Circuit", gw: 41.0, gd: "Lets face it, every mother has a favorite child – ULA's is the Circuit. ULA doesn't think there’s a pack out there that can compare to the load carrying capabilities, comfort, and durability of the Circuit. 68 L.", gu: URL(string: "https://www.ula-equipment.com/product/circuit/")!)
        let pack3 = gear(gn: "ULA Catalyst", gw: 48.0, gd: "A full featured, full suspension internal framed pack, the Catalyst remains the tried and true workhorse of the ULA pack line. 75 L.", gu: URL(string: "https://www.ula-equipment.com/product/catalyst/")!)
        let pack4 = gear(gn: "ULA OHM 2.0", gw: 34.5, gd: "The Ohm 2.0 is the pack for the fast folks, the ones who travel light, but still take a prudent amount of gear to be safe and comfortable. 63 L.", gu: URL(string: "https://www.ula-equipment.com/product/ohm-2-0/")!)
        let pack5 = gear(gn: "ULA Photon", gw: 28.0, gd: "The Photon is the little brother of the CDT, our most basic backpack. With nearly 35 liters of available space, 10 liters smaller than the CDT, it is suitable for dayhikes and any distance backcountry forays. 35 L.", gu: URL(string: "https://www.ula-equipment.com/product/photon/")!)
        let pack6 = gear(gn: "ULA Kid's Spark", gw: 37.5, gd: "The Circuit and the Photon had a child, and its name is Spark! The NEW! ULA Kid’s Spark isn’t one of those “faux kids backpacks” that looks great on the shelf but doesn’t cut it in the forest — this is a real pack, built tough for serious young adventurers. 41 L.", gu: URL(string: "https://www.ula-equipment.com/product/kids-spark/")!)
        let pack7 = gear(gn: "ULA Fastpack", gw: 26.0, gd: "Need a pack for a quick overnighter, peak bagging or a leisurely day hike? The Fastpack, is a vest style pack with no hipbelt, that was built for comfort and speed. 45 L.", gu: URL(string: "https://www.ula-equipment.com/product/fastpack/")!)
        let pack8 = gear(gn: "ULA Camino 2", gw: 52.0, gd: "Meet the Camino 2, the most versatile panel loader on the market today. Designed to meet most airline carry-on specs, the Camino 2 measures 22 x 14 x 9 with the extension collar rolled down. It may be compact, but it's still large enough to easily fit all your gear for an extended hike. 75 L.", gu: URL(string: "https://www.ula-equipment.com/product/camino-2/")!)
        let pack9 = gear(gn: "ULA Epic", gw: 32.5, gd: "The award-winning Epic is our most versatile backpack. The Epic is designed for pack-rafting expeditions in the harshest of climates, but it also has been known to carry chainsaws, beer kegs, and elk quarters. It has gained a following among distance hikers as it offers a versatile and waterproof way to carry your gear. 38 to 82 L.", gu: URL(string: "https://www.ula-equipment.com/product/camino-2/")!)
        let pack10 = gear(gn: "Pa'lante Packs V2", gw: 16.8, gd: "The V2 maintains the signature features that made the Simple Pack optimized for hiking long days on long trails, such as the integrated shoulder strap pockets and stretchy bottom pocket, but with every aspect re-examined to improve usability, durability, and comfort. The V2 is low volume and has no frame, but has the option of a stashable webbing hipbelt to assist with those occasional longer carries. Ranges from 14.0 oz to 16.8 oz. 35 to 40 L.", gu: URL(string: "https://palantepacks.com/product/v2/")!)
        let pack11 = gear(gn: "Pa'lante Packs Joey", gw: 0.0, gd: "TA lightweight running vest pack with the capacity for multi-day ventures, based on the packs used by Joe McConaughy and Joey Camps in 2017 on their self-supported fastpacking trips on the Appalachian Trail. Weight and volume tbd.", gu: URL(string: "https://palantepacks.com/product/joey/")!)
        let pack12 = gear(gn: "Mountain Laurel Designs Core", gw: 8.0, gd: "Sometimes even bigger trips are all about the simplicity. The Core 28L | 1700 CI Pack was designed for those trips! The Core 28L | 1700 CI is perfect for overnights, SUL weekends, climbing, running, skiing, hiking, or cycling, summits, alpine attacks, or as a travel carry-on pack. 28 L.", gu: URL(string: "https://mountainlaureldesigns.com/product/core-28l/")!)
        let pack13 = gear(gn: "Mountain Laurel Designs Burn", gw: 16.0, gd: "The iconic Burn 38L | 2300 CI, is our Original UL Backpack, and although it is often copied, it has never been surpassed. 38 L.", gu: URL(string: "https://mountainlaureldesigns.com/product/burn-38l/")!)
        
        packGear.append(pack1)
        packGear.append(pack2)
        packGear.append(pack3)
        packGear.append(pack4)
        packGear.append(pack5)
        packGear.append(pack6)
        packGear.append(pack7)
        packGear.append(pack8)
        packGear.append(pack9)
        packGear.append(pack10)
        packGear.append(pack11)
        packGear.append(pack12)
        packGear.append(pack13)
        
        sortedPacks = packGear.sorted(by: { (item1, item2) -> Bool in
            return item1.gearName!.compare(item2.gearName!) == ComparisonResult.orderedAscending
        })
    }
}
class ShelterGear
{
    var shelterGear:[gear] = []
    var sortedShelters:[gear] = []
    init()
    {
        let shelter1 = gear(gn: "Six Moons Designs Lunar Solo", gw: 26.0, gd: "The Lunar Solo for 2018 is newly constructed with 100% Silicone coated Polyester material.  The Canopy is 20D material and the floor has been constructed with 40D material for additional strength.  The canopy stretch has been decreased along with the packed volume. We have also made the main guy line a reflective cord and guy outs for the corners are also now reflective.", gu: URL(string: "https://www.sixmoondesigns.com/collections/tents/products/lunar-solo")!)
        let shelter2 = gear(gn: "Six Moons Designs Lunar Duo - Outfitter", gw: 57.0, gd: "The Lunar Duo - Outfitter provides the backcountry traveler an unsurpassed amount of space, comfort, durability and low cost. Constructed from durable 190T Polyester, the Outfitter eliminates many of the annoying complaints associated with silicone nylon. At three and a half pounds, it still packs both smaller and lighter than any tent of similar size.", gu: URL(string: "https://www.sixmoondesigns.com/collections/tents/products/lunar-duo-outfitter")!)
        let shelter3 = gear(gn: "Gossamer Gear The One", gw: 21.6, gd: "A sleek, simple ultralight solo shelter to keep you snug as a bug in a weatherproof ripstop rug. The One is back, and even more determined to keep you dry without weighing you down. Features include factory-taped seams, reflective pull-outs, robust zippers, and fully-rigged lines. Easy to set up, rugged, spacious and less than two pounds, The One is the shelter of your minimalist dreams.", gu: URL(string: "https://www.gossamergear.com/collections/shelters/products/the-one")!)
        let shelter4 = gear(gn: "Zpacks Plexamid", gw: 14.8, gd: "The Plexamid is a spacious tent for one person plus gear. A uniquely designed squared off peak gives this tent extra headroom while pitching with just a single 48 (122 cm) pole. It has enough floor space to fit your backpack and gear beside you, or to squeeze in a small partner in a pinch.", gu: URL(string: "http://www.zpacks.com/shelter/plexamid.shtml")!)
        
        
        
        shelterGear.append(shelter1)
        shelterGear.append(shelter2)
        shelterGear.append(shelter3)
        shelterGear.append(shelter4)
        
        sortedShelters = shelterGear.sorted(by: { (item1, item2) -> Bool in
            return item1.gearName!.compare(item2.gearName!) == ComparisonResult.orderedAscending
        })
    }
}
class SleepingGear
{
    var sleepingGear:[gear] = []
    var sortedSleeps:[gear] = []
    init()
    {
        let sleep1 = gear(gn: "Teton Sports Trailhead 20", gw: 46.4, gd: "The TrailHead +20°F has a breathable, soft, double-brushed liner. Innovative PolarLite™ insulation keeps you warm even though entire bag is thin and light. Foot box design lets you lie with toes up and still be comfortable. Zipper pullers inside and outside of bag for easy closure. Mummy-style hood with shoulder draft tube and drawstring. Taped, anti-snag zippers and full-length zipper draft tube that keeps the warm air in. Zippered inner pocket for valuables. Regular size is 87\" x 32\" (at widest point) to provide more shoulder and leg room.", gu: URL(string: "https://www.tetonsports.com/Sleeping-Bags/Ultralight/TrailHead-20.htm")!)
        let sleep2 = gear(gn: "Katabatic Gear Palisade 30", gw: 18.4, gd: "The award winning Palisade is extremely lightweight, yet is warm to just below freezing. This down quilt is a great choice for spring in the desert, a thru-hike of the JMT, or a blitz around Mt. Rainier’s Wonderland Trail.", gu: URL(string: "https://katabaticgear.com/shop/palisade-sleeping-bag/")!)
        let sleep3 = gear(gn: "Mountain Laurel Designs Spirit Quilt 28", gw: 26, gd: "MLD has been building ClimaShield Apex synthetic backcountry style quilts longer than any other company. This is where it all started, the original. Our design goal with the Spirit Quilt was to build the warmest for the weight, fully feature enhanced, multi-purpose synthetic quilt possible. And, by the Spirit Quilt's wild success, we're happy to say we succeeded in that goal.", gu: URL(string: "https://mountainlaureldesigns.com/product/spirit-quilt-28-degree/")!)
        let sleep4 = gear(gn: "Enlightened Equipment Revelation", gw: 19.44, gd: "With an amazing balance of low weight and high functionality, the Revelation is the choice when you need one piece of gear that will go anywhere you do. When it’s cold simply cinch down the sides with our pad attachment system. When it’s warm, open the zippered footbox completely and use this quilt like a blanket. Choose this Revelation to meet your performance needs, without carrying any unnecessary weight. The Revelation is the most versatile quilt available and is perfect for hikers, canoeists, kayakers, climbers, and cyclists who need minimal weight while being able to adapt to any situation.", gu: URL(string: "https://enlightenedequipment.com/revelation/")!)
        
        
        sleepingGear.append(sleep1)
        sleepingGear.append(sleep2)
        sleepingGear.append(sleep3)
        sleepingGear.append(sleep4)
        
        sortedSleeps = sleepingGear.sorted(by: { (item1, item2) -> Bool in
            return item1.gearName!.compare(item2.gearName!) == ComparisonResult.orderedAscending
        })
    }
}
class PadGear
{
    var padGear:[gear] = []
    var sortedPads:[gear] = []
    init()
    {
        let pad1 = gear(gn: "Thermarest Z Lite", gw: 14.0, gd: "Still a favorite of the ultralight elite, the Z Lite mattresses are our lightest, most compact closed-cell mattresses. Both the Z Lite SOL and the original Z Lite feature a compact accordion-style shape and heat-trapping dimples. The Z Lite SOL adds our reflective ThermaCapture™ coating that helps capture radiant heat, increasing overall warmth by nearly 20%. The proprietary foams are softer on top for extra comfort and denser on the bottom for extra durability. Wherever you're headed, a Z Lite mattress is the right choice for ultralight warmth, durability and comfort.", gu: URL(string: "https://www.thermarest.com/mattresses/fast-light/z-lite")!)
        let pad2 = gear(gn: "Thermarest NeoAir XLite", gw: 8.0, gd: "The NeoAir XLite mattress delivers more warmth and comfort per ounce than any other three-season air mattress available. Our patent-pending technologies deliver that performance with minimal weight and less bulk than a one-liter water bottle. Softer fabrics bring better next-to-skin comfort and a boost in durability, all with no added weight. For the discerning alpinist, thru-hiker or backcountry minimalist who's counting every ounce, there is simply no better choice to assure the kind of rest you need to enjoy tomorrow. Stuff sack and repair kit included. Regular - 12 oz.", gu: URL(string: "https://www.thermarest.com/mattresses/fast-light/z-lite")!)
        padGear.append(pad1)
        padGear.append(pad2)
        
        sortedPads = padGear.sorted(by: { (item1, item2) -> Bool in
            return item1.gearName!.compare(item2.gearName!) == ComparisonResult.orderedAscending
        })
    }
}
class FoodGear
{
    var foodGear:[gear] = []
    var sortedFoods:[gear] = []
    init()
    {
        let food1 = gear(gn: "ZPacks Food Bag", gw: 1.5, gd: "The included food bag has waterproof taped seams, and a roll top to keep out the rain. It is made from heavy duty 1.43 oz/sqyd Dyneema Composite Fabric. It can easily stand up to the abuse of bear bagging heavy loads or pointy food items. The material is even rodent resistant-\"On several occasions I've seen mice check out my DCF food bag and eventually give up. I let one persistent mouse chew on it for the entire night- by morning he had done some minor damage but did not get into my food.\"", gu: URL(string: "http://www.zpacks.com/accessories/bear_bag.shtml")!)
        foodGear.append(food1)
        sortedFoods = foodGear.sorted(by: { (item1, item2) -> Bool in
            return item1.gearName!.compare(item2.gearName!) == ComparisonResult.orderedAscending
        })
    }
}
class WaterGear
{
    var waterGear:[gear] = []
    var sortedWaters:[gear] = []
    init()
    {
        let water1 = gear(gn: "Katadyn BeFree", gw: 2.0, gd: "The lightweight and compact Katadyn BeFree water bottle and filter gives you the freedom to drink anytime, anywhere. With the BeFree™ Filter, you no longer have to worry about where your next drink will come from. Just fill up the flask and let the EZ-Clean Membrane™ do the work. Gently squeeze the flask for instant refreshment. Maintain the EZ-Clean Membrane™ quickly and easily for longer life and more enjoyment. Simply fill the flask with water, attach the cover and shake free the debris. Or, remove the filter from the flask and swish in any lake, river or stream. And when you’re ready to \"hit the road,\" the collapsible flask packs small to fit into tight spaces.", gu: URL(string: "https://www.katadyn.com/us/us/14946-8019639-katadyn-beefree-water-filtration-system_usa")!)
        waterGear.append(water1)
        
        sortedWaters = waterGear.sorted(by: { (item1, item2) -> Bool in
            return item1.gearName!.compare(item2.gearName!) == ComparisonResult.orderedAscending
        })
    }
}
class ElectronicsGear
{
    var electronicsGear:[gear] = []
    var sortedElectronics:[gear] = []
    init()
    {
        let electronic1 = gear(gn: "Anker PowerCore 10000", gw: 6.3, gd: "Up to 3.5 Phone Charges, High-Speed Charging with PowerIQ, MultiProtect Safety System", gu: URL(string: "https://www.anker.com/products/variant/powercore-10000/A1263011")!)
        electronicsGear.append(electronic1)
        sortedElectronics = electronicsGear.sorted(by: { (item1, item2) -> Bool in
            return item1.gearName!.compare(item2.gearName!) == ComparisonResult.orderedAscending
        })
    }
}
class FirstAidGear
{
    var firstAidGear:[gear] = []
    var sortedFirstAids:[gear] = []
    init()
    {
        let firstAid1 = gear(gn: "Hand Sanitizer", gw: 1.0, gd: "Normal cleaning stuff.", gu: URL(string: "https://www.google.com/search?q=hand+sanitizer&oq=hand+sani&aqs=chrome.0.0j69i57j0l4.1392j0j4&sourceid=chrome&ie=UTF-8")!)
        firstAidGear.append(firstAid1)
        sortedFirstAids = firstAidGear.sorted(by: { (item1, item2) -> Bool in
            return item1.gearName!.compare(item2.gearName!) == ComparisonResult.orderedAscending
        })
    }
}
class ToiletriesGear
{
    var toiletriesGear:[gear] = []
    var sortedToiletries:[gear] = []
    init()
    {
        let toiletry1 = gear(gn: "Toothbrush", gw: 3.0, gd: "Just ya standard guy.", gu: URL(string: "https://www.google.com/search?q=toothbrush&oq=toothbrush&aqs=chrome..69i57j0l5.2557j0j9&sourceid=chrome&ie=UTF-8")!)
        toiletriesGear.append(toiletry1)
        sortedToiletries = toiletriesGear.sorted(by: { (item1, item2) -> Bool in
            return item1.gearName!.compare(item2.gearName!) == ComparisonResult.orderedAscending
        })
    }
}
class ClothesGear
{
    var clothesGear:[gear] = []
    var sortedClothes:[gear] = []
    init()
    {
        let clothe1 = gear(gn: "REI Polyester Leggings", gw: 0.0, gd: "Good base layer for night.", gu: URL(string: "https://www.rei.com/")!)
        clothesGear.append(clothe1)
        sortedClothes = clothesGear.sorted(by: { (item1, item2) -> Bool in
            return item1.gearName!.compare(item2.gearName!) == ComparisonResult.orderedAscending
        })
    }
}
class OtherGear
{
    var otherGear:[gear] = []
    var sortedOthers:[gear] = []
    init()
    {
        let other1 = gear(gn: "happiness", gw: 0.0, gd: "Gotta have it.", gu: URL(string: "https://lds.org/")!)
        otherGear.append(other1)
        sortedOthers = otherGear.sorted(by: { (item1, item2) -> Bool in
            return item1.gearName!.compare(item2.gearName!) == ComparisonResult.orderedAscending
        })
    }
}

class gear
{
    var gearName:String?;
    var gearWeight:Float?;
    var gearDescription:String?;
    var gearURL:URL?
    
    init(gn:String,gw:Float,gd:String,gu:URL)
    {
        gearName = gn
        gearWeight = gw
        gearDescription = gd
        gearURL = gu
    }
}
