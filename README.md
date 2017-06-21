如何让xcode拥有自动注释并生成文档的功能：

     开发第一件事，应该就是文档了。好的文档能让开放更清晰，明确的去把握整个项目的方向，脉络。闲话少说，说下具体实现操作吧。
     
     步骤：
     1，在XCode里点击TARGETS,然后点添加 + 给项目添加一个TARGET；
     2，弹出框中选择Cross-platform - Other ，选中Aggregate，点击next，命名，例如项目中我的命名ShowDoc，点击finish完成；
     3，TARGET出现选项ShowDoc，点击，选择最上方Build Phases，选 + Add Run Script；
     4，Run Script添加完后，拷贝以下代码到代码对话框里：
     
     # shell script goes here

     mkdir -p headerDoc

     find /Users/shiye/Documents/GitHub/Document_Show/TestView -name \*.h -print | xargs headerdoc2html -o headerDoc

     gatherheaderdoc headerDoc

     exit 0
     
     5，注意这里/Users/shiye/Documents/GitHub/Document_Show/TestView，这个位置以你自己文件所放位置而变化，注意修改成自己项目文件的路径。headerDoc为所生
     成的文档标题，可自定义；
     6，基本设置完成，运行。 在XCode左上角的Scheme里选定刚才生成的Target：ShowDoc,然后点Run。运行以后，在你的项目文件夹里，就会生成一个文档文件夹headerDoc
     了。这些自动生成的文档都是根据你在源代码里写的注释生成的。

