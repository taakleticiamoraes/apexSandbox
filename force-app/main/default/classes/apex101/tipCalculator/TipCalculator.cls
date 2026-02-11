public with sharing class TipCalculator {
    public Decimal computeTip(Decimal total, Integer percent) {
        Decimal percentValue = percent / 100.0;
        return total * percentValue;
    }
}