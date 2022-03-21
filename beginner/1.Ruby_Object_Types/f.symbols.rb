# symbols are strings that cannot be edited, they begin with a colon & not delimited by quotes
# all lowercase with underscores and no spaces
# these are just labels
# since symbols are not editable its better for ruby to do the memory management well.

# :first_name.object_id will remain the same.
# same place in memory, doesn't garbage collect often hence it is memory efficient.

person={:first_name=>'sai',:last_name=>'marlakunta'}

# shorthand for symbols that are used in hashes
scores={low:2,medium:3,high:8}

# just check it. if you use shorthand the key is always a symbol.
scores.keys.first.class