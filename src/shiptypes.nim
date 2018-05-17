type                                        
  FiringArc = enum                     #                   2233 
    faOne,    # 0-45 degrees           #                  222333      
    faTwo,    # 46-90 degrees          #                 11114444
    faThree,  # 91-135 degrees         #                1111144444
    faFour,   # 136-180 degrees        #                8888855555
    faFive,   # 181-225 degrees        #                 88885555
    faSix,    # 226-270 degrees        #                  777666
    faSeven,  # 271-315 degrees        #                   7766
    faEight   # 316-360(0) degrees

  Weapon = ref object
    weaponType: string
    directFire: bool
    homing: bool
    minRange: int
    maxRange: int
    damage: int
    damageFalloff: float # percentage of damage lost per percentage of range
    firingArcs: seq[FiringArc]

  BaseShipStats = ref object
    hull: int
    maxHull: int
    fuel: int
    maxFuel: int
    sublightSpeed: int
    lightSpeed: int
    manuevering: int
    weapons: seq[Weapon]
  
