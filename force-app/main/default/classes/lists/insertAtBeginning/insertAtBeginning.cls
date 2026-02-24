public with sharing class insertAtBeginning {
    public void insertAtStart(String cityName, List<String> cities) {
        if (cities == null) {
            return;
        }
        if (cities.isEmpty()) {
            cities.add(cityName);
        } else {
            cities.add(0, cityName);
        }
    }
}