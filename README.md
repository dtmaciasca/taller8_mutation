# Talle 8 - Mutation Testing

Presentado por: 
* Ingrid Dayana Romero Melgarejo 
* Deisy Tatiana Macias Cardenas

1. [Reportes Pitest](https://htmlpreview.github.io/?https://github.com/dtmaciasca/taller8_mutation/blob/master/Reporte_Pitest/reports/pitest/202004061836/index.html)

2. **Reporte MDroid**

**Comando de ejecución de los mutantes:**

~~~
java -jar target/MDroidPlus-1.0.0.jar ./libs4ast/ /Users/dayanaromero/gnucash-androidTaller org.gnucash.android ./tmp/mutants/ . false
~~~

| No. mutante | Matado | Sobrevivió | Test Ejecutados |
|--|:---:|:---:|:---:|
| 1 - InvalidDate | X | | [InvalidDate](https://htmlpreview.github.io/?https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/mutants/org.gnucash.android-mutant1/Test%20Results%20-%20Tests_in_%27org_gnucash_android_test_ui%27.html) |
| 31 - BuggyGUIListener | X | | [BuggyGUIListener](https://htmlpreview.github.io/?https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/mutants/org.gnucash.android-mutant31/Test%20Results%20-%20Tests_in_'org_gnucash_android_test_ui'.html)|
| 78 - InvalidFilePath | X | | [InvalidFilePath](https://htmlpreview.github.io/?https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/mutants/org.gnucash.android-mutant78/Test%20Results%20-%20All_in_app.html) |
| 127 - LengthyGUICreation | | X | [LengthyGUICreation](https://htmlpreview.github.io/?https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/mutants/org.gnucash.android-mutant127/Test%20Results%20-%20Tests_in_'org_gnucash_android_test_ui'.html) |
| 131 - NullValueIntentPutExtra| X | | [NullValueIntentPutExtra](https://htmlpreview.github.io/?https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/mutants/org.gnucash.android-mutant131/Test%20Results%20-%20Tests_in_'org_gnucash_android_test_ui'.html) |
| 205 - DifferentActivityIntentDefinition | X | | [DifferentActivityIntentDefinition](https://htmlpreview.github.io/?https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/mutants/org.gnucash.android-mutant205/Test%20Results%20-%20Tests_in_'org_gnucash_android_test_ui'.html) |
| 248 - ViewComponentNoteVisible |  | X | [ViewComponentNoteVisible](https://htmlpreview.github.io/?https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/mutants/org.gnucash.android-mutant248/Test%20Results%20-%20Tests_in_'org_gnucash_android_test_ui'.html) |
| 278 - ClosingNullCursor | X | | [ClosingNullCursor](https://htmlpreview.github.io/?https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/mutants/org.gnucash.android-mutant278/Test%20Results%20-%20Tests_in_'org_gnucash_android_test_ui'.html) |
| 355 - NullIntent | X | | [NullIntent](https://htmlpreview.github.io/?https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/mutants/org.gnucash.android-mutant355/Test%20Results%20-%20Tests_in_'org_gnucash_android_test_ui'.html)|
| 414 - InvalidIDFindView | X | | [InvalidIDFindView](https://htmlpreview.github.io/?https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/mutants/org.gnucash.android-mutant414/Test%20Results%20-%20Tests_in_'org_gnucash_android_test_ui'.html) |

Nota: Debido al dispositivo usado (Nexus 5 API 26) había un test que siempre fallaba debido al tamaño de la pantalla que no coincidia con la coordenada que estaba buscando. [Ejecución Test original](https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/Test%20Results%20%E2%80%94%20Tests%20in%20'org.gnucash.android.test.ui'.pdf). La aplicación tenia dos paquetes de test (androidTest y test), el androidTest eran pruebas sobre la UI y los otros eran unitarios. Con el mutante 78 nos fallo un test unitario y no de la UI.

## Monkey

**Semilla**: 1586652967664

| No. mutante | Matado | Sobrevivió |
|--|--|--|
| 1 | | ![1](https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/monkeys/1.png) |
| 31 | | ![31](https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/monkeys/31.png) |
| 78 | | ![78](https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/monkeys/78.png) |
| 127 | | ![127](https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/monkeys/127.png) |
| 131 | | ![131](https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/monkeys/131.png) |
| 205 | | ![205](https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/monkeys/205.png) |
| 248 | | ![248](https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/monkeys/248.png) |
| 278 | ![278](https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/monkeys/278.png) |  |
| 355 | ![355](https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/monkeys/355.png) | |
| 414 | | ![414](https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/monkeys/414.png) |

Nota: Se decidio correr con 10000 eventos los monkey, ya que con más de estos fallaban en la aplicación original.

3. [Reporte Stryker - RoboBar](https://htmlpreview.github.io/?https://github.com/dtmaciasca/taller8_mutation/blob/master/robobar-example/reports/mutation/html/index.html)
4. **Bitácora de uso MutAPK**

Se probo la aplicación de Wikipedia para Android, 

**Configuración del archivo de operadores, se seleccionaron 5:**

![](https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto4/config-operadores.png)

![](https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto4/operadores.png)

**Configuración de multithread**

Se generaron mutantes en paralelo para disminuir la latencia de este proceso.

**Comando de ejecución de los mutantes:**

~~~
java -jar target\\MutAPK-0.0.1.jar .\\app-alpha-debug.apk org.wikipedia mutants\\ extra\\ . true 50
~~~

**Ejecución:**<br/>
![](https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto4/ejecucion.png)

[Mutantes generados](https://github.com/dtmaciasca/taller8_mutation/tree/master/Punto4/mutants)

| Operador | Cantidad mutantes |
|:--:|:--:|
|ActivityNotDefined|33|
|DifferentActivityIntentDefinition|1|
|InvalidActivityName|1|
|InvalidKeyIntentPutExtra|0|
|InvalidLabel|15|

**Resultado:**<br/>
Todos los mutantes se pueden compilar, ya que para todos los mutantes se genero el apk firmado y sin firmar.

**Errores presentados en la generación de los mutantes**

Como se trabajo en Windows, los / tocaba cambiarlos por \\\\ porque o si no presentaba el siguiente error:
![](https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto4/error.png)
