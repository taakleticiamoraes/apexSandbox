public with sharing class ChangeTimeFormat {
    public String changeTimeFormat(String strTime) {
        
        List<String> parts = strTime.split(':');
        
        Integer hour = Integer.valueOf(parts[0]);
        String minutes = parts[1];
        
        String period;
        Integer hour12;
        
        if (hour == 0) {
            hour12 = 12;
            period = 'AM';
        }
        else if (hour < 12) {
            hour12 = hour;
            period = 'AM';
        }
        else if (hour == 12) {
            hour12 = 12;
            period = 'PM';
        }
        else {
            hour12 = hour - 12;
            period = 'PM';
        }
        
        String formattedHour = (hour12 < 10 ? '0' : '') + String.valueOf(hour12);
        
        return formattedHour + ':' + minutes + ' ' + period;
    }
}