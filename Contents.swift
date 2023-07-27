import UIKit


//task1 Uderstanding the point of Data types


enum Gender {
    case male
    case female
    case other
}

struct Car {
    var make : String
    var model : String
    var year : Int
    
    
    func printSelfStruct(){
      
       print("make:\(make)model:\( model) year:\(year)")
    }
}

class Person {
    var name:String
    var age: Int
    var gender: Gender
    var car : Car
    
    init(
        name:String,
        age: Int,
        gender: Gender,
        car:Car){
            self.name=name
            self.age=age
            self.gender = gender
            self.car = car
        }
    
    func printSelfClass(){
        print("name:\(name) age:\( age) gender:\(gender) car:\(car)")
    }
}






////

//task 2 Memory Management

class BankAccount{
    var balance:Double
    init(balance :Double){
        self.balance=balance
    }

    func  depositMoney (deposit:Double){
        balance +=deposit
        print("the balances after the deposit:\(balance)")
    }
    
    func withdrawMoney( withdraw :Double){
        if balance >= withdraw{
            balance -= withdraw
            print("the balances after the withdraw:\(balance)")
        }
        else{
            print("can not make the process")
        }
    }
    
}
