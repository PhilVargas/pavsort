pavsort
=======

##Description
Sorting module capable of large scale arrays on strings, numbers or a combination of either. 

##Usage
1) ```require 'pavsort'``` is listed in your file

2) ```Pavsort::Method.sort(array)``` where method is the type of sort you wish to apply, and array is your unsorted dataset. Currently, the two methods implemented are Quick and Merge sort.

3) That's it! Pavsort applies high speed sorting methods that are numerically and case agnostic. If your dataset contains numbers and strings, the numbers will be sorted at the beginning of the dataset followed by the sorted strings. 
For example: ```Pavsort::Quick.sort(['a', 4, 1, 'X', z])``` will be sorted into ```[1, 4, 'a', 'X', 'z']```

##Contribute
Feel free to contribute! I would love to continue expanding the gem to include more features, more sorts and general refactors. 

Please be sure to fork the repo, add your changes and tests, and submit a pull request.