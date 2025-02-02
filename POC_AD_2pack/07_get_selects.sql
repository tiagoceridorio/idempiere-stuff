SELECT   table_name,
            'SELECT '
         || Getcolumns (table_name)
         || ' FROM '
         || table_name
         || ' WHERE AD_Client_ID = 0 '
         || Getkeycolumnsand (table_name)
         || ' ORDER BY '
         || Getkeycolumns (table_name) QUERY,
         (SELECT ad_table_id
            FROM AD_TABLE
           WHERE UPPER (tablename) = table_name) ad_table_id
    FROM user_tables
   WHERE table_name IN
            ('AD_ALERT',
             'AD_ALERTPROCESSOR',
             'AD_ALERTRECIPIENT',
             'AD_ALERTRULE',
             'AD_CLIENT',
             'AD_CLIENTINFO',
             'AD_COLUMN',
             'AD_COLUMN_TRL',
             'AD_DESKTOP',
             'AD_DESKTOP_TRL',
             'AD_DESKTOPWORKBENCH',
             'AD_ELEMENT',
             'AD_ELEMENT_TRL',
             'AD_ENTITYTYPE',
             'AD_FIELD',
             'AD_FIELDGROUP',
             'AD_FIELDGROUP_TRL',
             'AD_FIELD_TRL',
             'AD_FORM',
             'AD_FORM_ACCESS',
             'AD_FORM_TRL',
             'AD_IMAGE',
             'AD_IMPFORMAT',
             'AD_IMPFORMAT_ROW',
             'AD_LANGUAGE',
             'AD_LDAPPROCESSOR',
             'AD_MENU',
             'AD_MENU_TRL',
             'AD_MESSAGE',
             'AD_MESSAGE_TRL',
             'AD_ORG',
             'AD_ORGINFO',
             'AD_PACKAGE_EXP',
             'AD_PACKAGE_EXP_DETAIL',
             'AD_PREFERENCE',
             'AD_PRINTCOLOR',
             'AD_PRINTFONT',
             'AD_PRINTFORM',
             'AD_PRINTFORMAT',
             'AD_PRINTFORMATITEM',
             'AD_PRINTFORMATITEM_TRL',
             'AD_PRINTPAPER',
             'AD_PRINTTABLEFORMAT',
             'AD_PROCESS',
             'AD_PROCESS_ACCESS',
             'AD_PROCESS_PARA',
             'AD_PROCESS_PARA_TRL',
             'AD_PROCESS_TRL',
             'AD_REFERENCE',
             'AD_REFERENCE_TRL',
             'AD_REF_LIST',
             'AD_REF_LIST_TRL',
             'AD_REF_TABLE',
             'AD_REPLICATIONSTRATEGY',
             'AD_REPLICATIONTABLE',
             'AD_REPORTVIEW',
             'AD_ROLE',
             'AD_ROLE_ORGACCESS',
             'AD_SCHEDULER',
             'AD_SCHEDULER_PARA',
             'AD_SEQUENCE',
             'AD_SESSION',
             'AD_SYSTEM',
             'AD_TAB',
             'AD_TABLE',
             'AD_TABLE_TRL',
             'AD_TAB_TRL',
             'AD_TASK',
             'AD_TASK_ACCESS',
             'AD_TASK_TRL',
             'AD_TREE',
             'AD_TREEBAR',
             'AD_TREENODE',
             'AD_TREENODEMM',
             'AD_USER',
             'AD_USER_ROLES',
             'AD_VAL_RULE',
             'AD_WF_NODE',
             'AD_WF_NODENEXT',
             'AD_WF_NODE_TRL',
             'AD_WF_RESPONSIBLE',
             'AD_WINDOW',
             'AD_WINDOW_ACCESS',
             'AD_WINDOW_TRL',
             'AD_WORKBENCH',
             'AD_WORKBENCH_TRL',
             'AD_WORKBENCHWINDOW',
             'AD_WORKFLOW',
             'AD_WORKFLOW_ACCESS',
             'AD_WORKFLOWPROCESSOR',
             'AD_WORKFLOW_TRL',
             'C_CITY',
             'C_CONVERSION_RATE',
             'C_CONVERSIONTYPE',
             'C_COUNTRY',
             'C_COUNTRY_TRL',
             'C_CURRENCY',
             'C_CURRENCY_TRL',
             'C_DOCTYPE',
             'C_DOCTYPE_TRL',
             'C_LOCATION',
             'C_REGION',
             'C_UOM',
             'C_UOM_TRL',
             'GL_CATEGORY',
             'M_ATTRIBUTESET',
             'M_ATTRIBUTESETINSTANCE',
             'PA_COLORSCHEMA',
             'PA_MEASURECALC',
             'PA_REPORTCOLUMN',
             'PA_REPORTCOLUMNSET',
             'PA_SLA_CRITERIA',
             'TEST'
            )
ORDER BY 1
