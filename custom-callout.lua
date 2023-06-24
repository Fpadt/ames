local h2 = pandoc.Header(2, "chatGTP answer")

function Div(el)
  if quarto.doc.isFormat("html") then
    if el.classes:includes('custom-callout-chatGPT') then
      local content = el.content
      table.insert(content, 1, h2)
      return pandoc.Div(
        content,
        {class="callout-chatGPT", collapse='true'}
      )
    end
  end
end 