import Foundation

func mainMenu() {
    var shouldContinue = true

    while shouldContinue {
        print("""
        Selecciona una opción del menú:
        1. Calcular área del cuadrado
        2. Calcular área del rectángulo
        3. Calcular área del triángulo
        4. Calcular área del círculo
        5. Salir
        """)

        if let choice = readLine(), let option = Int(choice) {
            switch option {
            case 1:
                calculateSquareArea()
            case 2:
                calculateRectangleArea()
            case 3:
                calculateTriangleArea()
            case 4:
                calculateCircleArea()
            case 5:
                print("Saliendo del programa...")
                shouldContinue = false
            default:
                print("Opción no válida. Inténtalo de nuevo.")
            }
        } else {
            print("Entrada no válida. Por favor, ingresa un número.")
        }
    }
}

func calculateSquareArea() {
    print("Introduce la longitud del lado del cuadrado:")
    if let input = readLine(), let side = Double(input) {
        let area = side * side
        print("El área del cuadrado es: \(area)")
    } else {
        print("Entrada no válida.")
    }
}

func calculateRectangleArea() {
    print("Introduce la longitud del rectángulo:")
    if let lengthInput = readLine(), let length = Double(lengthInput) {
        print("Introduce la anchura del rectángulo:")
        if let widthInput = readLine(), let width = Double(widthInput) {
            let area = length * width
            print("El área del rectángulo es: \(area)")
        } else {
            print("Entrada no válida para la anchura.")
        }
    } else {
        print("Entrada no válida para la longitud.")
    }
}

func calculateTriangleArea() {
    print("Introduce la base del triángulo:")
    if let baseInput = readLine(), let base = Double(baseInput) {
        print("Introduce la altura del triángulo:")
        if let heightInput = readLine(), let height = Double(heightInput) {
            let area = (base * height) / 2
            print("El área del triángulo es: \(area)")
        } else {
            print("Entrada no válida para la altura.")
        }
    } else {
        print("Entrada no válida para la base.")
    }
}

func calculateCircleArea() {
    print("Introduce el radio del círculo:")
    if let input = readLine(), let radius = Double(input) {
        let area = Double.pi * pow(radius, 2)
        print("El área del círculo es: \(area)")
    } else {
        print("Entrada no válida.")
    }
}

// Ejecutar el menú principal
mainMenu()
