Harbour Make \(hbmk2\) 3\.2\.0dev \(r2013\-03\-28 03:24\)  
Copyright \(c\) 1999\-2013, Viktor Szakáts  
<http://harbour\-project\.org/>  

Syntax:  
  
  hbmk2 \[options\] \[&lt;script\[s\]&gt;\] &lt;src\[s\]\[\.prg|\.c|\.obj|\.o|\.rc|\.res|\.def|\.po|\.pot|\.hbl|@\.clp|\.d|\.ch\]&gt;  
  
Περιγραφή:  


  Το hbmk2 είναι ένα ολοκληρωμένο και μεταφέρσιμο εργαλείο κατασκευής, που κάνει εφικτή τη δημιουργία διαφόρων τύπων δυαδικών εκτελέσιμων \(εκτελέσιμο, δυναμική βιβλιοθήκη, στατική βιβλιοθήκη, μεταφέρσιμο δυαδικό Harbour\) από πολλαπλούς τύπους πηγαίων αρχείων \(C, C\+\+, Objective\-C, Harbour, gettext translations, Windows resources\)\. 'Ολοκληρωμένο' σημαίνει ότι ένα μοναδικό hbmk2 αρχείο έργου μπορεί να διεκπεραιώσει όλες ή τις περισσότερες πτυχές της διαδικασίας κατασκευής\. 'Μεταφέρσιμο' σημαίνει ότι ένα μοναδικό hbmk2 αρχείο έργου ελέγχει την κατασκευή σε όλες τις  υποστηριζόμενες πλατφόρμες Λειτουργικών Συστημάτων και έναντι όλων των υποστηριζόμενων C μεταγλωττιστών\. Στοχεύει επίσης να καλυψει την πλειοψηφία των εργασιών κατασκευής μέσω σύντομων και απλών αρχείων έργου \(επιλογών\)\. Το hbmk2 υποστηρίζει ακόμα και αμιγή \-non\-Harbour\- C/C\+\+/Objective\-C έργα\. Προκειμένου να επιτύχει τους παραπάνω στόχους, το hbmk2 ανιχνεύει αυτόματα τον μεταγλωττιστή Harbour και C και άλλα εργαλεία που απαιτούνται, μετά τα διαμορφώνει και τα καλεί κατάλληλα\. Το hbmk2 επιτρέπει την επέκταση των τύπων των υποστηριζόμενων αρχείων μέσω επεκτάσεων \-plugins\-\.⏎ Πέρα από την δημιουργία εκτελέσιμων, το hbmk2 είναι σε θέση να τρέχει σενάρια Harbour \(αμφότερα, πηγαίου κώδικα και μεταγλωττισμένα\) κατευθείαν, και διαθέτει επίσης ένα διαδραστικό κέλυφος εντολών\.
  
Options:  


 - **\-o&lt;outname&gt;** όνομα αρχείου εξόδου
 - **\-l&lt;libname&gt;** διασύνδεση της &lt;libname&gt; βιβλιοθήκης\. Το &lt;libname&gt; πρέπει να είναι χωρίς μονοπάτι, κατάληξη και πρόθεμα 'lib' \(εκτός αν είναι μέρος του ονόματος\)\. Μη προσθέτετε τις βασικές βιβλιοθήκες Harbour, αυτές προστίθενται αυτόματα εφόσον χρειάζονται\. Αν το &lt;libname&gt; αρχίζει με ένα χαρακτήρα '\-' , η βιβλιοθήκη θα αφαιρεθεί από τη λίστα βιβλιοθηκών τη στιγμή της διασύνδεσης\.
 - **\-L&lt;libpath&gt;** πρόσθετο μονοπάτι για αναζήτηση βιβλιοθηκών
 - **\-i&lt;p&gt;|\-incpath=&lt;p&gt;** πρόσθετο μονοπάτι για αναζήτηση headers
 - **\-static|\-shared** link with static/shared libs
 - **\-gt&lt;name&gt;** διασύνδεση με τον GT&lt;name&gt; GT οδηγό, μπορεί να επαναληφθεί για να διασυνδεθούν περισσότεροι GTs οδηγοί\. Ο πρώτος από αυτούς θα είναι προεπιλεγμένος κατα τον χρόνο\-εκτέλεσης
 - **\-inc\[\-\]** enable/disable incremental build mode \(default: disabled\)
 - **\-hbexe** δημιουργία εκτελέσιμου \(προεπιλογή\)
 - **\-hblib** δημιουργία στατικής βιβλιοθήκης
 - **\-hbdyn** create dynamic library \(without linked Harbour VM\)
 - **\-hbdynvm** create dynamic library \(with linked Harbour VM\)


 - **\-mt|\-st** link with multi/single\-thread Harbour VM
 - **\-gui|\-std** create GUI/console executable
 - **\-main=&lt;mainfunc&gt;** override the name of starting function/procedure
 - **\-request=&lt;func&gt;** εξαναγκασμός συνάρτησης/λειτουργίας να διασυνδεθεί
 - **\-fullstatic** link with all static libs
 - **\-pic\[\-\]** δημιουργία position independent αντικειμενικού κώδικα \(πάντα ενεροπιημένο στα μοντέλα \-hbdyn/\-hbdynvm\)
 - **\-\[full|fix\]shared** δημιούργησε κοινόχρηστα Harbour binaries χωρίς/με απόλυτη αναφορά καταλόγου στη βιβλιοθήκη Harbour  \(προεπιλογή: ''fullshared'' οταν το Harbour είναι εγκατεστημένο σε περιοχή συστήματος, αλλοιώς 'fixshared'\) \(επιλογή fix/full  μόνο σε  \*nix \)
 - **\-nulrdd\[\-\]** link with nulrdd
 - **\-debug\[\-\]** add/exclude C compiler debug info\. For Harbour level debug, use Harbour option \-b as usual
 - **\-optim\[\-\]** toggle C compiler optimizations \(default: on\)
 - **\-cpp\[\-\]** εξαναγκασμός C\+\+/C μοντέλου
 - **\-cpp=&lt;value&gt;** επιλογή C\+\+ μοντέλου\. Επιτρεπτές τιμές είναι: def, yes, no
 - **\-map\[\-\]** create \(or not\) a map file
 - **\-implib\[\-\]** δημιουργία \(ή όχι\) βιβλιοθήκης εισαγωγής \(in \-hbdyn/\-hbexe mode\)\. Το όνομα θα περιέχει επίθεμα\.
 - **\-implib=&lt;output&gt;** δημιουργία ονόματος βιβλιοθήκης εισαγωγής \(in \-hbdyn/\-hbexe mode\)  στο &lt;output&gt; \(Προεπιλογή: ίδιο με το output\)
 - **\-ln=&lt;link&gt;** δημιουργία συμβολικού δεσμού να δείχνει στο &lt;output&gt; \(το &lt;link&gt; θεωρείται σχετικό με το &lt;output&gt;\)
 - **\-strip\[\-\]** strip \(no strip\) binaries
 - **\-trace\[\-\]** show commands executed
 - **\-beep\[\-\]** enable \(or disable\) single beep on successful exit, double beep on failure
 - **\-ignore\[\-\]** ignore errors when running compiler tools \(default: off\)
 - **\-hbcppmm\[\-\]** αντικαθιστά τις πρότυπες  C\+\+ συναρτήσεις διαχείρησης μνήμης με εκείνες του Harbour
 - **\-winuni\[\-\]** επιλογή μεταξύ UNICODE \(WIDE\) και ANSI μοντέλων μεταγλώττισης \(προεπιλογή: ANSI\) \(μόνο σε Windows\. Για WinCE είναι ορισμένο πάντα σε UNICODE\)
 - **\-nohblib\[\-\]** μη χρήση στατικών βιβλιοθηκών πυρήνα Harbour κατά τη διασύνδεση
 - **\-nodefgt\[\-\]** μη σύνδεση προεπιλεγμένων GTs \(ισχύει σε  \-static mode\)
 - **\-nolibgrouping\[\-\]** απενεργοποίηση ομαδοποίησης βιβλιοθηκών σε μεταγλωττιστές βασισμένους σε 
 - **\-nomiscsyslib\[\-\]** μη προσθέτετε επιπλέον λιστα βιβλιοθηκών συστήματος στην προκαθορισμένη λιστα βιβλιοθηκών
 - **\-traceonly** show commands to be executed, but do not execute them
 - **\-warn=&lt;level&gt;** set C compiler warning level  
&lt;level&gt; can be: max, yes, low, no, def \(default: yes\)
 - **\-safe\[\-\]** ενεργοποίηση επιλογών ασφαλείας του μεταγλωττιστή/συνδέτη C  \(προεπιλογή: ενεργοποιημένο σε Windows, απενεργοποιημένο σε άλλα συστήματα\)
 - **\-compr=&lt;level&gt;** compress executable/dynamic lib \(needs UPX tool\)  
&lt;level&gt; can be: yes, no, min, max
 - **\-run\[\-\]** run/do not run output executable
 - **\-vcshead=&lt;file&gt;** δημιουργία header αρχείων  \.ch με πληροφορίες της τοπικής αποθήκες \-local repository\-\. Προς το παρόν υποστηρίζονται τα Git, SVN, Mercurial, Bazaar, Fossil, CVS και Monotone\.  
