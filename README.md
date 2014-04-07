pavsort
=======

##Description
Sorting module used to sort large scale arrays on strings, numbers or a combination of either. 

##Usage
1) ```require 'pavsort'``` is listed in your file
2) ```Pavsort::Method.sort(array)``` where method is the type of sort you wish to apply, and array is your unsorted dataset. Currently, the two methods implemented are Quick and Merge sort.
3) That's it! Pavsort applies high speed sorting methods that are numerically and case agnostic. If your dataset contains numbers and strings, the numbers will be sorted at the beginning of the dataset followed by the sorted strings. For example: ```['a', 4, 1, 'X', z]``` will be sorted into [1, 4, 'a', 'X', 'z']

