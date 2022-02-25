import Foundation

func punkt_1(a: Double, b: Double, c: Double) -> [Double]? {//решение квадратного уравнения

    let dscr = b * b - 4 * a * c

    switch dscr{
    case 0:
        let x_1 = -b / 2 * a
        return [x_1]
    case 0...:
        let x_1 = -b - sqrt(dscr) / 2 * a
        let x_2 = -b + sqrt(dscr) / 2 * a
        return [x_1, x_2]
    default:
        return nil
    }
}

//при желании можно написать нормализующую функцию, но сначала решу остальные номера
//punkt_1(a: 1, b: -8, c: 12)//2
//punkt_1(a: 5, b: 3, c: 7)//0
//punkt_1(a: 1, b: -6, c: 9)//1

func punct_2(a: Double, b: Double, c: Double, d: Double) -> [Double]? {
    
    if b == 0, c == 0, d == 0 {
        return [pow(a, 1.0/3.0)]
    }else if a + b + c + d == 0 {
        return [1]
    }else if d == 0 || a == 0 {
        return punkt_1(a: a, b: b, c: c)
    }else if d + b == a + c {
        return [-1]
    } else {
        find_div(n: Int(d))
        print("div")
    }
    
    return [0]
}

func find_div(n: Int) -> [Int]{
    if n/2 == 0 {
        var dividers = punct_4(n: n)
        dividers.remove(at: 1)
        return dividers
    } else {
        let dividers = punct_4(n: n)
        return dividers
    }
}

func punct_4(n: Int) -> [Int]{
    var primes = [3]
    
    var i = 5
    while i < n {
        for j in primes{
            if i%j == 0 {
                break
            }
            if primes.last == j {
                primes.append(i)
            }
        }
        i += 2
    }
    
    return [1, 2] + primes
}

punct_4(n: 20)

punct_2(a: 3, b: 4, c: 2, d: 0)//0
