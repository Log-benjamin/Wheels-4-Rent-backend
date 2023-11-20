if User.all.count == 0
    admin = User.create({ name: "admin", email: "admin@wheels4rent.com", password: "123456789", is_admin: true })
end
if Car.all.count == 0
    car1 = Car.create({ name: "PORSCHE", model: "911 GT3",description: "The 911's interior continues to look sophisticated
    rather than complicated, with a mix of buttons, knobs, touch-screen controls, and—for the first time ever—a large center
    cupholder. With EPA ratings of 18 mpg city and 25 highway, the Carrera S with the manual transmission is the most fuel-efficient 911. Some of the specs include ENGINE TYPE - twin-turbocharged and intercooled DOHC 24-valve flat-6 Petrol direct fuel injection, TRANSMISSION - 8-speed dual-clutch automatic, FUEL TANK CAPACITY (LITRES) - 64L",
    image: "https://media.istockphoto.com/id/508130398/photo/porsche-911-gt3-rs-sports-car.jpg?s=612x612&w=0&k=20&c=uKlWB7sQNPE-swOjfIVMjM19ECH1hvc7-Yao8JHwE18=",
    price_per_day: 695, seating_capacity: 2 })

    car2 = Car.create({ name: "BMW", model: "XM SPORT UTILITY", description: "The BMW XM SUV is on an ambitious mission
    to target the pinnacles of performance and luxury simultaneously. Some of the specs include
    ENGINE TYPE - A twin-turbocharged 4.4-liter V-8 electric motor - Petrol plug-in hybrid, TRANSMISSION - 8-speed ZF 8HP automatic, BATTERY - 29.5 kWh (gross), 25.7 kWh (net/usable) lithium-ion  (Electric range -
    82 to 88KM", image: "https://imgcdn.oto.com/large/gallery/exterior/3/2825/bmw-xm-tilted-front-view-354193.jpg",
    price_per_day: 475, seating_capacity: 5 })

    car3 = Car.create({ name: "BMW", model: "M850i - 8 SERIES CONVERTIBLE", description: "From the horsepower under the hood to the smooth ride and lightweight top operation, the BMW 8 Series Convertible is
    an amazing performance machine.The tailored soft top uses durable fabric panels to reduce vehicle weight and block unwanted exterior noise. Some of the specs include
    ENGINE TYPE - Cylinder/ Valves per cylinder 6 / 4 - 8 - Petrol- turbocharged, TRANSMISSION - 8-speed automatic, FUEL TANK CAPACITY (LITRES) - 68L", image: "https://wallpapercave.com/dwp2x/wp6722616.jpg",
    price_per_day: 430, seating_capacity: 2 })

    car4 = Car.create({ name: "TOYOTA", model: "LandCruiser-V8", description: "The Land Cruiser V8 has never wanted for much in terms of quality, performance, luxury and unmissable road presence.
    Now current model goes even further in terms of sharper design inside and out, more creature comforts and advanced handling technologies
    for exceptional off-road capabilities. Some of the specs include
    ENGINE TYPE - Petrol 2.5L 4.5-litre V8 turbodiesel engine, TRANSMISSION - 5 speed automatic upto top speed is 205 km/h, FUEL TANK CAPACITY (LITRES) - 93+45=138L", image: "https://www.crotonmotors.com/wp-content/uploads/2022/12/547003_F_Large.jpeg.webp",
    price_per_day: 500, seating_capacity: 8 })

    car5 = Car.create({ name: "TOYOTA", model: "Fortuner-GUN165", description: "The new Fortuner is more than a SUV. Its a force of nature. Be it the chrome embellished front grille. every bit is built to lead is crafted with finesse. So no matter how tough the path, you are always connected and cocooned
    in luxury and safety. keeps you safe no matter how rugged the road ahead looks. Embedded with safety technology like Active Traction Control and
    Antilock Braking System, it gives you the confidence to soar over any obstacle and dominate. Some of the specs include
    ENGINE TYPE - Petrol 2.5L  V6 turbodiesel engine, TRANSMISSION - (Intelligent Manual Transmission) 6AT [Sequential Shift + Paddle Shift + Shiftlock], FUEL TANK CAPACITY (LITRES) - 80L" ,image: "https://images.drive.com.au/driveau/image/upload/c_fill,f_auto,g_auto,h_1080,q_auto:eco,w_1920/v1/cms/uploads/91MiY1yLTK6lkUTce33i",
    price_per_day: 400, seating_capacity: 7 })

    car6 = Car.create({ name: "MERCEDES", model: "G-Class-550-SUV", description: "In the Mercedes-AMG G 63, all passengers can enjoy more space. Newly designed seats in the finest nappa leather with rhombus-shaped
    quilting and AMG badge don't just offer luxury, but also a certain sense of security. The interior of the G-Class offers extensive highlights
    as standard including Widescreen Cockpit ambient lighting and Panoramic sunroof. Some of the specs include
    ENGINE TYPE - Petrol 4.0L V8 biturbo, 2925 to 3982 cc, TRANSMISSION - nine-speed automatic transmission, FUEL TANK CAPACITY (LITRES) - 100L", image: "https://thumbs.dreamstime.com/b/dubai-police-show-casing-new-mercedes-benz-g-class-amg-car-145344994.jpg?w=768",
    price_per_day: 750, seating_capacity: 5 })

    car7 = Car.create({ name: "MERCEDES", model: "AMG GLC 43", description: "Sporty, sophisticated and seductive: The AMG engineers of Affalterbach know exactly how to captivate attention. From first glance,
    the new 2024 Mercedes-AMG GLC 43 and PERFORMANCE Coupes spark pure intrigue with their muscular stance.Taking exclusivity miles farther,
    these beasts were hand-built by an artisan engineer who combines meticulous craftsmanship with highly advanced methods of production. Some of the specs include
    ENGINE TYPE - Petrol 3.0-litre V6 with direct injection and biturbo charging, TRANSMISSION - AMG SPEEDSHIFT TCT 9G, FUEL TANK CAPACITY (LITRES) - 66L", image: "https://media.autoexpress.co.uk/image/private/s--10czj4IG--/f_auto,t_content-image-full-desktop@1/v1692865585/autoexpress/2023/08/Mercedes%20GLC%20300e%20013_eesbjd.jpg",
    price_per_day: 490, seating_capacity: 5 })

    car8 = Car.create({ name: "RANGE ROVER", model: "P525 - SUV3", description: "The Range Rover is a stunner and knows it — this latest version of the iconic SUV is built to impress. It has a strong engine and
    refined driving dynamics that eliminate unpleasantness for those in the cabin. There are also numerous splashy features and a spacious interior.
    The 2024 Land Rover Range Rover broadcasts style and luxury from every angle. Some of the specs include
    ENGINE TYPE - 3-phase AC induction motor 5.0L V8 engine, TRANSMISSION - AWD Automatic, 8-speed, FUEL TANK CAPACITY (LITRES) - 103L", image: "https://inchcape.co.ke/wp-content/uploads/RR-2.jpg",
    price_per_day: 670, seating_capacity: 5 })

    car9 = Car.create({ name: "TESLA", model: "Model S", description: " Model S Plaid has the quickest acceleration of any vehicle in production. Updated battery architecture for all Model S trims enables
    back-to-back track runs without performance degradation. Model S platforms unite powertrain and battery technologies for unrivaled performance,
    range and efficiency. New module and pack thermal architecture allows faster charging and gives you more power and endurance in all conditions. Some of the specs include
    ENGINE TYPE - 3-phase AC induction motor, TRANSMISSION - 1-speed fixed gear ratio (9.734:1 or 9.325:1), Battery 100 kWh lithium ion, Electric range (560 to 647 km)", image: "https://www.motortrend.com/uploads/2022/11/2023-Tesla-Model-S-Plaid-Offsite-48.jpg?fit=around%7C875:492",
    price_per_day: 350, seating_capacity: 5 })

    car10 = Car.create({ name: "CADILLAC", model: "Escalade -ESV", description: "Exciting, bold, iconic—move through the world in a vehicle befitting your status. In motion and at rest, the Escalade full-size SUV
    demands attention with exceptional presence and magnificent design. Witness as luxury transforms into legendary. The 2024 Cadillac Escalade's #2 ranking is based on its score within the Luxury Large SUVs category. Some of the specs include
    ENGINE TYPE - L87 V8 engine - Petrol Direct Injection, TRANSMISSION - MHS 10-speed Automatic, FUEL TANK CAPACITY (LITRES) - 106L, SEATING CAPACITY (PERSONS) - 7-8", image: "https://hips.hearstapps.com/hmg-prod/images/2024-cadillac-escalade-v-series-103-64f700d5f34cf.jpg?crop=0.660xw:0.557xh;0.293xw,0.357xh&resize=1200:*",
    price_per_day: 1000, seating_capacity: 8 })

    car11 = Car.create({ name: "FERRARI", model: "488 Pista", description: "The Ferrari 488 Pista is powered by the most powerful engine in the Maranello marques history and is the companys special series sports car with the highest level yet of technological transfer from racing. The Ferrari 488 Pista can punch out 720 cv at 8000 rpm, giving it the best
    speciﬁc power output in its class at 185 cv/l, while torque is higher at all engine speeds, peaking at 770 Nm. Some of the specs include ENGINE TYPE - V8 - 90 degree twin-turbo Dry sump - Petrol, TRANSMISSION - F1 7-SPEED DUAL-CLUTCH GEARBOX, FUEL TANK CAPACITY (LITRES) - 78L",
    image: "https://media.gettyimages.com/id/850568122/photo/view-of-la-ferrari-aperta-displayed-event-room-during-an-ferrari-70th-anniversary-event-in.jpg?s=612x612&w=0&k=20&c=ef0-wrdR7iBWHZKzY9sRWCfpsfdYQCrXQ8WCGQKJZvs=",
    price_per_day: 1800, seating_capacity: 2 })

    car12 = Car.create({ name: "LAMBORGINI", model: "veneno", description: "The most visionary models, these unique specimens are set to define the highest limits of technology and design. Unveiled at the most prestigious international Motor Shows, they offer an exclusive look at the most innovative solutions that Lamborghini may adopt in its future series-production models.It offers best-in-class driving dynamics, alongside its unmistakable elegance of design. Veneno embodies the characteristics of multiple souls: sporty, elegant and off-road, and has a suitability for everyday driving in a range of environments. With its surprisingly distinct engine sound, combined with high performance, Lamborghini Veneno is anything but typical.
    Some of the specs include ENGINE TYPE - V12 - 60 degree Multi Point Injection, TRANSMISSION - 7-speed ISR automated manual, FUEL TANK CAPACITY (LITRES) - 90L",
    image: "https://hips.hearstapps.com/hmg-prod/images/2021-lamborghini-sian-121-1614969494.jpg?crop=0.724xw:0.611xh;0.248xw,0.317xh&resize=700:*",
    price_per_day: 2200, seating_capacity: 2 })

    car13 = Car.create({ name: "Ford", model: "Mustang GT convertible old school", description: "The true muscle car of the range looks the part with 19inch multi-spoke black alloy wheels, 5.0 and GT badges, and a unique front grille. As well as all the standard equipment on the 2.3 Ecoboost, the GT is fitted with various performance upgrades including Launch Control (manual only), Brembo performance brakes, and Electronic Line Lock which enables safe and controlled burnouts.
        Some of the specs include ENGINE TYPE - V8 - 5 L Petrol 450 bhp, TRANSMISSION - 6-speed manual, FUEL TANK CAPACITY (LITRES) - 61L",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Ford_Mustang_convertible_5312550.jpg/1200px-Ford_Mustang_convertible_5312550.jpg",
        price_per_day: 600, seating_capacity: 5 })
        car14 = Car.create({ name: "McLaren", model: "750S Coupe", description: "With a line-up comprosed solely of supercars, McLaren distills its lessons learned in motorsport into each one of its production vehicles. From grand tourers to dedicated track cars, each McLaren embidies the brad's pursuit of technical excellence.
        The 750S takes the McLaren ethos to a new apex. True to its DNA, its the next-level supercar. Surpassing the benchmarks for performance, engagement and purity of response.
        Some of the specs include ENGINE TYPE - 4.0 L twin-turbo V8, TRANSMISSION - 7-Speed with Short Final Drive + Reverse Seamless Shift, FUEL TANK CAPACITY (LITRES) - 72L",
        image: "https://www.topgear.com/sites/default/files/news-listicle/image/13112019_mclaren_elva_image-02.jpg?w=1290&h=726",
        price_per_day: 2300, seating_capacity: 2 })
        car15 = Car.create({ name: "Rolls-Royce", model: "SPECTER", description: "PURE EXPRESSION - Spectre is the worlds first Ultra-Luxury Electric Super Coupé and it heralds the beginning of an all-electric era for Rolls-Royce. A landmark moment not just for the marque but also for electrification,
        it perfectly demonstrates the direction towards the future. Rolls-Royces commitment to the exceptional. Its unparalleled mastery and engineering ingenuity underscore every distinct feature and continue to command admiration and awe unlike any other. Designed with a vision that never fades even with the passage of time,
        each pre-owned Rolls-Royce comes with a unique story and infinite possibilities waiting to be unravelled. Where will yours take you?
        Some of the specs include ENGINE - liquid-cooled V-12 piston aero engine of 27-litres, TRANSMISSION - HydraMatic Automatic, CHARGE CAPACITY - 102.0-kWh battery - with Range betweeen 335-640 km",
        image: "https://hips.hearstapps.com/hmg-prod/images/2024-rolls-royce-spectre-134-649ee8828e3d7.jpg?crop=0.867xw:0.434xh;0.0612xw,0.313xh&resize=980:*",
        price_per_day: 3000, seating_capacity: 4 })
end
