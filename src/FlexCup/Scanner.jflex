package proyecto1_compiladores;
import java_cup.runtime.Symbol;
import java.util.ArrayList;
/*
Directivas:
public: clase publica
cup: compatibilidad con cup
full: extender el alfabeto con todos los valores de 8 bits
line: agrega la variable int yyline, para indicar la fila del lexema
char: agrega la variable int yychar, indica el indice del primer caracter del lexema
ignorecase: validar, indistitntamente si la letra es mayuscula o minuscula
eofval: especifica un valor de retorno al final del archivo
*/
%%
%{	public static ArrayList<Errores> listaLexico=new ArrayList();	
	public static String urlAuxliar="";
	public static Boolean fin=false;
%}
%cupsym simbolos
%class Scanner
%unicode
%public
%cup
%full
%line
%char
%ignorecase
%eofval{
	return new Symbol(simbolos.EOF,new String("Fin del archivo"));
%eofval}
espacio = \t|\f|" "|\r|\n
digito = [0-9][0-9]*
letra = [a-zA-Z]
linea = [^\r\n\"\\]
id = {letra}({letra}|{digito}|"_")*
direccionWindows= ({letra}":"("\\"({linea})+)+) 
direccionLinux=(("/"{linea}+))+
%%
[\n] { yychar=0;}

"<configuration>"	{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion("<configuration>");
			Menu.TablaSimbolos.add(errorLexico);	
			;return new Symbol(simbolos.AConfiguracion, yychar, yyline, yytext()); }
"</configuration>"	{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion("</configuration>");
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.CConfiguracion, yychar, yyline, yytext());}
"<background>"		{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);;return new Symbol(simbolos.AFondo, yychar, yyline, yytext());}
"</background>"		{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.CFondo, yychar, yyline, yytext());}
"<figure>"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.APersonaje, yychar, yyline, yytext());}
"</figure>"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.CPersonaje, yychar, yyline, yytext());}
"<design>"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.AElemento, yychar, yyline, yytext());}
"</design>"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.CElemento, yychar, yyline, yytext());}
"x-nombre"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Nombre, yychar, yyline, yytext());}
"x-imagen"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Imagen, yychar, yyline, yytext());}
"x-vida"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Vida, yychar, yyline, yytext());}
"x-tipo"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Tipo, yychar, yyline, yytext());}
"x-destruir"		{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Destruccion, yychar, yyline, yytext());}
"x-descripcion"		{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Descripcion, yychar, yyline, yytext());}
"x-meta"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Meta, yychar, yyline, yytext());}
"x-bloque"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Bloque, yychar, yyline, yytext());}
"x-bonus" 	  		{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Bonus, yychar, yyline, yytext());}
"x-bomba"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Bomba, yychar, yyline, new String(yytext()));}
"x-arma"      		{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Arma, yychar, yyline, yytext());}
"x-heroe"     		{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Heroe, yychar, yyline, yytext());}
"x-enemigo"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Enemigo, yychar, yyline, yytext());}
"x-creditos"		{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Credito, yychar, yyline, yytext());}
"escenarios"		{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.AEscenario, yychar, yyline, yytext());}
"background"		{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Background, yychar, yyline, yytext());}
"ancho"				{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Ancho, yychar, yyline, yytext());}
"alto"				{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Alto, yychar, yyline, yytext());}
"<Personajes>"		{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.APersonaje2, yychar, yyline, yytext());}
"</Personajes>"		{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.CPersonaje2, yychar, yyline, yytext());}
"<heroes>"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.AHeroe2, yychar, yyline, yytext());}
"</heroes>"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.CHeroe2, yychar, yyline, yytext());}
"<villanos>"		{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.AVillanos2, yychar, yyline, yytext());}
"</villanos>"		{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.CVillanos2, yychar, yyline, yytext());}
"<paredes>"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.AParedes2, yychar, yyline, yytext());}
"</paredes>"		{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.CParedes2, yychar, yyline, yytext());}
"<extras>"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.AExtras2, yychar, yyline, yytext());}
"</extras>"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.CExtras2, yychar, yyline, yytext());}
"<armas>"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.AArmas2, yychar, yyline, yytext());}
"</armas>"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.CArmas2, yychar, yyline, yytext());}
"<bonus>"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.ABonus2, yychar, yyline, yytext());}
"</bonus>"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.CBonus2, yychar, yyline, yytext());}
"<meta>"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.AMeta2, yychar, yyline, yytext());}
"</meta>"			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.CMeta2, yychar, yyline, yytext());}
"</escenario>"		{Errores errorLexico=new Errores();
			errorLexico.setTipo("Palabra Reservada");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.CEscenario, yychar, yyline, yytext());}
