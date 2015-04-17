SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_31\bin"  
SET PATH=%JAVA_HOME%;%PATH%  
SET CLASSPATH=%JAVA_HOME%;  
cd C:\Users\Erick\Documents\NetBeansProjects\Compiladores_practica1\src\FlexCup  
 java -classpath C:\Fuentes\ java_cup.Main -parser sintactico -symbols simbolos Parser.cup
 pause 