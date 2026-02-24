public with sharing class convert15DigitIdTo18DigitId {
    public String convert15to18DigitId(String fifteenDigit) {
        if (fifteenDigit == null) {
            return null;
        }
        if (fifteenDigit.length() != 15) {
            return '-1';
        }
        
        String suffix = '';
        String base = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345';
        
        for (Integer i = 0; i < 3; i++) {
            Integer flags = 0;
            
            for (Integer j = 0; j < 5; j++) {
                Integer index = i * 5 + j;
                String c = fifteenDigit.substring(index, index + 1);
                if (c.charAt(0) >= 65 && c.charAt(0) <= 90) {
                    flags += (1 << j);
                }
            }
            
            suffix += base.substring(flags, flags + 1);
        }
        
        return fifteenDigit + suffix;
    }
}