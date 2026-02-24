public with sharing class defragging {
    public void defragging(Integer[] memory)
    {
        if (memory == null || memory.size() == 0) {
            return;
        }
        
        Integer insertPos = 0;
        
        for (Integer i = 0; i < memory.size(); i++) {
            if (memory[i] != -1) {
                memory[insertPos] = memory[i];
                insertPos++;
            }
        }
        
        for (Integer i = insertPos; i < memory.size(); i++) {
            memory[i] = -1;
        }
    }
}