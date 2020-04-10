# Talle 8 - Mutation Testing

Presentado por: 
* Ingrid Dayana Melgarejo Romero
* Deisy Tatiana Macias Cardenas

1. [Reportes Pitest](https://htmlpreview.github.io/?https://github.com/dtmaciasca/taller8_mutation/blob/master/Reporte_Pitest/reports/pitest/202004061836/index.html)

2. **Reporte MDroid**

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

Nota: Debido al dispositivo usado (Nexus 5 API 26) había un test que siempre fallaba. [Ejecución Test original](https://github.com/dtmaciasca/taller8_mutation/blob/master/Punto%202/Test%20Results%20%E2%80%94%20Tests%20in%20'org.gnucash.android.test.ui'.pdf). La aplicación tenia dos paquetes de test (androidTest y test), el androidTest eran pruebas sobre la UI y los otros eran unitarios. Con el mutante 78 nos fallo un test unitario y no de la UI.

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

Se probo la aplicación de Wikipedia para Android, generando 50 mutantes usando MutAPK con el siguiente comando:

~~~
java -jar target\\MutAPK-0.0.1.jar .\\app-alpha-debug.apk org.wikipedia mutants\\ extra\\ . true 50
~~~

Ejecución de los mutantes
![]()

Resultados