Τα header που θα δημιουργηθούν θα ορίσουν τη σταθερά \_HBMK\_VCS\_TYPE\_ στο όνομα του VCS που ανιχνεύτηκε και τη \_HBMK\_VCS\_ID\_ στο μοναδικό ID της τοπικής αποθήκης\. Αν δεν ανιχνευτεί κάποιο  VCS , ένα διαδοχικός αριθμός θα ενημερώνεται αυτόματα με κάθε μεταγλώττιση\.
 - **\-tshead=&lt;file&gt;** generate \.ch header file with timestamp information\. Generated header will define preprocessor constants \_HBMK\_BUILD\_DATE\_, \_HBMK\_BUILD\_TIME\_, \_HBMK\_BUILD\_TIMESTAMP\_ with the date/time of build
 - **\-icon=&lt;file&gt;** ορίζει το &lt;file&gt; ως εικονίδιο της εφαρμογής\. Το &lt;file&gt; πρέπει να είναι σε μορφή υποστηριζόμενη από τη πλατφόρμα\-στόχο \(δεν υποστηρίζεται από μερικές πλατφόρμες/μεταγλωττιστές\)\. Σε Windows, υλοποιείται με τη δημιουργία και διασύνδεση ενός resource αρχείου\.
 - **\-manifest=&lt;file&gt;** ενσωμάτωση του μανιφέστου &lt;file&gt; στο εκτελέσιμο/δυναμική βιβλ\. \(μονο σε Windows\)
 - **\-sign=&lt;key&gt;** σήμανση εκτελέσιμου με το &lt;key&gt; \(μόνο σε Windows και Darwin \)\. Σε περιβάλλον Windows χρησιμοποιείται το signtool\.exe  \(περιέχεται στο MS Windows SDK\) ή  το posign\.exe \(περιέχεται στην Pelles C 7\), με αυτή τη σειρά, αμφότερα ανιχνεύονται αυτόματα\.
 - **\-signpw=&lt;pw&gt;** χρήση &lt;pw&gt; ως συνθηματικού κατά την σήμανση του εκτελέσιμου \(μόνο σε Windows και Darwin\)
 - **\-instfile=&lt;g:file&gt;** προσθήκη &lt;file&gt; iστη λίστα αρχείων προς αντιγραφή στο μονοπάτι που ορίστηκε από την επιλογή \-instpath\. &lt;g&gt; είναι μια προαιρετική ομάδα αντιγραφής \(πεζά/κεφαλαία ευαίσθητο\), πρέπει να έχει μήκος τουλάχιστον δύο χαρακτήρων\. Σε περίπτωση μη καθορισμού του  &lt;file&gt;, η λίστα αρχείων σε αυτή την ομάδα θα εκκενωθεί\.
 - **\-instpath=&lt;g:path&gt;** αντιγραφή στόχου στο &lt;path&gt;\. Αν το &lt;path&gt; είναι κατάλογος, πρέπει να τελειώνει με τον διαχωριστή μονοπατιού, σε αυτή την περίπτωσητα αρχεία που καθορίστηκαν με την επιλογή  \-instfile θα αντιγραφούν επίσης\. Μπορεί να οριστεί πολλαπλές φορές\. &lt;g&gt; είναι μια προαιρετική ομάδα αντιγραφής, πρέπει να έχει μήκος τουλάχιστον δύο χαρακτήρων\. Ο στόχος κατασκευής θα αντιγραφτεί αυτόματα σε προεπιλεγμένη \(άδεια\) ομάδα αντιγραφής\. Υπάρχουν οι ακόλουθες ενσωματωμένες &lt;g&gt; ομάδες αντιγραφής: 'depimplib' για τις βιβλιοθήκες εισαγωγής και 'depimplibsrc' για πηγαία \(\.dll\) αρχεία βιβλιοθηκών εισαγωγής, ανήκοντας αμφότερες σε εξαρτήσεις\.
 - **\-instforce\[\-\]** αντιγραφή στόχου στο κατάλογο εγκατάστασης έστω κια είναι ενημερωμένο
 - **\-depimplib\[\-\]** ενεργοποίηση \(ή απενεργοποίηση\) δημιουργίας βιβλιοθήκης εισαγωγής για πηγαίες βιβλιοθήκες εισαγωγής που ορίστηκαν με τις επιλογές \-depimplibs=  \(προεπιλογή: yes\)
 - **\-stop\[=&lt;text&gt;\]** stop without doing anything and display &lt;text&gt; if specified
 - **\-echo=&lt;text&gt;** αντήχηση \-echo\- κειμένου στην οθόνη
 - **\-pause** force waiting for a key on exit in case of failure \(with alternate GTs only\)
 - **\-exitstr** εμφάνιση λαθών σε ανθρώπινη μορφή ανάγνωσης
 - **\-info** turn on informational messages
 - **\-quiet\[\-\]** suppress all screen messages


 - **\-bldf\[\-\]** inherit all/no \(default\) flags from Harbour build
 - **\-bldf=\[p\]\[c\]\[l\]** inherit \.prg/\.c/linker flags \(or none\) from Harbour build
 - **\-F&lt;framework&gt;** διασύνδεση με το &lt;framework&gt; framework \(μόνο σε Darwin\)
 - **\-prgflag=&lt;f&gt;** απλό πέρασμα flag στο μεταλωττιστή Harbour
 - **\-cflag=&lt;f&gt;** pass single flag to C compiler
 - **\-resflag=&lt;f&gt;** pass single flag to resource compiler \(Windows only\)
 - **\-ldflag=&lt;f&gt;** απλό πέρασμα σημαίας \-flag\- στο συνδέτη \-linker\- \(εκτελέσιμο\)
 - **\-dflag=&lt;f&gt;** pass single flag to linker \(dynamic library\)
 - **\-aflag=&lt;f&gt;** pass single flag to linker \(static library\)
 - **\-iflag=&lt;f&gt;** περασμα απλής σημαίας στην εντολή δημιουργίας βιβλιοθήκης εισαγωγής
 - **\-signflag=&lt;f&gt;** περασμα απλής σημαίας στην εντολή σήμανσης κώδικα
 - **\-runflag=&lt;f&gt;** pass single flag to output executable when \-run option is used
 - **\-cflag\+=&lt;f&gt;** πέρασμα μιάς σημαίας \-flag\- στον μεταγλωττιστή C υπερκαλύπτοντας αντίστοιχες σημαίες C που προστέθηκαν απο το ίδιο το hbmk2 itself\. Χρησιμοποιείστε το με προσοχή\.
 - **\-ldflag\+=&lt;f&gt;** πέρασμα επιλογής χωρίς προεπεξεργασία στο συνδέτη/linker \(εκτελέσιμο\) μετά τη λίστα βιβλιοθηκών\. Χρησιμοποιήστε το με προσοχή\!
 - **\-dflag\+=&lt;f&gt;** πέρασμα επιλογής χωρίς προεπεξεργασία στο συνδέτη/linker \(δυναμική βιβλιοθήκη\) μετά τη λίστα βιβλιοθηκών\. Χρησιμοποιήστε το με προσοχή\!
 - **\-3rd=&lt;f&gt;** εφεδρικές επιλογές/σημαίες για  3rd party εργαλεία, πάντοτε αγνοούνται αφ'εαυτού από hbmk2 
 - **\-env:&lt;e&gt;\[&lt;o&gt;\[&lt;v&gt;\]\]** τροποποίηση τοπικού περιβάλλοντος\. &lt;e&gt; είναι το όνομα μεταβλητής περιβάλλοντος για αλλαγή\. &lt;o&gt; μπορεί να είναι '=' για ορισμό/επικάλυψη, '\-' για διαγραφή, '\+' για προσθήκη στο τέλος της υπάρχουσας τιμής, '\#' για εισαγωγή στην αρχή της υπάρχουσας τιμής\. &lt;v&gt; είναι η τιμή που θα οριστεί/προστεθεί/εισαχθεί\.
 - **\-jobs=&lt;n&gt;** start n compilation threads \(multiprocess platforms only\)
 - **\-head=&lt;m&gt;** έλεγχος της ανάλυσης του πηγαίου header \(σε αυξητικό \-incremental\- ρυθμό κατασκευής\)  
