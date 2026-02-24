public with sharing class balancedParentheses {
    public Boolean isValid(String s){
        if (s == null || s.length() == 0) {
            return true;
        }
        
        List<String> stack = new List<String>();
        
        for (Integer i = 0; i < s.length(); i++) {
            String ch = s.substring(i, i + 1);
            
            if (ch == '(' || ch == '{' || ch == '[') {
                    stack.add(ch);
                }
                else {
                    if (stack.isEmpty()) {
                        return false;
                    }
                    
                    String last = stack.remove(stack.size() - 1);
                    
                    if (
                        (ch == ')' && last != '(') ||
                    (ch == '}' && last != '{') ||
                        (ch == ']' && last != '[')
                        ) {
                            return false;
                        }
                    }
                }
                
                return stack.isEmpty();
            }
        }