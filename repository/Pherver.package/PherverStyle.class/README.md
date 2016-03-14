Abstract class to hold the style of a Pherver.

#mustacheString returned must be able to process a dictionary like:
{
	'links' -> { 
		{ 'name' -> 'file' . 'link' -> '/file' } asDictionary .
		{ 'name' -> 'file2' . 'link' -> '/file2' } asDictionary } 
} asDictionary