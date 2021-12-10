Der nachfolgende Use Case dient der Illustration der Prozesse im Zusammenhang mit der Krebsregistrierung. Im Use Case werden Situationen geschildert, mit welchen die verschiedenen, an der Behandlung eines Patienten beteiligten Gesundheitsfachpersonen im Alltag konfrontiert werden können. Der Use Case deckt die enorme Komplexität der Prozesse im Gesundheitswesen auf. Die übermittelten Informationen sollen einerseits in menschenlesbarer Form zur Verfügung stehen, andererseits sollte das IT-System der Krebsregister diese Informationen elektronisch verarbeiten können.

* Use Case 1a: Resultate werden als **PDF** übermittelt   
* Use Case 1b: Resultate werden als **strukturierte Daten** übermittelt

### Erstbesuch bei der Hausärztin 
*Arztbesuch vom 29. November 2018*  
[Robert Meier](Patient-RobertMeier.html), geboren am 27. Januar 1955, kommt mit Beschwerden zu seiner [Hausärztin Agnes Bauer](Practitioner-AgnesBauer.html). Sie diagnostiziert einen Verdacht auf Darmkrebs und überweist [Robert Meier](Patient-RobertMeier.html) an einen Spezialisten der [Abteilung Gastroenterologie](Organization-AbteilungGastro.html) im [Spital Seeblick](Organization-SpitalSeeblickDoktorGastro.html) für eine Koloskopie.

### Besuch beim Gastroenterologen
*Arztbesuch vom 1. Dezember 2018*  
[Robert Meier](Patient-RobertMeier.html) erhält einen Termin auf der [Abteilung Gastroenterologie](Organization-AbteilungGastro.html) im [Spital Seeblick](Organization-SpitalSeeblickDoktorGastro.html). Der Gastroenterologe führt die Koloskopie durch und entnimmt eine Biopsie vom vermuteten Tumor. Der Gastroenterologe **informiert das Krebsregister über die Koloskopie.**
* Bericht Koloskopie: 
    [Use Case 1a (PDF)](Bundle-BundleUC1aGastro20181201.html), 
    [Use Case 1b (strukturiert)](Bundle-BundleUC1bGastro20181201.html)

### Pathologische Untersuchung
*Diagnostik vom 2. Dezember 2018*  
Das Biopsiematerial wird im [pathologischen Institut](Organization-AbteilungPatho.html) des [Spitals Seeblick](Organization-SpitalSeeblickDoktorPatho.html) untersucht. Dabei wird ein Karzinom festgestellt. **Das Institut übermittelt das Resultat** an die [Hausärztin](Practitioner-AgnesBauer.html), die [Gastroenterologie](Organization-AbteilungGastro.html) und **das Krebsregister**.
* Pathologischer Befund: 
    [Use Case 1a (PDF)](Bundle-BundleUC1aPatho20181202.html), 
    [Use Case 1b (strukturiert)](Bundle-BundleUC1bPatho20181202.html)

### Zweitbesuch bei der Hausärztin
*Arztbesuch vom 7. Dezember 2018*  
[Robert Meier](Patient-RobertMeier.html) wird von [Agnes Bauer](Practitioner-AgnesBauer.html) über die Diagnose informiert. Sie informiert ihn über das weitere Vorgehen und informiert ihn, dass seine Daten auch an das Krebsregister ([Information des Patienten](Communication-CommMeier.html)) gesendet werden. [Robert Meier](Patient-RobertMeier.html) entscheidet sich für eine sofortige Operation und seine [Hausärztin](Practitioner-AgnesBauer.html) vereinbart einen Operationstermin im [Spital Seeblick](Organization-SpitalSeeblickHansEgli.html). [Agnes Bauer](Practitioner-AgnesBauer.html) **informiert das Krebsregister über das Datum der Patienteninformation und die Diagnose**.
* Information über Diagnose und Patienteninformation: 
    [Use Case 1a (PDF)](Bundle-BundleUC1aInfo20181207.html), 
    [Use Case 1b (strukturiert)](Bundle-BundleUC1bInfo20181207.html)

### Operation
*Hospitalisierung vom 14. Dezember 2018*  
Bei [Robert Meier](Patient-RobertMeier.html) wird im [Spital Seeblick](Organization-SpitalSeeblickHansEgli.html) eine Hemikolektomie durchgeführt. Das Exzisat wird an das [pathologische Institut](Organization-AbteilungPatho.html) zur Untersuchung geschickt. Der Abteilungsarzt Hans Egli, als zuständig Ansprechperson des [Spitals](Organization-SpitalSeeblickHansEgli.html), **informiert das Krebsregister über die Operation.**
* Opertationsbericht: 
    [Use Case 1a (PDF)](Bundle-BundleUC1aOps20181214.html), 
    [Use Case 1b (strukturiert)](Bundle-BundleUC1bOps20181214.html)

### Pathologische Untersuchung
*Diagnostik vom 15. Dezember 2018*  
Das Exzisionsmaterial wird im [pathologischen Institut](Organization-AbteilungPatho.html) untersucht. Dabei kann das Karzinom genauer beschrieben werden. Das [Institut](Organization-AbteilungPatho.html) **übermittelt das Resultat** an die [Hausärztin](Practitioner-AgnesBauer.html), die [Gastroenterologie](Organization-AbteilungGastro.html) und **das Krebsregister**.
* Pathologischer Befund: 
    [Use Case 1a (PDF)](Bundle-BundleUC1aPatho20181215.html), 
    [Use Case 1b (strukturiert)](Bundle-BundleUC1bPatho20181215.html)

