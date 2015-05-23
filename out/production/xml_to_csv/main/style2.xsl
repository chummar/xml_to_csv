<?xml version="1.0"?>
<stylesheet version="1.0" xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" >
    <variable name="quotes">'</variable>
    <output method="text" omit-xml-declaration="yes" indent="no"/>
    <template match="/">resource,task,start,finish
<for-each select="//Projects/Project/Tasks/Task/Assignments/Assignment"><value-of select="concat(concat($quotes,substring(../../@taskID,1,5),'-',@resourceID,$quotes),',',../../@name,',',substring(../../@start,1,10),',',substring(../../@finish,1,10),'&#xA;')"/>
        </for-each>
    </template>
</stylesheet>