"("					{Errores errorLexico=new Errores();
			errorLexico.setTipo("Simbolo del sistema");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.AParentesis, yychar, yyline, yytext());}
")"					{Errores errorLexico=new Errores();
			errorLexico.setTipo("Simbolo del sistema");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.CParentesis, yychar, yyline, yytext());}
","					{Errores errorLexico=new Errores();
			errorLexico.setTipo("Simbolo del sistema");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Coma, yychar, yyline, yytext());}
";"					{Errores errorLexico=new Errores();
			errorLexico.setTipo("Simbolo del sistema");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.PuntoComa, yychar, yyline, yytext());}
"{"					{Errores errorLexico=new Errores();
			errorLexico.setTipo("Simbolo del sistema");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.ACorchete, yychar, yyline, yytext());}
"}"					{Errores errorLexico=new Errores();
			errorLexico.setTipo("Simbolo del sistema");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.CCorchete, yychar, yyline, yytext());}
"="					{Errores errorLexico=new Errores();
			errorLexico.setTipo("Asignacion");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Asignacion, yychar, yyline, yytext());}
"\""				{Errores errorLexico=new Errores();
			errorLexico.setTipo("Simbolo del sistema");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Comillas, yychar, yyline, yytext());}
"/"					{Errores errorLexico=new Errores();
			errorLexico.setTipo("Simbolo del sistema");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);urlAuxliar+=yytext();}
"."					{Errores errorLexico=new Errores();
			errorLexico.setTipo("Simbolo del sistema");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Punto, yychar, yyline, yytext());}
"<"					{Errores errorLexico=new Errores();
			errorLexico.setTipo("Simbolo del sistema");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Menor, yychar, yyline, yytext());}
">"					{Errores errorLexico=new Errores();
			errorLexico.setTipo("Simbolo del sistema");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.Mayor, yychar, yyline, yytext());}	
{id}     			{Errores errorLexico=new Errores();
			errorLexico.setTipo("ID");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.ID, yychar, yyline, yytext());}
{direccionWindows}  {Errores errorLexico=new Errores();
			errorLexico.setTipo("Path windos");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.URLW, yychar, yyline, yytext());}
{direccionLinux}    {Errores errorLexico=new Errores();
			errorLexico.setTipo("Path linux");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.URLL, yychar, yyline, yytext());}
{digito}			{Errores errorLexico=new Errores();
			errorLexico.setTipo("Numero");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion(yytext());
			Menu.TablaSimbolos.add(errorLexico);return new Symbol(simbolos.NUMERO, yychar, yyline, new Integer(yytext()).doubleValue());}
{espacio}			{System.out.println("Salto de linea");}				
.			{System.out.println("Caracter ilegal: " + yytext()+" Linea : "+yyline +" Columna: "+yychar); 
			Errores errorLexico=new Errores();
			errorLexico.setTipo("Lexico");
			errorLexico.setLinea(yyline);
			errorLexico.setColumna(yychar);
			errorLexico.setDescripcion("Caracter Ilegal: "+yytext());
			Menu.listaLexico.add(errorLexico);
			Proyecto1_Compiladores.listaLexico.add(errorLexico);
			Menu.listaLexico=Proyecto1_Compiladores.listaLexico;
			}

