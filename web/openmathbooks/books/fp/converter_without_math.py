import re
from indx import *

f = open("/home/sindre/openmathbooks/MB/tel/tel_bm.tex", "r")
alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
substitutes = [
    ['\\\\label{ ( [^}]* ) }', ''],
    ['\\\\section{ ( [^}]* ) }', r'<h2 class="section-title">\1</h2>'],
    ['\\\\subsection[*]{ ( [^}]* ) }', r'<h3 class="subsection-title">\1</h3>'],
    ['\\\\subsubsection[*]{ ( [^}]* ) }', r'<h4 class="subsubsection-title">\1</h4>'],
    ['\\\\index{ ( [^}]* ) }', ''],
    ['\\\\hrs{ ( [^}]* ) }{seksjon}', '<span class="reference-section" index-reference=""> </span>'],
    ['\\\\refkap{ ( [^}]* ) }', '<span class="reference-chapter" index-reference=""> </span>'],
    ['\\\\hrs{ ( [^}]* ) }{regel}', '<span class="reference-rule" index-reference=""> </span>'],
    ['\\\\hrs{ ( [^}]* ) }{kapittel}', '<span class="reference-chapter" index-reference=""> </span>'],
    ['\\\\rref{ ( [^}]* ) }', 'regel ??'],
    ['\\\\outl{ ( [^}]* ) }', r'<span class="outline">\1</span>'],
    ['\\\\textit{ ( [^}]* ) }', r'<i>\1</i>'],
    ['\\\\textsl{ ( [^}]* ) }', r'<i>\1 </i>'],
    ['\\\\text{ ( [^}]* ) }', r'<mtext>\1</mtext>'],
    ['\\\\sym{ ( [^}]* ) }', r'<span class="symbol"> \1</span>'],
    ['\\\\fig{ ( [^}]* ) }', r'<div class="figure"> <img src="./fig/\1.svg"> </div>'],
    ['\\\\begin{itemize} ( [^}]* ) \\\\end{itemize}', r'<ul>\1</ul>'],
    ['\\\\begin{tabular} ( [^}]* ) \\\\end{tabular}', r'<table>\1</table>'],
    ['\\\\begin{comment} ( [^}]* ) \\\\end{comment}', r''],
    ['\\\\spr{ ( [^}]* ) }', r'<div class="language-box">\1</div>'],
    ['\\\\st{ ( [^}]* ) }', r'<div class="statement">\1</div>'],
    ['\\\\reg\\[([^\\[]*)\\]{( [^}]* ) }', r'<div class="rule"><h4>\1</h4> \2</div>'],
    ['\\\\regdef\\[([^\\[]*)\\]{( [^}]* ) }', r'<div class="definition">\2</div>'],
    ['\\\\info{([^}]*)}{( [^}]* ) }', r'<div class="info"> <h4>\1</h4> \2</div>'],
    ['\\\\eks\\[\\]{ ( [^}]* ) }', r'<div class="example">\1</div>'],
    ['\\\\eks{ ( [^}]* ) }', r'<div class="example">\1</div>'],
    ['\\\\eks\\[1\\]{ ( [^}]* ) }', r'<div class="example">\1</div>'],
    ['\\\\eks\\[2\\]{ ( [^}]* ) }', r'<div class="example">\1</div>'],
    ['\\\\eks\\[3\\]{ ( [^}]* ) }', r'<div class="example">\1</div>'],
    ['\\\\eks\\[4\\]{ ( [^}]* ) }', r'<div class="example">\1</div>'],
    ['\\\\eks\\[5\\]{ ( [^}]* ) }', r'<div class="example">\1</div>'],
    ['\\\\eks\\[6\\]{ ( [^}]* ) }', r'<div class="example">\1</div>'],
    ['\\\\eks\\[7\\]{ ( [^}]* ) }', r'<div class="example">\1</div>'],

]

content = f.read()

text_handler = re.compile(r'\\begin\{comment\}(.*?)\\end\{comment\}', re.VERBOSE)
content = text_handler.sub( r'', content)


content = content.replace("\\input{../../doc}", "")
content = content.replace("\\input{../../preamb}", "")
content = content.replace("\\input{../bm}", "")
content = content.replace("\\begin{document}", "")
content = content.replace("\\end{document}", "")
content = content.replace("\\\\", "")
content = content.replace("\\vsk", "")
content = content.replace("\\vsb", "")
content = content.replace("\\vs", "")
content = content.replace("\\sv", '<p class="answer-title"></p>')
content = content.replace("\\regv", "")
content = content.replace("\\newpage", "")

text_handler = re.compile(r"%id\{([^}]+)\}\s*(.*?)\s*%\\id", re.DOTALL)
content = text_handler.sub( r'<id>\1</id>', content)

for substitution in substitutes:
    text_handler = re.compile(substitution[0], re.VERBOSE)
    content = text_handler.sub(substitution[1], content)


text_handler = re.compile('\\\\item\\s+(.*?)(?=\\\\item|</ul>)', re.DOTALL)
content = text_handler.sub(r'<li>\1</li>', content)

matches = re.findall(r'<id>(.*?)</id>', content)

for id in matches:
    if id in index:
        if "math" in index[id]:
            if "display" in index[id]:
                if not index[id]["display"]:
                    content = content.replace(r'<id>%s</id>' % id , r'<math class="inline-math">%s</math>' % index[id]["math"])
                else:
                    content = content.replace(r'<id>%s</id>' % id , r'<math class="display-math" display="block">%s</math>' % index[id]["math"])
        if "footnote" in index[id]:
            content = content.replace(r'<id>%s</id>' % id , r'<button class="footnote-button" data-reference="%s">*</button><div class="footnote" id="%s" hidden>%s</div>' % (id, id, index[id]["footnote"]))
    else:
        print("! Missing id:", id)

outfile = open("converted_html.txt", "w")
outfile.write(content)
outfile.close