&lt;m&gt; μπορεί να είναι: native \(χρήση του μεταγλωττιστή για εξαγωγή των εξαρτήσεων\), full \(προεπιλογή, χρήση απλού αναλυτή κειμένου σε όλο το αρχείο\), dep, off
 - **\-rebuild** ανακατασκευή \(σε incremental ρυθμό\)
 - **\-rebuildall** ανακατασκευή μαζί με τα υπο\-έργα \(με αυξητική μέθοδο κατασκευής\)
 - **\-clean** clean \(in incremental build mode\)
 - **\-workdir=&lt;dir&gt;** κατάλογος εργασίας⏎ \(προεπιλογή: \.hbmk/&lt;platform&gt;/&lt;compiler&gt; \[\*\]  σε incremental ρυθμό, αλλιώς ο temp κατάλογος του Λ\.Σ\.\)


 - **\-hbcontainer** εικονικός στόχος, δεν δημιουργεί τίποτα\. Χρήσιμο για την δημιουργία ενός \.hbp με μοναδικό σκοπό την μνεία των υπο\-έργων
 - **\-hbimplib** Δημιουργία βιβλιοθήκης εισαγωγής \(μόνο σε Windows\)


 - **\-hbl\[=&lt;output&gt;\]** output \.hbl filename\. %\{hb\_lng\} macro is accepted in filename
 - **\-lng=&lt;languages&gt;** λίστα των γλωσσών προς αντικατάσταση σε %\{hb\_lng\} macros σε \.pot/\.po filenames and output \.hbl/\.po filenames\. Λίστα διαχωριζόμενη με κόμμα:⏎ \-lng=en,hu\-HU,de
 - **\-po=&lt;output&gt;** create/update \.po file from source\. Merge it with previous \.po file of the same name
 - **\-minipo\[\-\]** do \(not\) add Harbour version number and source file reference to \.po \(default: add them\)
 - **\-rebuildpo** recreate \.po file, thus removing all obsolete entries in it


 - **\-hbx=\[&lt;\.ch&gt;\]** Δημιουργία  header αρχείο \(σε \.hbx μορφή\) μέ όλα τα εξωτερικά σύμβολα \-ονοματα συναρτήσεων κ\.λ\.π\.\- \. Κενή παράμετρος το απενεργοποιεί\.
 - **\-autohbc=&lt;\.ch:\.hbc&gt;** &lt;\.ch&gt; είναι ένα όνομα αρχείου header\. &lt;\.hbc&gt; είναι ένα \.hbc όνομα αρχείου που θα συμπεριληφθεί αυτομάτως σε περίπτωση που το  header βρίσκεται σε κάποιο απο τα μεταγλωττισμένα πηγαία αρχεία\. \(ΠΕΙΡΑΜΑΤΙΚΟ\)


 - **\-deppkgname=&lt;d:n&gt;** &lt;d&gt; είναι το όνομα της εξάρτησης\. &lt;n&gt; είναι το όνομα του πακέτου  εξάρτησης\.  Μπορεί να οριστεί πολλαπλές φορές\.
 - **\-depkeyhead=&lt;d:h&gt;** &lt;d&gt; είναι το όνομα της εξάρτησης\. &lt;h&gt; είναι το header\-κλειδί \(\.h\) της εξάρτησης πακέτου\. Μπορούν να οριστούν πολλαπλά εναλλακτικά headers \.
 - **\-depoptional=&lt;d:f&gt;** &lt;d&gt; είναι το όνομα της εξάρτησης\. το &lt;f&gt; μπορεί να είναι 'yes' ή 'no', καθορίζει το άν η εξάρτηση είναι προαιρετική\. Προεπιλογή: no
 - **\-depcontrol=&lt;d:v&gt;** &lt;d&gt; είναι το όνομα της εξάρτησης\. &lt;v&gt; είναι η τιμή που ελέγχει πως γίνεται η ανίχνευση\. Αποδεκτές τιμές: no, yes, force, nolocal, local\. Προεπιλογή: το περιεχόμενο της μεταβλητής περιβάλλοντος HBMK\_WITH\_&lt;d&gt;
 - **\-depincroot=&lt;d:r&gt;** &lt;d&gt; είναι το όνομα της εξάρτησης\. Ορίστε το &lt;r&gt; ως ριζικό κατάλογο για μονοπάτια που ορίζονται στις  \-depincpath επιλογές\.
 - **\-depincpath=&lt;d:i&gt;** &lt;d&gt; είναι το όνομα της εξάρτησης\. Προσθέστε &lt;i&gt; στη λίστα μονοπατιών ανίχνευσης header
 - **\-depincpathlocal=&lt;d:i&gt;** &lt;d&gt; είναι το όνομα της εξάρτησης\. Προσθέστε &lt;i&gt; στη λιστα μονοπατιών ανίχνευσης header, όπου &lt;i&gt; δείχνει σε ένα κατάλογο τοπικό προς το έργο και περιέχει μια ενσωματωμένη \(aka\. 'locally hosted'\) εξάρτηση\.
 - **\-depimplibs=&lt;d:dll&gt;** &lt;d&gt; είναι το όνομα της εξάρτησης\. Προσθέστε &lt;dll&gt; στη λίστα δυναμικών βιβλιοθηκών
 - **\-depimplibd=&lt;d:lib&gt;** &lt;d&gt; είναι το όνομα της εξάρτησης\. Ορίστε το όνομα της δημιουργούμενης βιβλιοθήκης εισαγωγής σε &lt;lib&gt;
 - **\-depfinish=&lt;d&gt;** &lt;d&gt; είναι το όνομα της εξάρτησης\. Κλείνει τον ορισμό της εξάρτησης και επιτελεί την πραγματική ανίχνευση της εξάρτησης, ορίζοντας ανάλογα όλες τις προκαθορισμένες macro μεταβλητές φίλτρου και τις κατασκευαστικές επιλογές\. Προαιρετικό, αν παραληφθεί, η ανίχνευση θα λάβει χώρα μετά την επεξεργασία όλων των επιλογών\.


 - **\-plugin=&lt;filename&gt;** προσθήκη plugin\. το &lt;filename&gt; μπορεί να είναι: \.hb, \.prg, \.hrb
 - **\-pi=&lt;filename&gt;** πέρασμα του αρχείου εισόδου στα plugins
 - **\-pflag=&lt;f&gt;** απλό πέρασμα σημαίας \-flag\- στα plugins
  
Οι παρακάτω επιλογές είναι διαθέσιμες στη γραμμή\-εντολών:  


 - **\-target=&lt;script&gt;** ορίζει ένα νέο στόχο κατασκευής\. το &lt;script&gt; μπορεί να είναι \.prg \(ή χωρίς καμμία κατάληξη\) ή  \.hbp αρχείο\. Σημειώστε ότι τα αρχεία \.hbp θεωρούνται αυτόματα ως ξεχωριστοί στόχοι\.


 - **\-hbrun** run target
 - **\-hbraw** διακοπή μετά το τρέξιμο του μεταγλωττιστή 
 - **\-hbcmp|\-clipper** stop after creating the object files  
create link/copy hbmk2 to hbcmp/clipper for the same effect
 - **\-hbcc** αποδοχή raw C flags⏎ δημιουργία link/copy hbmk2 στο hbcc για όμοιο αποτέλεσμα
 - **\-hblnk** αποδοχή ανεπεξέργαστων flags συνδέτη
 - **\-autohbm\[\-\]** ενεργοποίηση \(ή απενεργοποίηση\) επεξεργασίας του hbmk\.hbm στο τρέχοντα κατάλογο \(προεπιλογή: yes\)
 - **\-hb10** ενργοποίηση συμβατότητας Harbour 1\.0\.x
 - **\-hb20** ενργοποίηση συμβατότητας Harbour 2\.0\.x
 - **\-hb30** ενργοποίηση συμβατότητας Harbour 3\.0\.x
 - **\-xhb** enable xhb mode
 - **\-hbc** ενεργοποίηση καθαρού C mode
 - \-rtlink 
 - \-blinker 
 - **\-exospace** προσομοίωσε σε Clipper συμβατή τη συμπεριφορά του linker ⏎ create link/copy hbmk2 to rtlink/blinker/exospace for the same effect


 - **\-hbreg\[=global\]** καταγραφή σεναρίου Harbour \(\.hb\) μαζί με hbmk2 \(μόνο σε Windows \)
 - **\-hbunreg\[=global\]** αποκαταχώριση σεναρίου Harbour \(\.hb\) από hbmk2 \(μόνο σε Windows \)


 - **\-find &lt;text&gt;** δημιουργεί λίστα όλων των γνωστών συναρτήσεων Harbour που περιέχουν &lt;text&gt; στο όνομα τους, μαζί με τα πακέτα τους \(αδιάφορο παζών/κεφαλαίων, δέχεται παλλαπλές τιμές, μπορεί να περιέχει wildcard χαρακτήρες\)


 - **\-hbmake=&lt;file&gt;** μετατροπή έργου hbmake &lt;file&gt; σε αρχείο \.hbp
 - **\-xbp=&lt;file&gt;** convert \.xbp \(xbuild\) project &lt;file&gt; to \.hbp file
 - **\-xhp=&lt;file&gt;** convert \.xhp \(xMate\) project &lt;file&gt; to \.hbp file


 - **\-\-hbdirbin** output Harbour binary directory
 - **\-\-hbdirdyn** output Harbour dynamic library directory
 - **\-\-hbdirlib** κατάλογος εξόδου στατικής βιβλιοθήκης Harbour
 - **\-\-hbdirinc** output Harbour header directory
 - **\-\-hbinfo\[=nested\]** εξάγει πληροφορίες κατασκευής του Harbour\. Είναι σε μορφή JSON\. Τα συμπεριλαμβανόμενα μονοπάτια πάντοτε περιέχουν εμπρόσθιες κάθετες παύλες\. Κάθε JSON τμήμα ακολουθείται από ένα 0x0A χαρακτήρα\.


 - **\-plat=&lt;platform&gt;** override default target platform \(default: automatic\)
 - **\-cpu=&lt;cpu&gt;** παραμερισμός προεπιλεγμένης CPU\-στόχου \(προεπιλογή: αυτομάτως\) \(ΠΕΙΡΑΜΑΤΙΚΟ\)
 - **\-comp=&lt;compiler&gt;** override C compiler autodetection  
