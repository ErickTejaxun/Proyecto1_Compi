SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_31\bin" 
SET PATH=%JAVA_HOME%;%PATH% 
SET CLASSPATH=%JAVA_HOME%; 
SET JFLEX_HOME= C:\Fuentes\jflex-1.6.0
cd C:\Users\Erick\Documents\NetBeansProjects\Compiladores_practica1\src\FlexCup
java -jar %JFLEX_HOME%\lib\jflex-1.6.0.jar Scanner.jflex 
pause 
