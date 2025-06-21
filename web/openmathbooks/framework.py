import os
import re

def find_html_files(directory):
    html_files = []
    for dirpath, _, filenames in os.walk(directory):
        for filename in filenames:
            if filename.endswith(".html"):
                html_files.append(os.path.join(dirpath, filename))
    return html_files

if __name__ == '__main__':
    directory_path = "/home/sindre/web/openmathbooks"
    html_files = find_html_files(directory_path)
    for file_path in html_files:
        break
        #print(file_path)
 
f = open("/home/sindre/web/openmathbooks/exams/exams.html", "r")
content = f.read()

menu = """<div id="topnav">
  <a href="#home" class="active">Home</a>
  <a href="#news">News</a>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>
  <button class="icon" onclick="myFunction()">
    Meny
  </button>
</div>"""
substitution = ['<div class="topnav" id="myTopnav">(.*?)</div>', menu]
text_handler = re.compile(substitution[0], re.DOTALL)
content = text_handler.sub(substitution[1], content)

styles = """<head id="general">
    <link rel="stylesheet" href="./styles.css">
</head>"""

substitution = ['<head id="general">(.*?)</head>', styles]
text_handler = re.compile(substitution[0], re.DOTALL)
content = text_handler.sub(substitution[1], content)

f.close()
f = open("/home/sindre/web/openmathbooks/exams/exams.html", "w")
f.write(content)




f.close()




f = open("/home/sindre/web/openmathbooks/exams/exams.html", "r")
content = f.read()
print(content)
f.close()
