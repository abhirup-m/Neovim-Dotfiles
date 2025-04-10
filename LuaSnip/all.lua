local in_mathzone = function()
  -- The `in_mathzone` function requires the VimTeX plugin
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
-- \frac
s({trig="ff", dscr="Expands 'ff' into '\frac{}{}'", snippetType="autosnippet"},
  fmt(
    "\\frac{<>}{<>}",
    {
      i(1),
      i(2)
    },
    {delimiters = "<>"} -- manually specifying angle bracket delimiters
  )
),
-- General Environment
s({trig="beg", dscr="Expands 'beg' into an environment", snippetType="autosnippet"},
  fmta(
     [[
		\begin{<>}
		<>
		\end{<>}
		<>
     ]],
     { i(1), i(2), rep(1), i(3)}
  )
),
-- Equation
s({trig="beq", dscr="Expands 'beq' into an equation environment", snippetType="autosnippet"},
  fmta(
     [[
		\begin{equation}\begin{aligned}
		<>
		\end{aligned}\end{equation}
		<>
     ]],
     { i(1), i(2) }
  )
),
-- inline math
s({trig=";;", dscr="Expands ';;' into inline math mode", snippetType="autosnippet"},
  fmta(
     "\\(<>\\)",
     { i(1) }
  )
),
-- Table
s({trig="\tab", dscr="Expands 'tab' into an table", snippetType="autosnippet"},
  fmta(
     [[
		\begin{table}[<>]
			\centering
			\caption{<>}
			\label{<>}
			\begin{tabular}{<>}
			<>
			\end{tabular}
		\end{table}
		<>
     ]],
	 { i(1, "!htpb"), i(2), i(3), i(4), i(5), i(6)}
  )
),
-- Figure
s({trig="\\fig", snippetType="autosnippet"},
  fmta(
     [[
		\begin{figure}[<>]
			\centering
			\includegraphics[width=0.8\textwidth]{<>}
			\caption{<>}
			\label{<>}
		\end{figure}
		<>
     ]],
	 { i(1, "!htpb"), i(2), i(3), i(4), i(5)}
  )
),
-- Itemise
s({trig="itm", snippetType="autosnippet"},
  fmta(
     [[
		\begin{itemize}
			\item <>
		\end{itemize}
		<>
     ]],
	 { i(1), i(2) }
  )
),
-- p matrix
s({trig="pmt", snippetType="autosnippet"},
  fmta(
     [[
		\begin{pmatrix} 
		<> 
		\end{pmatrix}
		<>
     ]],
	 { i(1), i(2) }
  )
),
-- b matrix
s({trig="bmt", snippetType="autosnippet"},
  fmta(
     [[
		\begin{bmatrix} 
		<> 
		\end{bmatrix}
		<>
     ]],
	 { i(1), i(2) }
  )
),
-- closed () brackets
s({trig="()", snippetType="autosnippet", condition=in_mathzone},
  fmta(
     [[
	 \left(<>\right)<>
     ]],
	 { i(1), i(2)}
  )
),
-- closed {} brackets
s({trig="{}", snippetType="autosnippet", condition=in_mathzone},
  fmta(
     [[
	 \left\{<>\right\}<>
     ]],
	 { i(1), i(2)}
  )
),
-- closed [] brackets
s({trig="[]", snippetType="autosnippet", condition=in_mathzone},
  fmta(
     [[
	 \left[<>\right]<>
     ]],
	 { i(1), i(2)}
  )
),
-- <>
s({trig="<>", snippetType="autosnippet", condition=in_mathzone},
  fmta(
     [[
	 \langle <> \rangle <>
     ]],
	 { i(1), i(2)}
  )
),
-- square root
s({trig="sq", snippetType="autosnippet", condition=in_mathzone},
  fmta(
     [[
	 \sqrt{<>}<>
     ]],
	 { i(1), i(2)}
  )
),
-- mathcal
s({trig="mc", snippetType="autosnippet", condition=in_mathzone},
  fmta(
     [[
	 \mathcal{<>}<>
     ]],
	 { i(1), i(2)}
  )
),
-- up arrow
s({trig="ua", snippetType="autosnippet", condition=in_mathzone},
  fmta(
     [[
	 \uparrow
     ]],
	 {}
  )
),
-- down arrow
s({trig="da", snippetType="autosnippet", condition=in_mathzone},
  fmta(
     [[
	 \downarrow
     ]],
	 {}
  )
),
}
