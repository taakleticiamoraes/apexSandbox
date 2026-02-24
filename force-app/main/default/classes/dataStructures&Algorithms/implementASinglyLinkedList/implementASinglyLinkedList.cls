public with sharing class implementASinglyLinkedList {
    public class LinkedList{
        
        private Node head;
        private Node tail;
        private Integer count;
        
        public LinkedList() {
            head = null;
            tail = null;
            count = 0;
        }
        
        public void addToFront(Integer value){
            Node newNode = new Node();
            newNode.data = value;
            newNode.next = head;
            
            head = newNode;
            
            if (tail == null) {
                tail = newNode;
            }
            
            count++;
        }
        public Integer removeFromFront(){
            if (head == null) {
                return null;
            }
            
            Integer value = head.data;
            head = head.next;
            
            if (head == null) {
                tail = null;
            }
            
            count--;
            return value;
        }
        public void addToTail(Integer value){
            Node newNode = new Node();
            newNode.data = value;
            newNode.next = null;
            
            if (tail == null) {
                head = newNode;
                tail = newNode;
            } else {
                tail.next = newNode;
                tail = newNode;
            }
            
            count++;
        }
        public Integer removeFromTail(){
            if (head == null) {
                return null;
            }
            
            if (head == tail) {
                Integer value = head.data;
                head = null;
                tail = null;
                count--;
                return value;
            }
            
            Node current = head;
            while (current.next != tail) {
                current = current.next;
            }
            
            Integer value = tail.data;
            tail = current;
            tail.next = null;
            
            count--;
            return value;
        }
        public Integer size(){
            return count;
        }
    }
    
    public class Node{
        Integer data;
        Node next;
    }
}