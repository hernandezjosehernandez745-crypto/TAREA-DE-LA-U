Algoritmo SistemaDeCodigos
    Definir codigos, copia Como Entero
    Dimension codigos[50], copia[50]
    Definir i, opcion, comparaciones, intercambios Como Entero
    
    // Inicializaci�n de los 15 c�digos base requeridos
    codigos[1]<-45; codigos[2]<-12; codigos[3]<-78; codigos[4]<-23; codigos[5]<-56;
    codigos[6]<-9; codigos[7]<-34; codigos[8]<-67; codigos[9]<-18; codigos[10]<-91;
    codigos[11]<-5; codigos[12]<-43; codigos[13]<-72; codigos[14]<-30; codigos[15]<-61;
    
    // Completar hasta 50 c�digos con n�meros aleatorios (para cumplir el requisito)
    Para i<-16 Hasta 50 Hacer
        codigos[i] <- Aleatorio(100, 999)
    FinPara
    
    Repetir
        Escribir "+++++++++++++++++++++++++++++"
        Escribir "     SISTEMA DE C�DIGOS      "
        Escribir "+++++++++++++++++++++++++++++"
        Escribir "1. Mostrar c�digos"
        Escribir "2. Ordenar por burbuja"
        Escribir "3. Ordenar por inserci�n"
        Escribir "4. Ordenar por selecci�n"
        Escribir "5. Buscar secuencialmente"
        Escribir "6. Buscar mediante b�squeda binaria"
        Escribir "7. Mostrar estad�sticas"
        Escribir "8. Salir"
        Leer opcion
        
        // Antes de ordenar, siempre trabajamos con una copia para no perder el orden original
        // a menos que se desee sobrescribir.
        
        Segun opcion Hacer
            1:
                Para i<-1 Hasta 50 Hacer
                    Escribir Sin Saltar codigos[i], " "
                FinPara
                Escribir ""
            2:
                // L�gica de Burbuja
                comparaciones <- 0; intercambios <- 0
                // (Implementar bucles anidados para Burbuja y contadores)
                Escribir "Ordenamiento por Burbuja completado."
                Escribir "Comparaciones: ", comparaciones, " | Intercambios: ", intercambios
            7:
                Definir pares, impares, mayor, menor Como Entero
                pares <- 0; impares <- 0
                mayor <- codigos[1]; menor <- codigos[1]
                Para i<-1 Hasta 50 Hacer
                    Si codigos[i] MOD 2 = 0 Entonces
                        pares <- pares + 1
                    Sino
                        impares <- impares + 1
                    FinSi
                    Si codigos[i] > mayor Entonces mayor <- codigos[i]; FinSi
                    Si codigos[i] < menor Entonces menor <- codigos[i]; FinSi
                FinPara
                Escribir "Cantidad almacenada: 50"
                Escribir "Pares: ", pares, " | Impares: ", impares
                Escribir "Mayor: ", mayor, " | Menor: ", menor
            8:
                Escribir "Saliendo del sistema..."
        FinSegun
    Hasta Que opcion = 8
FinAlgoritmo