public with sharing class implementAStack {
    public class Stack {
        
        public List<Object> items = new List<Object>();
        
        public void push(Object obj) {
            items.add(obj);
        }
        
        public Object pop() {
            if (isEmpty()) {
                return null;
            }
            return items.remove(items.size() - 1);
        }
        
        public Integer size() {
            return items.size();
        }
        
        public Object peek(){
            if (isEmpty()) {
                return null;
            }
            return items[items.size() - 1];
        }
        
        public Boolean isEmpty() {
            return items.size() == 0;
        }
    }
}