require "../src/optimist"

include Optimist
opts = Optimist.options do
  # "short:" can now take more than one short-option character
  #   you can specify "short:" as a string/symbol or an array of strings/symbols
  # "alt:" adds additional long-opt choices (over the original name or the long: name)
  #   you can specify "alt:" as a string/symbol or an array of strings/symbols.
  # 
  opt :concat, "concatenate flag", short: ["-C", "A"], alt: ["cat", "--append"]
  opt :array_len, "set Array length", long: "size", alt: "length", cls: Int32Opt
end

opts.each { |k,v| p [k, v.value, v.given?] }


