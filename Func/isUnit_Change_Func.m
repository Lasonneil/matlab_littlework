  function islog=isUnit_Change_Func(Unit_Chance)
  
        switch Unit_Chance
            case 'normal'
                islog=false;
            case 'log'
                islog=true;
            otherwise
                message='¿Ì¶ÈÑ¡Ôñ´íÎó£¡';
                icon='error';
                msgbox(message,'´íÎó',icon);
                
        end
    end