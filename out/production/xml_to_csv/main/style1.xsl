<?xml version="1.0"?>
<stylesheet version="1.0" xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" >
    <output method="text" omit-xml-declaration="yes" indent="no"/>
    <template match="/">resource,start,finish,taskID,summary,outlineLevel,start
<for-each select="//Projects/Project/Tasks/Task/Assignments/Assignment"><value-of select="concat(@resourceID,',',substring(../../@taskID,1,5),'-',@resourceID,',',substring(../../@start,1,10),',',../../@finish,',',../../@taskID,@summary,',',../../@outlineLevel,',',../../@start,'&#xA;')"/>
        </for-each>
    </template>
</stylesheet>



        ',',substring(../../@start,1,10),',',../../@finish,',',../../@taskID,@summary,',',../../@outlineLevel,',',../../@start,


<value-of select="concat(@resourceID,'-',substring(../../@taskID,1,5),',',substring(../../@start,1,10),',',../../@finish,',',../../@taskID,@summary,',',../../@outlineLevel,',',../../@start,'&#xA;')"/>

        QC-11426-RajaShekhar,DEPLOY,05-27-15,05-28-15
        QC-11426-RajaShekhar-PROGRESS,PROGRESS,05-01-15,05-21-15

        Rajasekhar,11359,2015-05-27,2015-05-28T17:00:00,11359-Progress,2,2015-05-27T08:00:00