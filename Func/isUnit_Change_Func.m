  function islog=isUnit_Change_Func(Unit_Chance)
  
        switch Unit_Chance
            case 'normal'
                islog=false;
            case 'log'
                islog=true;
            otherwise
                message='�̶�ѡ�����';
                icon='error';
                msgbox(message,'����',icon);
                
        end
    end