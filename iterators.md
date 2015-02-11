##Descriptions of Iterators

###Instructions
Below you will find a list of methods. In the space provided below each, please provide a brief description of what this method does based upon your review of the Docs. 

###Array methods:
May be helpful to look in [http://ruby-doc.org/core-2.2.0/Enumerable.html](Enumerables) as well...

####select:
	select{ |obj|block } returns an array.
	Given an enumerable (array, lists or array like object) select tests each element(s) of that enumerable against a provided test and if that test on the current element returns true, that element is put into a new array and returned once all elements have been tested. If no test is passed, a "copy" of the enumerable is returned.

####reject:
	reject{ |obj|block } returns an array.
	Given an enumerable (array, lists or array like object) reject tests each element(s) of that enumerable against a provided test and if that test on the current element returns false, that element is put into a new array and returned once all elements have been tested. If no test is passed, a "copy" of the enumerable is returned.

####map:
	map{ |obj|block } returns an array.
	Given an enumerable (array, lists or array like object) map applies the given block once for each element of that enumerable. The result is put into a new array and returned once all elements have been run against the block. If no block is passed, a "copy" of the enumerable is returned.

####detect:
	detect(ifnone = nil) { |obj| block } → obj or nil    OR    detect(ifnone = nil) → an_enumerator
	Given an enumerable (array, lists or array like object) detect applies the given block once for each element of that enumberable. Returns the first element for which block is not false. If no object matches, calls ifnone and returns its result when it is specified, or returns nil otherwise.
	If no block is given, an enumerator is returned instead.

####inject:
	inject(initial, sym) → obj
	inject(sym) → obj
	inject(initial) { |memo, obj| block } → obj
	inject { |memo, obj| block } → obj
	Combines all elements of enumerable by applying a binary operation, specified by a block or a symbol that names a method or operator.
	If you specify a block, then for each element in enumerable the block is passed an accumulator value (memo) and the element. If you specify a symbol instead, then each element in the collection will be passed to the named method of memo. In either case, the result becomes the new value for memo. At the end of the iteration, the final value of memo is the return value for the method.
	If you do not explicitly specify an initial value for memo, then the first element of collection is used as the initial value of memo.

####partition:
	partition { |obj| block } → [ true_array, false_array ]     OR    	partition → an_enumerator
	Returns two arrays, the first containing the elements of enumerable for which the block evaluates to true, the second containing the rest.
	If no block is given, an enumerator is returned instead.

####sort:
	sort → array     OR     sort { |a, b| block } → array
	Returns an array containing the items in enumerable sorted, either according to their own <=> method, or by using the results of the supplied block. The block should return -1, 0, or +1 depending on the comparison between a and b. As of Ruby 1.8, the method Enumerable#sort_by implements a built-in Schwartzian Transform, useful when key computation or comparison is expensive.

####one?:
	one? [{ |obj| block }] → true or false
	Passes each element of the collection to the given block. The method returns true if the block returns true exactly once. If the block is not given, one? will return true only if exactly one of the collection members is true.

####none?:
	none? [{ |obj| block }] → true or false
	Passes each element of the collection to the given block. The method returns true if the block never returns true for all elements. If the block is not given, none? will return true only if none of the collection members is true.

####all?:
	all? [{ |obj| block } ] → true or false
	Passes each element of the collection to the given block. The method returns true if the block never returns false or nil. If the block is not given, Ruby adds an implicit block of { |obj| obj } which will cause all? to return true when none of the collection members are false or nil.

####empty?:
	empty? → true or false
	Returns true if hash contains no key-value pairs.

####eql?:
	eql?(other) → true or false
	Returns true if hash and other are both hashes with the same content.

####include?:
	include?(key) → true or false
	Returns true if the given key is present in hash.

####nil?:
	nil? → true
	Only the object nil responds true to nil?.

###Hash methods: ...are the following:
	::[]
	::new
	::try_convert
	#==
	#[]
	#[]=
	#any?
	#assoc
	#clear
	#compare_by_identity
	#compare_by_identity?
	#default
	#default=
	#default_proc
	#default_proc=
	#delete
	#delete_if
	#each
	#each_key
	#each_pair
	#each_value
	#empty?
	#eql?
	#fetch
	#flatten
	#has_key?
	#has_value?
	#hash
	#include?
	#inspect
	#invert
	#keep_if
	#key
	#key?
	#keys
	#length
	#member?
	#merge
	#merge!
	#rassoc
	#rehash
	#reject
	#reject!
	#replace
	#select
	#select!
	#shift
	#size
	#store
	#to_a
	#to_h
	#to_hash
	#to_s
	#update
	#value?
	#values
	#values_at


####key?:  simular to has_key?
	key?(key) returns true or false
	If the passed key is a key within the hash, key? will return true otherwise, it will return false.
	{{{hash}}}.key?("some_key")

####keys:
	keys → array
	Returns a new array populated with the keys from this hash. See also Hash#values.

####delete:
	delete(key) → value     OR     delete(key) {| key | block } → value
	Deletes the key-value pair and returns the value from the hash where the passed key is equal to hash key. If the key is not found, the method returns the default value which is allowed to contain the key.

####delete_if:
	delete_if {| key, value | block } → hash     OR     delete_if → an_enumerator
	Deletes every key-value pair from the hash where the block evaluates to true.
	If no block is given, an enumerator is returned instead.