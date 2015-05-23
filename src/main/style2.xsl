<?xml version="1.0"?>
<stylesheet version="1.0" xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" >
    <output method="text" omit-xml-declaration="yes" indent="no"/>
    <template match="/">resource,start,finish,taskID,summary,outlineLevel,start
<for-each select="//Projects/Project/Tasks/Task/Assignments/Assignment"><value-of select="concat(@resourceID,',',substring(../../@taskID,1,5),',',substring(../../@start,1,10),',',../../@finish,',',../../@taskID,@summary,',',../../@outlineLevel,',',../../@start,'&#xA;')"/>
        </for-each>
    </template>
</stylesheet>



<value-of select="concat(@resourceID,'-',substring(../../@taskID,1,5),',',substring(../../@start,1,10),',',../../@finish,',',../../@taskID,@summary,',',../../@outlineLevel,',',../../@start,'&#xA;')"/>