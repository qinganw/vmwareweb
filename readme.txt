When you import smfr project in your Eclipse, please confirm that your JDK version is higher than 1.6 and installed Maven plugins.

(1)Please confirm Eclipse has been install Maven Plugins.If not, please intall it. 
You can install it follow the below steps(If already installed, please skip this):
1.先安装subeclipse插件就是svn
svn - http://subclipse.tigris.org/update_1.6.x

安装过程中可能会出异常，请不用管它，subclipse官方说这异常时插件没被eclipse标注，对安装使用没啥影响，继续就好。
安装完后重启eclipse点右上角圈中按钮，出现svn资源库研究项
表示eclipse的svn插件已经按装完成。

2.再安装maven插件
m2e - http://m2eclipse.sonatype.org/sites/m2e

启动Eclipse之后，在菜单栏中选择Help，然后选择Install New Software…，接着你会看到一个Install对话框，

点击Work with:字段边上的Add按钮，你会得到一个新的Add Repository对话框，在Name字段中输入m2e，Location字段中输入http://m2eclipse.sonatype.org/sites/m2e，然后点击OK。

Eclipse会下载m2eclipse安装站点上的资源信息。等待资源载入完成之后，我们再将其全部展开，

选择后点击Next >，Eclipse会自动计算模块间依赖，然后给出一个将被安装的模块列表，确认无误后，继续点击Next >，这时我们会看到许可证信息，m2eclipse使用的开源许可证是Eclipse Public License v1.0，选择I accept the terms of the license agreements，然后点击Finish，接着就耐心等待Eclipse下载安装这些模块

3最后安装maven插件的扩展插件包

m2e-extras - http://m2eclipse.sonatype.org/sites/m2e-extras

都选上,其中maven scm handler for subclipse 就是让maven支持svn,前提你先装subeclipse插件,其他插件建议都装上.

安装过程中也可能出现类似安装subeclipse时的异常,不用理会,继续就好.安装完后重启.

新建项目选other,找到maven项
点击Checkout Maven Projects from SCM

出现svn选项表示插件安装成功了.

(2)Import project to Eclipse
clike Menu "File" -> Import -> Select Maven "Existing Maven Projects"
->Next->Choosing the Directory where you check out the smfr code->Next->Finished.

(3)If the project has some java code error, please confirm that your JDK version is higher than 1.6.
If you JDK version is lower than 1.6, please install JDK.
When you installed higher version JDK, please do following steps.
1.right click smfr -> Properties -> Java Build Path -> Libraries 
->select "JRE System Library"->Click "edit"->choose JDK 1.6
->Finishe->OK

2.right click smfr -> Properties -> Project Facets ->
change "Java version" to 1.6 in "Project Facet" -> Apply->OK

If you have any questions or any suggest, please feel free to contact Qingan(Intranet id:wangqa@cn.icm.com Notes id:Qing An QA Wang/China/Contr/IBM).