Special value:  
 \- bld: use original build settings \(default on \*nix\)
 - **\-build=&lt;name&gt;** ορισμός ονόματος κατασκευής
 - **\-lang=&lt;lang&gt;** παραμερισμός προεπιλεγμένης γλώσσας\. Το &lt;lang&gt; είναι ένας κατά  ISO κωδικός γλώσσας\.
 - **\-width=&lt;n&gt;** ορισμός πλάτους εξόδου σε &lt;n&gt; χαρακτήρες \(0=απεριόριστο\)\.
 - **\-shl** εμφάνιση επιπέδου του υπο\-έργου στις γραμμές\-εξόδου
 - **\-viewhelp** εκτεταμένη βοήθεια σε προβολή κειμένου
 - **\-longhelp** long help
 - **\-longhelpmd** εκτεταμένη βοήθεια σε μορφή [Markdown](http://daringfireball.net/projects/markdown/)
 - **\-harbourhelp** Βοηθεια μεταγλωττιστή Harbour \(όλες οι επιλογές μεταγλωττιστή Harbour γίνονται δεκτές ως έχουν υπό hbmk2\)
 - **\-credits** Διαπιστευτήρια του μεταγλωτιστή Harbour
 - **\-build** Πληροφορία κατασκευής μεταγλωτιστή Harbour
 - **\-version** display version header only
  
Options below are internal/developer ones \(compatibility not guaranteed\):  


 - **\-debugtime** measure time spent on the build
 - **\-debuginc** display internals of incremental build
 - **\-debugstub** display content of all internally generated source files
 - **\-debugi18n** display internals on translation file generation
 - **\-debugdepd** display internals of dependency detection
 - **\-debugpars** display all input parameters in processing order
 - **\-debugrte** generate a run\-time error


Μορείτε να συνδέσετε/αντιγράψετε/μετονομάσετε hbmk2 στα ακόλουθα ονόματα για αλλάξετε την προεπιλεγμένη λειτουργία:


 - **hbrun\*|\*hbrun** μοντέλο εκτέλεσης σεναρίων / διαλογικό shell
 - **hbrund|hbrun\*d** μοντέλο εκτέλεσης σεναρίων / διαλογικό shell με λειτουργία αποσφαλμάτωσης
 - **harbour** μοντέλο \-hbraw \(προσομοίωση  \- raw \- του μεταγλωττιστή Harbour\)
 - **clipper** μοντέλο \-hbcmp \(προσομοίωση μεταγλωττιστή Clipper\)
 - **rtlink** μοντέλο \-rtlink \(προσομοίωση Clipper linker\)
 - **exospace** μοντέλο \-rtlink \(προσομοίωση Clipper linker\)
 - **blinker** μοντέλο \-rtlink \(προσομοίωση Clipper linker\)
 - **\*10** επιλογή \-hb10
 - **\*20** επιλογή \-hb20
 - **\*30** επιλογή \-hb30
 - **x\*** επιλογή \-xhb
 - **hbcmp\*|\*hbcmp** μέθοδος \-hbcmp \(προσομοίωση μεταγλώτισης Harbour που δημιουργεί δυαδικό αντικείμενο\)
 - **hbcc\*|\*hbcc** μοντέλο \-hbcc \(προσομοίωση μεταγλωττιστή C\)
 - **hblnk\*|\*hblnk** μοντέλο \-hblnk \(προσομοίωση C συνδέτη\)
 - **hbexe\*|\*hbexe** μέθοδος \-hbexe
 - **hblib\*|\*hblib** μέθοδος \-hblib
 - **hbdyn\*|\*hbdyn** μέθοδος \-hbdyn
  
Αρχεία:  


 - **\*\.hbp** αρχείο έργου\. Μπορεί να περιέχει οποιοδήποτε αριθμό επιλογών γραμμής\-εντολών,  οι οποίες αναμένεται να αποφέρουν ένα αποτέλεσμα, δηλ\. δημιουργία μιας εφαρμογής\. Γραμμές που αρχίζουν με το χαρακτήρα '\#' αγνοούνται, κατα τ'άλλα, η δημιουργία ξεχωριστών γραμμών είναι προαιρετική και οι επιλογές μπαίνουν διαχωρισμένες με κενό διάστημα, ακριβώς όπως στη γραμμή\-εντολών\. Επιλογή που περιέχει κενό διάστημα πρέπει να εγκλειστεί σε "εισαγωγικα"\. Κάθε αναφορά αρχείου \.hbp θα εκτελεστεί σαν υπο\-έργο\.
 - **\*\.hbm** συλλογή επιλογών\. Μπορεί να χρησιμοποιηθεί για συγκέντρωση κοινών επιλογών μέσα σε ένα αρχείο το οποίο θα συμπεριληφθεί μέσα σε αρχεία έργου\. Η μορφή που χρησιμοποιεί ή ίδια με τα \.hbp αρχεία\.
 - **\*\.hbc** συλλογή από επιλογές που σθνοδεύουν collection of options that accompany συστατικά στοιχεία \(γνωστά και ως 'libs', γνωστά και ως packages\)\. Χρήσιμοποιείται διαφορετική σύνταξη απο αυτήν της γραμμής\-εντολών και των αρχείων  \.hbp/\.hbm\. Γραμμές που αρχίζουν με το χαρακτήρα '\#' αγνοούνται, κάθε ντιρεκτίβα πρέπει να τοποθετείται σε ξεχωριστή γραμμή\.
 - **\*\.ch** αν περαστεί κατευθείαν σαν πηγαίο αρχείο, θα χρησιμοποιηθεί σαν επιπλέον πρότυπο header
 - **hbmk\.hbc** standard αρχείο \.hbc που δέχεται αυτόματη επεξεργασία , αν είναι παρόν\. Πιθανή\(ές\) τοποθεσίες \(με σειρά προτεραιότητας\) \[\*\]: %APPDATA%\\\.harbour, &lt;hbmk2 κατάλογος&gt;
 - **hbmk\.hbm** προαιρετικό \.hbm αρχείο μέσα στο τρέχοντα κατάλογο εργασίας, που δέχεται επεξεργασία αυτομάτως πρίν από τυχόν άλλες επιλογές
 - **$hb\_pkg\_dynlib\.hbm** ειδικό \.hbm αρχείο ενσωματομένο μέσα στο hbmk2\. Διαχειρίζεται τις λεπτομέρειες δημιουργίας μιας δυναμικής βιβλιοθήκης \(κατά το πρότυπο των Harbour contribs\)\.
 - **$hb\_pkg\_install\.hbm** ειδικό \.hbm αρχείο ενσωματωμένο εντός του hbmk2\. Διαχειρίζεται τις λεπτομέρειες εγκατάστασης των στόχων και των σχετιζόμενων πακέτων στις standard περιοχές \(κατά το πρότυπο των Harbour contribs\)\.


 - **\*\.hb** Σενάριο Harbour
 - **\*\.hrb** Μεταφέρσιμο δυαδικό Harbour \(γνωστό και ως προκατασκευασμένο σενάριο\)
 - **hbstart\.hb** startup Harbour script for interactive Harbour shell\. It gets executed automatically on shell startup, if present\. Possible locations \(in order of precedence\) \[\*\]: \.\\, %APPDATA%\\\.harbour, &lt;hbmk2 κατάλογος&gt;
 - **shell plugins** \.hb and \.hrb plugins for interactive Harbour shell\. They may reside in \[\*\]: %APPDATA%\\\.harbour\\
 - **\.hb\_history** αποθηκεύει ιστορικό εντολών για το διαλογικό shell Harbour\. Μπορείτε να απενεργοποιήσετε το ιστορικό κάνοντας την πρώτη γραμμή 'no' \(χωρίς τα εισαγωγικά και με νεα γραμμή\)\. Βρίσκεται στο \[\*\]: %APPDATA%\\\.harbour\\
 - **hb\_extension** λίστα καταλήξεων προς φόρτωση στο διαλογικό κέλυφος του Harbour\. Μία κατάληξη ανα γραμμή, το τμήμα της γραμμής μετά από ένα χαρακτήρα '\#' αγνοείται\. Εναλλακτικά ονομα\-αρχείου στο Ms\-DOS: Το hb\_ext\.ini\. Βρίσκεται μεσα στο \[\*\]: %APPDATA%\\\.harbour\\
  
Μεταβλητές Macro:  


 - **$\{hb\_root\}** κατάλογος του hbmk2
 - **$\{hb\_dir\}** κατάλογος του συνήθως χρησιμοποιούμενου ονοματοςαρχείου
 - **$\{hb\_dirname\}** top directory of the filename it is used in
 - **$\{hb\_name\}** όνομα αρχείου που είναι σύνηθες \(χωρίς κατάλογο και κατάληξη\)
 - **$\{hb\_self\}** full filename it is used in
 - **$\{hb\_curdir\}** current working directory
 - **$\{hb\_tempdir\}** Κατάλογος Λ\.Σ\. για προσωρινα αρχεία
 - **$\{hb\_targetname\}** όνομα του έργου  \(χωρίς κατάλογο και κατάληξη\)\. Επιστρέφει \.adhoc\. αν δεν υπαρχει αρχείο έργου\.
 - **$\{hb\_targettype\}** ο τύπος του έργου \(hbexe, hblib, hbdyn, hbdynvm, hbimplib, hbppo, hbhrb, hbcontainer\)
 - **$\{hb\_plat\}** επιλεγμένη πλατφόρμα
 - **$\{hb\_comp\}** επιλεγμένος μεταγλωττιστής C
 - **$\{hb\_comp\_ver\}** Εκδοση μεταγλωττιστή C
 - **$\{hb\_build\}** όνομα κατασκευής
 - **$\{hb\_cpu\}** επιλεγμένη CPU
 - **$\{hb\_work\}** default base workdir name
 - **$\{hb\_workdynsub\}** προεπιλεγμένος υποκατάλογος εργασίας για τις δυναμικές βιβλιοθήκες\-στόχους
 - **$\{hb\_dynprefix\}** πρόθεμα δυναμικής βιβλιοθήκης
 - **$\{hb\_dynsuffix\}** επίθεμα δυναμικής βιβλιοθήκης
 - **$\{hb\_dynext\}** dynamic library extension
 - **$\{hb\_ver\}** Η έκδοση Harbour σε δεκαεξαδική triple byte μορφή\. Π\.χ\.: 030200
 - **$\{hb\_verstr\}** η έκδοση Harbour σε ανθρώπινα αναγνώσιμη μορφή &lt;major&gt;\.&lt;minor&gt;\.&lt;release&gt;&lt;status&gt;\. Π\.χ\.: 3\.2\.0dev
 - **$\{hb\_major\}** Harbour major version number
 - **$\{hb\_minor\}** Harbour minor version number
 - **$\{hb\_release\}** Harbour release version number
 - **$\{hb\_status\}** Κατάσταση έκδοσης Harbour 
 - **$\{hb\_revision\}** Αναθεώρηση Harbour
 - **$\{hb\_host\_plat\}** Πλατφόρμα υποδοχής 
 - **$\{hb\_host\_plat\_unix\}** επιστρέφει '1' αν η πλατφόρμα υποδοχής Harbour είναι \*nix συμβατή
 - **$\{hb\_bin\}** Harbour binary directory
 - **$\{hb\_lib\}** Κατάλογος στατικών βιβλιοθηκών Harbour 
 - **$\{hb\_lib3rd\}** Κατάλογος 3rd party βιβλιοθηκών Harbour 
 - **$\{hb\_dyn\}** Κατάλογος δυναμικών βιβλιοθηκών Harbour 
 - **$\{hb\_inc\}** Harbour header directory
 - **$\{hb\_addons\}** Harbour add\-ons base directory
 - **$\{hb\_first\}** το όνομα του πηγαίου αρχείου που περιέχει την συνάρτηση εκκίνησης \(χωρίς κατάλογο και κατάληξη\)
 - **$\{hb\_outputdir\}** ο κατάλογος εξόδου
 - **$\{hb\_outputname\}** όνομα εξόδου \(χωρίς κατάληξη\)
 - **$\{hb\_level\}** sub\-project recursion level
 - **$\{&lt;depname&gt;\}** επιστρέφει τον επικεφαλής κατάλογο της εξάρτησης &lt;depname&gt;, ή '1' αν δεν ανιχνευτεί
 - **$\{&lt;envvar&gt;\}** επιστρέφει την τιμή της μεταβλητής περιβάλλοντος &lt;envvar&gt;
  
Φίλτρα \(μπορείτε να τα συνδυάσετε και/ή να τα αναιρέσετε\):  


 - **\{&lt;platform&gt;\}** η πλατφόρμα\-στόχος\. Οπου &lt;platform&gt; μπορεί να είναι κάθε τιμή αποδεκτή από την επιλογή \-plat= \.
 - **\{&lt;compiler&gt;\}** ο C μεταγλωττιστής\-στόχος\. Οπου &lt;compiler&gt; μπορεί να είναι κάθε τιμή αποδεκτή απο την επιλογή \-comp\.
 - **\{&lt;cpu&gt;\}** σκοπούμενη CPU\. Οπου &lt;cpu&gt; μπορεί να είναι κάτι από : x86, x86\_64, ia64, arm, mips, sh
 - **\{&lt;targettype&gt;\}** τύπος στόχου\. Οπου &lt;targettype&gt; είναι οποιαδήποτε από τις τιμές που επιστρέφονται από την macro μεταβλητή $\{hb\_targettype\}\.
 - **\{mt\}** ο στόχος είναι multi\-threaded \(δες \-mt επιλογή\)
 - **\{st\}** ο στόχος είναι single\-threaded \(δες \-st επιλογή\)
 - **\{gui\}** GUI target \(see \-gui option\)
 - **\{std\}** στόχος κονσόλας \(δες επιλογή \-console\)
 - **\{debug\}** C level debugging is enabled \(see \-debug option\)
 - **\{nodebug\}** Απενεργοποιημένη αποσφαλμάτωση επιπέδου C \(δες \-debug\- επιλογή\)
 - **\{shared\}** κατασκευή shared \(δες \-shared και τις σχετικές επιλογές\)
 - **\{static\}** κατασκευή static \(δες \-static και τις σχετικές επιλογές\)
 - **\{lngcpp\}** εξαναγασμένο C\+\+ μοντέλο \(δες  \-cpp επιλογή\)
 - **\{lngc\}** εξαναγασμένο C μοντέλο \(δες  \-cpp επιλογή\)
 - **\{winuni\}** μοντέλο Windows UNICODE \(WIDE\)  \(δες επιλογή \-winuni\)
 - **\{winansi\}** μοντέλο Windows ANSI \(δες επιλογή \-winuni\-\)
 - **\{unix\}** η παλτφόρμα\-στόχος είναι  \*nix συμβατή \(bsd, hpux, sunos, beos, qnx, android, vxworks, symbian, linux, darwin, cygwin, minix, aix\)
 - **\{allwin\}** η πλατφόρμα\-στόχος είναι Windows συμβατή \(win, wce\)
 - **\{allgcc\}** ο στοχευμένος μεταγλωττιστής C cανή στην οικογένεια gcc \(gcc, mingw, mingw64, mingwarm, djgpp, gccomf, clang, open64, pcc\)
 - **\{allmingw\}** ο μεταγλωττιστής C είναι mingw\* \(mingw, mingw64, mingwarm\)
 - **\{allmsvc\}** ο στοχευμένος μεταγλωττιστής C είναι msvc\* \(msvc, msvc64, msvcia64, msvcarm\)
 - **\{allbcc\}** ο στοχευμένος μεταγλωττιστής C είναι bcc\* \(bcc, bcc64\)
 - **\{allpocc\}** target C compiler is pocc\* \(pocc, pocc64, poccarm\)
 - **\{allicc\}** ο στοχευμένος μεταγλωττιστής C είναι icc\* \(icc, iccia64\)
 - **\{hb10\}** Harbour 1\.0\.x compatibility mode \(see \-hb10 option\)
 - **\{hb20\}** Harbour 2\.0\.x compatibility mode \(see \-hb20 option\)
 - **\{hb30\}** Harbour 3\.0\.x compatibility mode \(see \-hb30 option\)
 - **\{xhb\}** xhb mode \(see \-xhb option\)
 - **\{hb\_ispath='&lt;file|dir&gt;'\}** το φίλτρο θα περάσει αν το όνομα &lt;file&gt; ή &lt;dir&gt; υπάρχει στο δίσκο\.
 - **\{MACRO\}** το φίλτρο θα περάσει αν η τιμή $\{MACRO\} δεν είναι άδεια και όχι ίση με '0' ή 'no' \(πεζά/κεφαλαία: αδιάφορο\)
 - **\{MACRO='&lt;value&gt;'\}** το φίλτρο θα περάσει αν η τιμή $\{MACRO\}  ισούται με την &lt;value&gt; \(ευαίσθητο σε πεζά/κεφαλαία\)
 - **\{MACRO&gt;'&lt;value&gt;'\}** το φίλτρο θα περάσει αν η τιμή $\{MACRO\} είναι μεγαλίτερη από την  &lt;value&gt; \(πεζά/κεφαλαία: αδιάφορο\)
 - **\{MACRO&lt;'&lt;value&gt;'\}** το φίλτρο θα περάσει αν η τιμή $\{MACRO\} είναι μικρότερη από την  &lt;value&gt; \(πεζά/κεφαλαία: αδιάφορο\)


Προκαθορισμένες σταθερές σε πηγαία αρχεία:


 - **\_\_HBSCRIPT\_\_HBMK\_PLUGIN** όταν ένα σενάριο \.hb είναι μεταγλωττισμένο ως plugin του hbmk2 
 - **\_\_HBEXTREQ\_\_** όταν ενα \.hbx πηγαίο αρχείο είναι παρόν σε ένα έργο \(διαθέσιμο στα πηγαία αρχεία Harbour\)
 - **HBMK\_HAS\_&lt;hbcname&gt; ** όταν το πακέτο &lt;hbcname&gt;\.hbc διασυνδέεται με το στόχο\. Η τιμή είναι η version= τιμή απο το αρχείο \.hbc, μετασχηματισμένη σε δεκαδικό αριθμό, που είναι '1', αν δεν έχει οριστεί\. \(διαθέσιμο σε πηγαία αρχεία Harbour\)
 - **HBMK\_HAS\_&lt;depname&gt; ** όταν  ανιχνεύτηκε &lt;depname&gt; εξάρτηση \(διαθέσιμο σε πηγαίους κώδικες C\)


 - **\_\_HBSCRIPT\_\_HBSHELL** when a Harbour source file is run as a shell script
 - **&lt;standard Harbour&gt;** \_\_PLATFORM\_\_\*, \_\_ARCH\*BIT\_\_, \_\_\*\_ENDIAN\_\_, etc\.\.\.


Προκαθορισμένες σταθερές κατασκευαστικά αρχεία \(είναι διαθέσιμες μετά από  '\-depfinish=&lt;depname&gt;' / 'depfinish=&lt;depname&gt;'\):


 - **HBMK\_HAS\_&lt;depname&gt; ** όταν  &lt;depname&gt; εξάρτηση ανιχνεύτηκε
 - **HBMK\_DIR\_&lt;depname&gt; ** επιστρέφει τον επικεφαλής κατάλογο όπου η &lt;depname&gt; ανιχνεύτηκε, ή κενό αν δεν ανιχνεύτηκε\.
 - **HBMK\_HAS\_&lt;depname&gt; \_LOCAL** οταν η  &lt;depname&gt;  εξάρτηση ανιχνεύτηκε σε μια θέση που ορίστηκε από την επιλογή \-depincpathlocal=
  
Μεταβλητές περιβάλλοντος:  


 - **HBMK\_OPTIONS** δέχεται οποιεσδήποτε επιλογές σαν να είχαν αυτές περαστεί στην αρχή της γραμμής\-εντολών
 - **HB\_PLATFORM** δέχεται τις ίδιες τιμές όπως και η επιλογή \-plat= 
 - **HB\_COMPILER** δέχεται τις ίδιες τιμές όπως και η επιλογή \-comp= 
 - **HB\_CPU** δέχεται τις ίδιες τιμές όπως και η επιλογή \-cpu= 
 - **HB\_BUILD\_NAME** δέχεται τις ίδιες τιμές όπως και η επιλογή \-build= 
 - **HB\_LANG** δέχεται τις ίδιες τιμές όπως και η επιλογή \-lang= 
 - **HB\_USER\_LIBS** δέχεται τις ίδιες τιμές \(χωρισμένες με κενό\)  όπως και η επιλογή \-l 
 - **HB\_USER\_LIBPATHS** δέχεται τις ίδιες τιμές \(χωρισμένες με κενό\)  όπως και η επιλογή \-L 
 - **HB\_USER\_PRGFLAGS** επιλογές που θα περαστούν στον μεταγλωττιστή Harbour \(πρίν από επιλογές γραμμής\-εντολών\)
 - **HB\_USER\_CFLAGS** επιλογές που θα περαστούν στον μεταγλωττιστή C \(πρίν από επιλογές γραμμής\-εντολών\)
 - **HB\_USER\_RESFLAGS** επιλογές που θα περαστούν στον resource compiler \(πρίν από επιλογές γραμμής\-εντολών\) \(μόνο για Windows\)
 - **HB\_USER\_LDFLAGS** επιλογής που θα περαστούν στον συνδέτη \(εκτελέσιμου\) \(πρίν τις επιλογές της γραμμής\-εντολών\)
 - **HB\_USER\_DFLAGS** επιλογές που θα περαστούν στον συνδέτη \-linker\- \(dynamic library\)  \(πρίν από επιλογές γραμμής\-εντολών\)
 - **HB\_USER\_AFLAGS** επιλογές που θα περαστούν στον συνδέτη \-linker\-  \(static library\) \(πρίν τις επιλογές της γραμμής\-εντολών\)
 - **HB\_COMPILER\_VER** επικάλυψη αυτόματης ανίχνευσης της έκδοσης του μεταγλωττιστή C \(μόνο για οικογένειες μεταγλωττιστών gcc και msvc\)\. Μορφή: &lt;15&gt;&lt;00&gt;\[\.&lt;00&gt;\] = &lt;major&gt;&lt;minor&gt;\[\.&lt;revision&gt;\]
 - **HB\_CCPATH** επικάλυψη του καταλόγου μεταγλωττιστή C  \(μόνο σε gcc οικογένειες μεταγλωττιστών\)
 - **HB\_CCPREFIX** επικάλυψη του προθέματος μεταγλωττιστή C  \(μόνο σε gcc οικογένειες μεταγλωττιστών\)
 - **HB\_CCSUFFIX** επικάλυψη του επιθέματος μεταγλωττιστή C  \(μόνο σε gcc οικογένειες μεταγλωττιστών\)
 - **HB\_INSTALL\_PREFIX** επικάλυψη του βασικού καταλόγου εγκατάστασης του Harbour
 - **HB\_INSTALL\_ADDONS** επικάλυψη του βασικού καταλόγου add\-ons του Harbour


 - **HB\_EXTENSION** space separated list of extensions to load in interactive Harbour shell
  
\.hbc ντιρεκτίβες \(πρέπει να γραφτούν σε ξεχωριστές γραμμές\):  


 - **echo=&lt;msg&gt;** εμφάνιση &lt;msg&gt;
 - **skip=\[&lt;msg&gt;\]** παράλειψη επεξεργασίας του υπόλοιπου \.hbc αρχείου\. Εμφάνιση &lt;msg&gt;, αν οριστεί\.
 - **stop=\[&lt;msg&gt;\]** διακοπή της κατασκευής\. Εμφάνιση του &lt;msg&gt;, αν οριστεί\.
 - **sources=** add space separated list of files as input files
 - **headers=** προσθήκη διαχωρισμένης με κενό λίστας από headers μορφής \.ch  ως πρότυπο header
 - **libs=** προσθέστε λίστα βιβλιοθηκών διαχωρισμένων με κενό \(δες περισσότερα  στην \-l επιλογή\)
 - **frameworks=** add space separated list of frameworks \(Darwin only\)
 - **requests=** προσθέστε διαχωρισμένη με κενό λίστα συμβόλων που θα διασυνδεθούν  υποχρεωτικά στο στόχο
 - **syslibs=** προσθήκη λίστας βιβλιοθηκών χωρισμένων με κενό διάστημα ως βιβλιοθήκες συστήματος \(πρίν από άλλες βιβλιοθήκες\)
 - **hbcs=** ενσωμάτψση λίστας \.hbc αρχείων διαχωρισμένων με κενό διάστημα\. Επιτρέπονται  ονόματα χωρίς την κατάληξη\. Οι αναφορές αυτές επεξεργάζονται επι τόπου\.
 - **autohbcs=** space separated list of values as in \-autohbc= option
 - **libpaths=** space separated list of additional library paths
 - **incpaths=** προσθήκη διαχωρισμένης με κενό λίστας πρόσθετων μονοπατιών header   \( για αμφότερα  Harbour και C\)
 - **instfiles=** space separated list of values as in \-instfile= option
 - **instpaths=** space separated list of values as in \-instpath= option
 - **prgflags=** space separated list of values as in \-prgflag= option
 - **cflags=** space separated list of values as in \-cflag= option
 - **resflags=** space separated list of values as in \-resflag= option
 - **ldflags=** space separated list of values as in \-ldflag= option
 - **ldflags\+=** space separated list of values as in \-ldflag\+= option
 - **dflags=** space separated list of values as in \-dflag= option
 - **dflags\+=** space separated list of values as in \-dflag\+= option
 - **pflags=** space separated list of values as in \-pflag= option
 - **psources=** space separated list of values as in \-pi= option
 - **gui=&lt;bool&gt;** 'yes' = \-gui, 'no' = \-std επιλογή
 - **mt=&lt;bool&gt;** 'yes' = \-mt, 'no' = \-st επιλογή
 - **pic=&lt;bool&gt;** 'yes' = \-pic, 'no' = \-pic\- επιλογή
 - **shared=&lt;bool&gt;** 'yes' = \-shared, 'no' = \-static επιλογή
 - **shareddef=&lt;bool&gt;** παρόμοιο με  shared=, αλλά λειτουργεί μόνο αν το μοντέλο shared/static δεν έχει οριστεί πιο πρίν
 - **fullstatic=&lt;bool&gt;** 'yes' = \-fullstatic, 'no' = \-static επιλογή
 - **debug=&lt;bool&gt;** 'yes' = \-debug, 'no' = \-debug\- επιλογή
 - **optim=** 'yes' = \-optim, 'no' = \-optim\- επιλογή
 - **nulrdd=&lt;bool&gt;** 'yes' = \-nulrdd, 'no' = \-nulrdd\- επιλογή
 - **nodefgt=&lt;bool&gt;** 'yes' = \-nodefgt, 'no' = \-nodefgt\- επιλογή
 - **map=&lt;bool&gt;** 'yes' = \-map, 'no' = \-map\- επιλογή
 - **hbcppmm=&lt;bool&gt;** 'yes' = \-hbcpmm, 'no' = \-hbcpmm\- επιλογή
 - **implib=&lt;bool&gt;** 'yes' = \-implib, 'no' = \-implib\- επιλογή
 - **winuni=&lt;bool&gt;** 'yes' = \-winuni, 'no' = \-winuni\- επιλογή
 - **strip=&lt;bool&gt;** 'yes' = \-strip, 'no' = \-strip\- επιλογή
 - **run=&lt;bool&gt;** 'yes' = \-run, 'no' = \-run\- επιλογή
 - **inc=&lt;bool&gt;** 'yes' = \-inc, 'no' = \-inc\- επιλογή
 - **safe=&lt;bool&gt;** 'yes' = \-safe, 'no' = \-safe\- επιλογή
 - **cpp=** όμοιο με την επιλογή \-cpp= 
 - **warn=** όμοιο με την επιλογή \-warn= 
 - **compr=** όμοιο με την επιλογή \-compr= 
 - **head=** όμοιο με την επιλογή \-head= 
 - **plugins=** λίστα plugins του hbmk2 διαχωρισμένων με κενό διάστημα
 - **gt=&lt;name&gt;** όμοιο με την επιλογή \-gt&lt;name&gt; 
 - **gtdef=&lt;name&gt;** set the default GT to be used
 - **env=** όμοιο με την επιλογή \-env: 
 - **deppkgname=** όμοιο με την επιλογή \-deppkgname= 
 - **depkeyhead=** όμοιο με την επιλογή \-depkeyhead= 
 - **depoptional=** όμοιο με την επιλογή \-depoptional= 
 - **depcontrol=** όμοιο με την επιλογή \-depcontrol= 
 - **depincroot=** όμοιο με την επιλογή \-depincroot= 
 - **depincpath=** όμοιο με την επιλογή \-depincpath= 
 - **depincpathlocal=** όμοιο με την επιλογή \-depincpathlocal= 
 - **depimplibs=** όμοιο με την επιλογή \-depimplibs= 
 - **depimplibd=** όμοιο με την επιλογή \-depimplibd= 
 - **name=** όνομα πακέτου
 - **description=** περιγραφή πακέτου
 - **version=&lt;x\.y\.z&gt;** ο αριθμός έκδοσης του πακέτου, όπου x,y,z &gt;= 0 &lt;= 255\. Τίθεται σε 0\.0\.1, αν δεν οριστεί\.
 - **keywords=** λίστα keywords διαχωρισμένων με κενό διάστημα
 - **licences=** λίστα αδειών διαχωρισμένων με κενό διάστημα
 - **repository=** space separated list of source repository references


Plugin API:  
 \('hbmk' is the context variable received by the plugin entry function\)


 - **hbmk\_Register\_Input\_File\_Extension\( hbmk, cExt \) \-&gt; NIL**  
Καταχώριση κατάληξης αρχείου που θα περαστεί σε plugin \(από προεπιλογή,  όλες οι άγνωστες καταλήξεις αρχείων περνάνε στον μεταγλωττιστή Harbour\)\.
 - **hbmk\_AddInput\_PRG\( hbmk, cFileName \) \-&gt; NIL**  
Προσθήκη ενός Harbour αρχείου εισόδου στο έργο\.
 - **hbmk\_AddInput\_C\( hbmk, cFileName \) \-&gt; NIL**  
Προσθήκη ενός C αρχείου εισόδου στο έργο\.
 - **hbmk\_AddInput\_CPP\( hbmk, cFileName \) \-&gt; NIL**  
Προσθήκη ενός C\+\+ αρχείου εισόδου στο έργο\.
 - **hbmk\_AddInput\_RC\( hbmk, cFileName \) \-&gt; NIL**  
Add a Windows resource input file to the project\.
 - **hbmk\_AddInput\_OBJ\( hbmk, cFileName \) \-&gt; NIL**  
Προσθήκη ενός δυαδικού object αρχείου στο έργο\.
 - **hbmk\_AddInput\_INSTFILE\( hbmk, cFileName, \[&lt;cGroup&gt;\] \) \-&gt; NIL**  
Προσθήκη αρχείου προς εγκατάσταση, με ένα προαιρετικό \-instpath= όνομα ομάδας\.
 - **hbmk\_OutStd\( hbmk, cText \) \-&gt; NIL**  
Εξοδος κειμένου στο stdout\.
 - **hbmk\_OutErr\( hbmk, cText \) \-&gt; NIL**  
Εξοδος κειμένου στο
 - **hbmk\_OutStdRaw\( hbmk, \.\.\. \) \-&gt; NIL**  
Εξοδος κειμένου στο stdout χωρίς καμμία μορφοποίηση\.
 - **hbmk\_OutErrRaw\( hbmk, \.\.\. \) \-&gt; NIL**  
Εξοδος κειμένου στο stderr χωρίς καμμία μορφοποίηση\.
 - **hbmk\_Macro\( hbmk, &lt;cMacro&gt; \) \-&gt; &lt;cResult&gt;**  
Evaluate hbmk2 macro expression\.
 - **hbmk\_FNameEscape\( hbmk, cFileName \) \-&gt; &lt;cFileName&gt;**  
Οριοθετημενο με Escape ή εισαγωγικά  ονομααρχείου για να χρησιμοποιηθεί ως παραμέτρος εξωτερικής εντολή\.
 - **hbmk\_PathSepToTarget\( hbmk, cFileName \) \-&gt; &lt;cFileName&gt;**  
Μετατροπή ονόματοςαρχείου στην απαιτούμενη μορφή για την σκοπούμενη εργαλειογραμμή
 - **hbmk\_PathSepToForward\( &lt;cPath&gt; \) \-&gt; &lt;cPath&gt;**  
Μετατροπή του ονόματος αρχείου ωστε να έχει  εμπρός κάθετο / ως διαχωρστή\.
 - **hbmk\_PathFromWorkdirToCWD\( hbmk \) \-&gt; &lt;cRelativePath&gt;**  
Επιστροφή σχετικού μονοπατιού της τιμής του \-workdir= από το τρέχοντα κατάλογο εργασίας\.
 - **hbmk\_FindInPath\( &lt;cFileName&gt;, \[&lt;xPath&gt;\], \[&lt;aExtDef&gt;\] \) \-&gt; &lt;cFNFound&gt; | NIL**  
Ευρεση αρχείου στο &lt;xPath&gt; \(είναι δεκτά, πίνακας ή συμβολοσειρά διαχωρισμένη με διαχωριστές καταλόγου\) που περιέχει λίστα από  &lt;aExtDef&gt; εναλλακτικές καταλήξεις \(defaults to executable binaries\)\. Επιστρέφει όνομα\-αρχείου αν βρεθεί και NIL αν όχι\.
 - **hbmk\_FNameDirExtSet\( &lt;cFileName&gt;, \[&lt;cDirNew&gt;\], \[&lt;cExtNew&gt;\] \) \-&gt; &lt;cFileName&gt;**  
Change directory and/or extension in filename\.
 - **hbmk\_FuncNameEncode\( &lt;cFuncName&gt; \) \-&gt; &lt;cFuncNameEncoded&gt;**  
Κωδικοποίηση ονόματος συνάρτησης σύμφωνα με τους κανόνες Harbour περί μορφοποίησης ονόματων HB\_FUNC\(\) συναρτήσεων σε κώδικα C \.
 - **hbmk\_StrStripQuote\( cString \) \-&gt; &lt;cString&gt;**  
Αφαίρεση των διπλών εισαγωγικών εγκλεισμού από μία συμβολοσειρά\.
 - **hbmk\_ArrayToList\( &lt;aList&gt;, \[&lt;cSeparator&gt;\] \) \-&gt; &lt;cList&gt;**  
Μετατροπή ενός πίνακα συμβολοσειρών σε συμβολοσειρά\. Προεπιλεγμένος διαχωριστής είναι ένα κενό διάστημα\.


Μεταβλητές Plugin:  
\('hbmk' context hash items, case\-sensitive, read\-only unless marked otherwise\)


 - **"apiver"** API version as an integer
 - **"cSTATE"** δήλωση  επίκλισης\. Μπορεί να είναι: 'init', 'pre\_all', 'pre\_prg', 'pre\_res', 'pre\_c', 'pre\_link', 'pre\_lib', 'pre\_cleanup', 'post\_build', 'post\_all'
 - **"params"** πίνακας παραμέτρων που θα περαστούν στα plugins μέσω των επιλογών \-pflag=/pi= ή που έχουν μία κατάληξη καταχωρημένη μέσω της συνάρτησης hbmk\_Register\_Input\_File\_Extension\(\)
 - **"vars"** Κατακερματισμός \-hash\- των ιδιαίτερων μεταβλητών plugin\. Εγγράψιμο, τοπικά σε κάθε plugin
 - **"cPLAT"** \-plat τιμή
 - **"cCOMP"** \-comp τιμή
 - **"nCOMPVer"** δες HB\_COMPILER\_VER μεταβλητή περιβάλοντος
 - **"cCPU"** \-cpu τιμή
 - **"cBUILD"** \-build= τιμή
 - **"cOUTPUTNAME"** \-o τιμή
 - **"cTARGETNAME"** δες $\{hb\_targetname\} macro
 - **"cTARGETTYPE"** δες $\{hb\_targettype\} macro
 - **"lREBUILD"** \-rebuild κατάσταση επιλογής
 - **"lCLEAN"** \-clean κατάσταση επιλογής
 - **"lDEBUG"** \-debug κατάσταση επιλογής
 - **"lMAP"** \-map κατάσταση επιλογής
 - **"lSTRIP"** \-strip κατάσταση επιλογής
 - **"lDONTEXEC"** \-traceonly κατάσταση επιλογής
 - **"lIGNOREERROR"** \-ignore κατάσταση επιλογής
 - **"lTRACE"** \-trace κατάσταση επιλογής
 - **"lQUIET"** \-q κατάσταση επιλογής
 - **"lINFO"** \-info κατάσταση επιλογής
 - **"lBEEP"** \-beep κατάσταση επιλογής
 - **"lRUN"** \-run κατάσταση επιλογής
 - **"lINC"** \-inc κατάσταση επιλογής
 - **"cCCPATH"** δες HB\_CCPATH μεταβλητή περιβάλοντος
 - **"cCCPREFIX"** δες HB\_CCPREFIX μεταβλητή περιβάλοντος
 - **"cCCSUFFIX"** δες HB\_CCSUFFIX μεταβλητή περιβάλοντος
 - **"cCCEXT"** δες HB\_CCEXT μεταβλητή περιβάλοντος
 - **"cWorkDir"** \-workdir= τιμή
 - **"nExitCode"** Τρέχων κωδικός εξόδου
  
Shell API διαθέσιμο σε σενάρια Harbour:  


 - **hbshell\_gtSelect\( \[&lt;cGT&gt;\] \) \-&gt; NIL**  
Switch GT\. Default \[\*\]: 'gtwin'
 - **hbshell\_Clipper\(\) \-&gt; NIL**  
Enable Clipper compatibility \(non\-Unicode\) mode\.
 - **hbshell\_include\( &lt;cHeader&gt; \) \-&gt; &lt;lSuccess&gt;**  
Φόρτωση Harbour header\.
 - **hbshell\_uninclude\( &lt;cHeader&gt; \) \-&gt; &lt;lSuccess&gt;**  
Αποφόρτωση Harbour header\.
 - **hbshell\_include\_list\(\) \-&gt; NIL**  
Εμφάνιση λίστας των φορτωμένων Harbour header\.
 - **hbshell\_ext\_load\( &lt;cPackageName&gt; \) \-&gt; &lt;lSuccess&gt;**  
Φόρτωση πακέτου\. Παρόμοιο με τη ντιρεκτίβα \#request PP\.
 - **hbshell\_ext\_unload\( &lt;cPackageName&gt; \) \-&gt; &lt;lSuccess&gt;**  
Αποφόρτωση πακέτου
 - **hbshell\_ext\_get\_list\(\) \-&gt; &lt;aPackages&gt;**  
List of loaded packages\.
 - **hbshell\_DirBase\(\) \-&gt; &lt;cBaseDir&gt;**  
hb\_DirBase\(\) not mapped to script\.
 - **hbshell\_ProgName\(\) \-&gt; &lt;cPath&gt;**  
hb\_ProgName\(\) not mapped to script\.


Examples to start with hbmk2:


 - **Για εκτέλεση το διαλογικού κελύφους \('dot' prompt\)**  
$ hbmk2 \.
 - **Για να εκτελέσετε ένα σενάριο Harbour**  
$ hbmk2 myscript\.hb \[&lt;παραμετρος\[ι\]&gt;\]


Παραδείγματα δημιουργίας &amp; εκετέλεσης μεταφέρσιμου δυαδικού αρχείου Harbour \(γνωστό και ως προκατασκευασμένο σενάριο\):


 - **Για δημιουργία**  
$ hbmk2 \-gh myscript\.hb
 - **Για να εκτελέσετε το αποτέλεσμα των παραπάνω**  
$ hbmk2 myscript\.hrb \[&lt;παραμετρος\[ι\]&gt;\]


Παραδείγματα δημιουργίας μιας εφαρμογής Harbour:


 - **To build one simple \.prg**  
$ hbmk2 hello\.prg
 - **Για να δημιουργήσετε  μία εφαρμογή που περιλαμβάνει πολλαπλά \.prg αρχεία με αυξητικό ρυθμό \-incremetnal\-**  
$ hbmk2 mymain\.prg myfuncs\.prg \-inc
 - **Για να δημιουργήσετε μία εφαρμογή με χρήση ενός αρχείου Εργου**  
$ hbmk2 myapp\.hbp
 - **Για να δημιουργήσετε  μία εφαρμογή χρησιμοποιώντας σταδιακά\-αυξητική \-incremental\- μέθοδο**  
$ hbmk2 myapp\.hbp \-inc
 - **Για κατασκευή μιάς εφαρμογής που χρησιμοποιεί πακέτα contrib ή πακέτα 3rd party \(πρόσθετα\) που συμπεριλαμβάνουν ένα \.hbc αρχείο**  
$ hbmk2 myapp\.prg hbct\.hbc
 - **To build an application which uses a raw library**  
$ hbmk2 myapp\.prg \-lmylib \-L&lt;path\_to\_mylib&gt;
 - **To build an application which uses a Windows resource**  
$ hbmk2 mymain\.prg myres\.rc
 - **Για να δημιουργήσετε  μία εφαρμογή με αναφορές σε δυναμικές βιβλιοθήκες Harbour**  
$ hbmk2 \-shared myapp\.prg
 - **Για δημιουργία εφαρμογής από όλα τα \.prg και \.c αρχεία που υπάρχουν μεσα σε ένα 'πηγαίο' υποκατάλογο**  
$ hbmk2 \-omyapp src/\*\.prg src/\*\.c


Παραδείγματα δημιουργίας μιας στατικής βιβλιοθήκης:


 - **Για κατασκευή της βιβλιοθήκης 'mylib' από πηγαία αρχεία**  
$ hbmk2 \-hblib mylibsrc\.prg \-omylib
 - **Για κατασκευή της βιβλιοθήκης 'mylib' από πηγαίο κώδικα με επαυξητικό "incremental" τρόπο**  
$ hbmk2 \-hblib mylibsrc\.prg \-omylib \-inc
  
Κωδικοί εξόδου \("errorlevels"\):  


 - **0** κανένα λάθος
 - **1** άγνωστη πλατφόρμα
 - **2** άγνωστος μεταγλωττιστής
 - **3** αποτυχία ανίχνευσης Harbour
 - **5** αποτυχίας δημιουργίας stub
 - **6** αποτυχία στη μεταγλώττιση \(Harbour, C compiler, Resource compiler\)
 - **7** αποτυχία στη τελική συναρμολόγηση \(linker or library manager\)
 - **8** δεν υποστηρίζεται
 - **9** αποτυχία δημιουργίας καταλόγου εργασίας
 - **19** βοήθεια
 - **10** εξάρτηση απούσα ή απενεργοποιημένη
 - **20** αρχικοποίηση plugin
 - **30** πολύ βαθειά εμφώλευση
 - **50** ζητήθηκε σταμάτημα
 - **&lt;other&gt; ** όταν γίνει χρήση της επιλογής \-run, κωδικός εξόδου θα είναι αυτός που θα επιστραφεί από το δημιουργημένο εκτελέσιμο\.
  
Notes:  


  - &lt;script&gt; μπορεί να είναι:⏎ &lt;@script&gt; ή &lt;script\.hbm&gt;: επιλογές γραμμής εντολών σε αρχείο⏎ &lt;script\.hbp&gt;: επιλογές γραμμής εντολών σε αρχείο, σηματοδοτεί επίσης ενα νέο στόχο αν οριστεί στην γραμμή\-εντολών⏎ &lt;script\.hbc&gt;: αρχείο διαμόρφωσης πακέτου
  - Πηγαίο όνομα\-αρχείου χωρίς κατάληξη θα φορτώσει το \.hbp αρχείο, αν υπάρχει τέτοιο \.hbp αρχείο στον τρέχοντα κατάλογο\. Αν όχι, θα γίνει χρήση \.prg κατάληξης\.
  - Multiple \-l, \-L, \-i and &lt;script&gt; parameters are accepted\.
  - Regular Harbour compiler options are also accepted as is\.  
\(see them with \-harbourhelp option\)
  - hbmk\.hbc option file in hbmk2 directory is always processed if it exists\. On \*nix platforms ~/\.harbour, /etc/harbour, &lt;base&gt;/etc/harbour, &lt;base&gt;/etc are checked \(in that order\) before the hbmk2 directory\.
  - Το hbmk\.hbm σενάριο κατασκευής στον τρέχοντα κατάλογο δέχεται  πάντοτε επεξεργασία, αν υπάρχει\.
  - Η χρήση πλάγιας εμπρός κάθετης παύλας συνιστάται στις τιμές των επιλογών ως διαχωριστής μονοπατιού, αλλά η πίσω πλάγια κάθετη παύλα είναι εξίσου αποδεκτή\.
  - Φίλτρα επιτρέπονται σε κάθε γραμμή \.hbc καθώς και περισσότερες επιλογές\.⏎ Τα φίλτρα μπορούν να συνδυαστούν με χρήση τελεστών '&amp;' \(and\), '|' \(or\), να αναιρεθούν με τον τελεστή '\!' και να ομαδοποιηθούν με αγγύλες\. Π\.χ\.: \{win\}, \{gcc\}, \{linux|darwin\}, \{win&amp;\!pocc\}, \{\(win|linux\)&amp;\!watcom\}, \{unix&amp;mt&amp;gui\}, \-cflag=\{win\}\-DMYDEF, \-stop\{dos\}, \-stop\{\!allwin\}
  - Οι περισσότερες  \.hbc γραμμές \(libs=, hbcs=, prgflags=, cflags=, ldflags=, libpaths=, instfiles=, instpaths=, echo=\) και οι αντίστοιχες παράμετροι γραμμής\-εντολής  αποδέχονται μεταβλητές macro\. Η libpaths= επίσης αποδέχεται %\{hb\_name\} που μεταφράζεται στο όνομα του υπο διερεύνηση \.hbc αρχείου 
  - Επιλογές που δέχοντα μεταβλητές macro υποστηρίζουν επίσης υποκατάσταση εντολών\. Περικλείστε την εντολή μεσα σε \`\`, και, αν η εντολή περιέχει κενό διάστημα, περικλείστε τη επίσης σε διπλά εισαγωγικά\. Η standard έξοδος τη εντολής θα χρησιμοποιηθεί ως τιμή\. Π\.χ\. "\-cflag=\`wx\-config \-\-cflags\`", ή ldflags=\{unix&amp;gcc\}"\`wx\-config \-\-libs\`"\.
  - Οταν ορίζονται πολλαπλές επιλογές  για τον καθορισμό του τύπου του στόχου \(\-hblib, \-hbdyn, etc\.\),  θα προτιμηθεί η πρώτη απ'αυτές, οι υπόλοιπες θα αγνοηθούν σιωπηρά\.
  - Βιβλιοθήκες και object αρχεία δημιουργημένα με/για τον CA\-Cl\*pper δεν θα λειτουργήσουν με κανέναν υποστηριζόμενο μεταγλωττιστή/πλατφόρμα\.
  - Η υποστήρξη προεπιλογών και χαρακτηριστικών μπορεί να διαφέρει ανάλογα με την πλατφόρμα/μεταγλωττιστή\.
  - Δεν χρειάζεστε το GNU Make ή κάποιο άλλο make μεταγλωττιστή C και το MSYS \(σε Windows\)  για να εκτελέσετε το  hbmk2\.
  - \. \(τελεία\) περασμένη σαν πρώτη παράμετρος θα εκκινήσει το διαλογικό κέλυφος Harbour\.


  - \.hb, \.hrb ή \.dbf αρχείο δοσμένο ως πρώτη παραμέτρος θα εκτελεστεί σαν σενάριο Harbour\. Αν το όνομα\-αρχείου δεν περιέχει ορίσματα μονοπατιών, θα αναζητηθεί στο τρέχοντα κατάλογο εργασίας και στο  PATH\. Αν δεν δόθηκε κατάληξη, θα αναζητηθούν \.hb and \.hrb καταλήξεις, με αυτή τη σειρά\. Αρχείο \.dbf θα ανοιχτεί αυτόματα σε κατάσταση shared και θα ξεκινήσει το διαλογικό shell του Harbour\. Μη standard καταλήξεις θα ανιχνευτούν αυτομάτως για πηγαίους και προκατασεκυασμένους τυπους\. Σημειώστε, για σενάρια Harbour, η κωδικοσελίδα ορίζεται απο προεπιλογή σε  UTF\-8\. Το εξ'ορισμού βασικό αρχείο header 'hb\.ch'  συμπεριλαμβάνεται αυτόματα, δηλ\. \#included\. Προεπιλεγμένη μορφή ημερ/νίας είναι η πρότυπη κατα  ISO μορφή: εεεε\-μμ\-ηη\. Προεπιλεγμένο GT είναι το 'gtcgi', εκτός αν ανιχνευτούν CUI κλήσεις πλήρους οθόνης, οπότε επιλέγεται αυτομάτως 'gtwin' \[\*\] \(εκτός για τις INIT PROCEDUREs\)\.
  - Μπορεί να χρησιμοποιηθεί ο συνδυασμός πλήκτρων &lt;Alt\+V&gt; στο διαδραστικό shell του Harbour για επικόληση από το πρόχειρο\.
  - Τιμές με αστερίσκο \[\*\] μπορεί να εξαρτώνται από την πλατφόρμα υποδοχής ή/και τη διαμόρφωση\. Η παρούσα βοήθεια δημιουργήθηκε στην 'win' πλατφόρμα υποδοχής\.


Supported &lt;compiler&gt; values for each supported &lt;platform&gt; value:


 - **linux** gcc, clang, icc, watcom, sunpro, open64
 - **darwin** gcc, clang, icc
 - **win** mingw, msvc, clang, bcc, bcc64, watcom, icc, pocc, xcc, mingw64, msvc64, msvcia64, iccia64, pocc64
 - **wce** mingwarm, mingw, msvcarm, poccarm
 - **os2** gcc, gccomf, watcom
 - **dos** djgpp, watcom
 - **bsd** gcc, clang, pcc
 - **hpux** gcc
 - **beos** gcc
 - **qnx** gcc
 - **android** gcc, gccarm
 - **vxworks** gcc, diab
 - **symbian** gcc
 - **cygwin** gcc
 - **minix** clang, gcc
 - **aix** gcc
 - **sunos** gcc, sunpro
  
Αδεια:  


  This program is free software; you can redistribute it and/or modify  
it under the terms of the GNU General Public License as published by  
the Free Software Foundation; either version 2 of the License, or  
\(at your option\) any later version\.  
  
This program is distributed in the hope that it will be useful,  
but WITHOUT ANY WARRANTY; without even the implied warranty of  
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE\.  See the  
GNU General Public License for more details\.  
  
You should have received a copy of the GNU General Public License  
along with this program; if not, write to the Free Software  
Foundation, Inc\., 675 Mass Ave, Cambridge, MA 02139, USA \(or visit  
their web site at http://www\.gnu\.org/\)\.  
  
License extensions:  
  \- This source code must be kept and distributed as part  
    of the Harbour package and/or the placement of the tool sources  
    and files must reflect that it is part of Harbour Project\.  
  \- Copyright information must always be presented by  
    projects including this tool or help text\.  
  \- Modified versions of the tool must clearly state this  
    fact on the copyright screen\.  
  \- Source code modifications shall always be made available  
    along with binaries\.  
  \- Help text and documentation is licensed under  
    Creative Commons Attribution\-ShareAlike 3\.0:  
    http://creativecommons\.org/licenses/by\-sa/3\.0/  

  
Συγγραφέας:  


 - Viktor Szakáts \(harbour syenar\.net\) 