public with sharing class companionPlants2 {
    public Boolean companionPlants(List<String> plants) {
        if (plants == null || plants.size() == 0) {
            return true;
        }
        
        if (plants.size() == 1) {
            return false;
        }
        
        for (Integer i = 0; i < plants.size() - 1; i++) {
            String firstPlant = plants[i];
            String secondPlant = plants[i + 1];
            Boolean companions = false;
            
            if (firstPlant == 'onions') {
                companions = (secondPlant == 'lettuce' || secondPlant == 'carrots' || secondPlant == 'tomatoes');
            }
            else if (firstPlant == 'lettuce') {
                companions = (secondPlant == 'cucumbers' || secondPlant == 'onions');
            }
            else if (firstPlant == 'cucumbers') {
                companions = (secondPlant == 'lettuce');
            }
            else if (firstPlant == 'carrots') {
                companions = (secondPlant == 'onions');
            }
            else if (firstPlant == 'tomatoes') {
                companions = (secondPlant == 'onions');
            }
            
            if (!companions) {
                return false;
            }
        }
        
        return true;
    }
}