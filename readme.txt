When you import smfr project in your Eclipse, please confirm that your JDK version is higher than 1.6 and installed Maven plugins.

(1)Please confirm Eclipse has been install Maven Plugins.If not, please intall it. 
You can install it follow the below steps(If already installed, please skip this):
1.�Ȱ�װsubeclipse�������svn
svn - http://subclipse.tigris.org/update_1.6.x

��װ�����п��ܻ���쳣���벻�ù�����subclipse�ٷ�˵���쳣ʱ���û��eclipse��ע���԰�װʹ��ûɶӰ�죬�����ͺá�
��װ�������eclipse�����Ͻ�Ȧ�а�ť������svn��Դ���о���
��ʾeclipse��svn����Ѿ���װ��ɡ�

2.�ٰ�װmaven���
m2e - http://m2eclipse.sonatype.org/sites/m2e

����Eclipse֮���ڲ˵�����ѡ��Help��Ȼ��ѡ��Install New Software����������ῴ��һ��Install�Ի���

���Work with:�ֶα��ϵ�Add��ť�����õ�һ���µ�Add Repository�Ի�����Name�ֶ�������m2e��Location�ֶ�������http://m2eclipse.sonatype.org/sites/m2e��Ȼ����OK��

Eclipse������m2eclipse��װվ���ϵ���Դ��Ϣ���ȴ���Դ�������֮�������ٽ���ȫ��չ����

ѡ�����Next >��Eclipse���Զ�����ģ���������Ȼ�����һ��������װ��ģ���б�ȷ������󣬼������Next >����ʱ���ǻῴ�����֤��Ϣ��m2eclipseʹ�õĿ�Դ���֤��Eclipse Public License v1.0��ѡ��I accept the terms of the license agreements��Ȼ����Finish�����ž����ĵȴ�Eclipse���ذ�װ��Щģ��

3���װmaven�������չ�����

m2e-extras - http://m2eclipse.sonatype.org/sites/m2e-extras

��ѡ��,����maven scm handler for subclipse ������maven֧��svn,ǰ������װsubeclipse���,����������鶼װ��.

��װ������Ҳ���ܳ������ư�װsubeclipseʱ���쳣,�������,�����ͺ�.��װ�������.

�½���Ŀѡother,�ҵ�maven��
���Checkout Maven Projects from SCM

����svnѡ���ʾ�����װ�ɹ���.

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
