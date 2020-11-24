function []=Unit_Change_Func(Axes_Chance,islog)
switch Axes_Chance
    case 'x÷·'
        if(islog)
            set(gca,'XScale','log');
        else
            set(gca,'XScale','linear');
        end
    case 'y÷·'
        if(islog)
            set(gca,'YScale','log');
             else
            set(gca,'XScale','linear');
        end
    case 'z÷·'
        if(islog)
            set(gca,'ZScale','log');
             else
            set(gca,'XScale','linear');
        end
    otherwise
        message='◊¯±Í÷·¥ÌŒÛ£°';
        icon='error'
        msgbox(message,'¥ÌŒÛ',icon);      
end



end