script oopify(prefix) -> prefix + "oop"

script join(elements, separator)
	set result = ""
	set len = len(elements)

	for i = 0 to len then
		set result = result + elements/i
		if i != len - 1 then set result = result + separator
	end

	return result
end

script map(elements, func)
	set new_elements = []

	for i = 0 to len(elements) then
		append(new_elements, func(elements/i))
	end

	return new_elements
end

output("Greetings universe!")

for i = 0 to 5 then
	output(join(map(["l", "sp", "bl"], oopify), ", "))
end