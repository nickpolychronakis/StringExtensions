# StringExtensions

Εδώ θα προσθέτω όλα τα method που συνήθως χρειάζομαι για τα string.

## isNumberOnly: Το String είναι αριθμός

Ελέγχει αν το String περιέχει μόνο αριθμό.

Για παράδειγμα:

``` swift
"123".isNumberOnly
// Επιστρέφει true

"123a".isNumberOnly
// Επιστρέφει false
```

## prefixInteger: Το String ξεκινάει απο αριθμό (και τον επιστρέφει)

Επιστρέφει τον αριθμό που ξεκινάει το String. Αν δεν ξεκινάει με αριθμό επιστρέφει τον μέγιστο Int.
 
Το χρησιμοποιώ κυρίως για sort επειδή η προεπιλογή του sort στα string είναι να τα βάζει σε σειρά βάση του πρώτου χαρακτήρα επομένως δημιουργείται το φαινόμενο οι αριθμοί να μπαίνουν σε μία σειρά τέτοια:  
[1,11,2,3,32,4] 

Για παράδειγμα:

``` swift
"123 Hello, world!".prefixInteger()
// Επιστρέφει τον αριθμό 123
```

## firstLine: Επιστροφή της πρώτης σειράς του κειμένου

Σε περίπτωση που ένα String έχει περισσότερες απο μία σειρά, επιστρέφει μόνο την πρώτη.

Για παράδειγμα:
``` swift
"Hello\nWorld!".firstLine()
// Επιστρέφει Hello
```
