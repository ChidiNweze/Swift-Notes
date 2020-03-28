//
//  main.swift
//  Protocols and Delegates
//
//  Created by Chidinma Umenwofor-Nweze on 2020-03-27.
//  Copyright © 2020 Chidinma Umenwofor-Nweze. All rights reserved.
//



//The following code uses an analogy of a hospital paging system to explain protocols and delegates

protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    //whoever sets themselves as the delegate must have the advanced life support protocol adopted. They must know how to perform CPR. The Call handler doesn't care who as long as they can do CPR.
    
    func assessSituation() {
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
        //basically, when the emergency call handler invokes this method he's saying "Please! Whoever is on call (the delegate) please perform CPR!"
    }
}

//Now, let's define who the delegate may be.

struct Paramedic: AdvancedLifeSupport {
    //When the paramedic starts their shift, they pick up the pager from the EmergencyCallHandler. Thus, they become the delegate (holder of the pager).
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per minute.")
    }
}

class Doctor: AdvancedLifeSupport {
    //when the doctor starts their shift, they pick up to pager (become the delegate)
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The  doctor does chest compressions, 30 per minute.")
    }
    //The doctor can do other stuff too, that aren't a part of the over-arching protocol
    func useStethescope() {
        print("Listening for heart sounds. Boom boom <3")
    }

}

//In addition, there could be the surgeon class, a subset of doctors (inheritance).
class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR() //do whqt the doctor does. But in addition, they can:
        print("Sings staying alive by the BeeGees.") //cuz they're #cultured
    }
    //They are also, not to brag, pros with the electric drill
    func useElectricDrill() {
        print("Whirr...")
    }
}

/*********************************THE STORY************************************/

//today Emilio is the emergency call handler
let emilio = EmergencyCallHandler()
//when Pete shows up to work, he is told that today Emilio is the guy he will get notifications from
let pete = Paramedic(handler: emilio)

//At some point, Emilio gets a call, and the first thing he will do is assess the situation.
emilio.assessSituation()
//he then deems it an emergency
emilio.medicalEmergency()

//RUN THE CODE NOW. As you can see in the console, declaring a medical emergency, triggers the paramedic (delegate) to perform CPR as they see fit (as they implement the protocol).


/****************The next day****************/

//It's not Pete who's on shift, it's Angela
let angela = Surgeon(handler: emilio)
emilio.assessSituation()
emilio.medicalEmergency()
//Luckily, Angela is triggered to perform CPR, but also, thank God, she sings Staying Alive
