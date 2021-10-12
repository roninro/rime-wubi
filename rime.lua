function date_translator(input, seg)
  if (input == "date") then
      --- Candidate(type, start, end, text, comment)
      yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日"), ""))
      yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d"), ""))
  end
  if (input == "time") then
      --- Candidate(type, start, end, text, comment)
      yield(Candidate("time", seg.start, seg._end, os.date("%H:%M:%S"), ""))
  end

end
