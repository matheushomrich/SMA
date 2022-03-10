// Matheus Schreiner Homrich da Silva
// 2022/1
// Metodo Congruente Linear

import Foundation

func method() -> [Double] {
        
    let xo: Int = 5
    var xi: Int = 7
    var aux: Int = 0
    var auxResult: Double = 0
    let constant: Int = 99
    let module: Int = 99
    var result: [Double] = []
        
    for _ in 0...1000 {
            
        aux =  ((xo * xi) + constant) % module

        xi = aux

        auxResult = Double(aux)

        auxResult = auxResult/100
        
        result.append(auxResult)
            
    }
    
    let fileName = "output3"
    let documentDirectoryUrl = try! FileManager.default.url(
        for: .desktopDirectory, in: .userDomainMask, appropriateFor: nil, create: true
    )
    let fileUrl = documentDirectoryUrl.appendingPathComponent(fileName).appendingPathExtension("txt")
   

   print("File path \(fileUrl.path)")

   var stringData = ""

    for i in 0...1000 {
        stringData += "\n\(result[i])"
    }
    do {
        try stringData.write(to: fileUrl, atomically: true, encoding: String.Encoding.utf8)
    } catch let error as NSError {
        print (error)
    }
    

    return result
}

var esquece = method()
print(esquece)


