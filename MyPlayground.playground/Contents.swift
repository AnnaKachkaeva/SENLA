import Foundation

func punkt_1(a: Double, b: Double, c: Double) -> [Double]? {//решение квадратного уравнения

    let dscr = b * b - 4 * a * c

    switch dscr{
    case 0:
        return [-b / 2 * a]
    case 0...:
        return [-b - sqrt(dscr) / 2 * a, -b + sqrt(dscr) / 2 * a]
    default:
        return nil
    }
}

//punkt_1(a: 1, b: -8, c: 12)//2
//punkt_1(a: 5, b: 3, c: 7)//0
//punkt_1(a: 1, b: -6, c: 9)//1

func punct_2(a: Double, b: Double, c: Double, d: Double) -> [Double]? {//решение кубического уравнения
    
    if b == 0, c == 0, d == 0 {
        return [pow(a, 1.0/3.0)]
    }else if a + b + c + d == 0 {
        return [1]
    }else if d == 0 || a == 0 {
        return punkt_1(a: a, b: b, c: c)
    }else if d + b == a + c {
        return [-1]
    } else {
        print("too much slozhno for this week")
        return nil
    }
   
}

func find_div(n: Int) -> [Int]{//поиск делителя, мог пригодится, для решения кубического уравнения
    
    switch n/2{
    case 0:
        var dividers = punct_4(n: n)
        dividers.remove(at: 1)
        return dividers
    default:
        let dividers = punct_4(n: n)
        return dividers
    }
   
}


func punct_3(n: Int) -> [Int]{
    var fib_arr = [1, 2]
    
    for _ in 0...n {
        fib_arr.append(fib_arr.last! + fib_arr[fib_arr.count - 2])
    }

    return fib_arr
}

func punct_4(n: Int) -> [Int]{//поиск простых чисел до указанного числа
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

//punct_4(n: 20)//1, 2, 3, 5, 7, 11, 13, 17, 19

//punct_2(a: 3, b: 4, c: 2, d: 0)//0

//punct_3(n: 5)//1, 2, 3, 5, 8, 13, 21, 34
