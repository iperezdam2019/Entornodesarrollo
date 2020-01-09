## Memòria  

### En aquesta unitat 4 vorem com compilar con MakeFile una calculadora.

Abans de tot:

•         Creeu-vos una carpeta, si encara no ho heu fet, al vostre repositori de Github per a la unitat 4.  

**Resposta**  
En el repositori de GitHub/Entornodesarrollo fem:  
$ mkdir Unitat4

•         Dins d'aquesta carpeta, creeu una nova per a l'apartat del Make, on guardareu el següent:  

**Resposta**  
$ cd Unitat4  
$ mkdir Make

•        Un fitxer Readme.md a mode de memòria, explicant el contingut de la carpeta en què esteu,  

**Resposta**   
dins de Make fem:  
$ touch Readme.md

•        Els fitxers corresponents als fonts, capçaleres i Makefiles generats durant la pràctica.  

**Resposta** 
Està al GitHub i ho puje a moodle. Ho cree tot mitjançant _touch calc.c, touch calc.h_  etc... ho agregue tot a .git amb git add nom_arxiu.

•       Un fitxer .gitignore per a que no es sincronitzen amb github els fitxers .o que se generen.  

**Resposta**   
cree l´arxiu .gitignore  
_$ touch .gitignore_ 
afegeix l´extensió .o  
_$ echo "*.o">> .gitignore_

•      Tots el arxius estan en el Staging Index i preparats per a pujar a GitHub.  

**Resposta**  
_$ git status_
i mostra tot el staging index pendent 

_Exemple de compilació del fitxer hola.c, caldrà que estiga aquest fitxer al repositori i que mostreu i expliqueu la seua compilació i funcionament al fitxer README.md._

**Resposta**  
_gcc -Wal -g hola.c -o hola_  
Amb el codi anterior genere arxiu executable hola. gcc cride al compilador de C -Wall per si hi han errors -g hola.c cride l’arxiu font i amb -o hola cree el executable amb eixe nom.

•         Exemple de la calculadora (fitxers calc.c, calcula.c i calc.h), amb la funcionalitat dels exemples **més la funció major(), que haureu d'implementar, i que mostrava quin dels dos números proporcionats com a arguments era major.**

**Resposta**  
Els arxius originals i complets ho puje a GitHub i a moodle.

Arxiu calculca.c afegeix el següent codi:  
_printf("El major entre %d i %d es %d\n",a, b, major(a,b));_  

Arxiu calc.h afegeix el següent codi:  
_int  major (int op1, int op2);_

Arxiu calc.c afegeix la segúent funció:  
_int major (int op1, int op2){_
   _if (op1>op2)_  
    _return (op1);_  
   _else_  
    _return (op2);_  
_}_   

•         Fitxer Makefile amb els targets: calcula, calc.o, clean, dist, targz i install: Makefile per a generar executable de calcula i calc. o 

**Resposta**  
En el document original es respeta la tabulació ja que important pel correcte funcionament.

_calcula: calcula.c calc.o_  
    _gcc -Wall -g calcula.c calc.c -o calcula_  

_calc.o: calc.c calc.h_  
     _gcc -g -Wall -c calc.c -o calc.o_  

**Netejar amb clean:**  

_.PHONY: clean_  
_clean:_  
    _rm -rf *.o_    
    _rm calcula_  

**dist:**  

_.PHONY:dist
_dist: clean calcula_  
    _rm -rf ../dist;_  
    _mkdir -p ../Desktop/GitHub/_   __Entornodesarrollo/Unitat4_  
    _cp calcula ../Desktop/GitHub/    __Entornodesarrollo/Unitat4_  

**targz**  
_.PHONY:targz_  
_targz: clean_  
    _mkdir -p source_  
    _cp *.c *.h Makefile source_  
    _tar -cvf calcula.tar source_  
    _qzip calcula.tar_  
    _rm -rf calcula.tar_  
    _rm -rf source_  

**install**
_install: dist_  
    _cp -r ../dist/*/_  

Enllaç GitHub $ git remote -v origin https://github.com/iperezdam2019/Entornodesarrollo.git (fetch) origin https://github.com/iperezdam2019/Entornodesarrollo.git (push)
