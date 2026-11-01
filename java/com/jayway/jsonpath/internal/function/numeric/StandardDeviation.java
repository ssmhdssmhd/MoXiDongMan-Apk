package com.jayway.jsonpath.internal.function.numeric;

/* loaded from: classes2.dex */
public class StandardDeviation extends AbstractAggregation {
    private Double count;
    private Double sum;
    private Double sumSq;

    public StandardDeviation() {
        Double dValueOf = Double.valueOf(0.0d);
        this.sumSq = dValueOf;
        this.sum = dValueOf;
        this.count = dValueOf;
    }

    @Override // com.jayway.jsonpath.internal.function.numeric.AbstractAggregation
    public Number getValue() {
        return Double.valueOf(Math.sqrt((this.sumSq.doubleValue() / this.count.doubleValue()) - (((this.sum.doubleValue() * this.sum.doubleValue()) / this.count.doubleValue()) / this.count.doubleValue())));
    }

    @Override // com.jayway.jsonpath.internal.function.numeric.AbstractAggregation
    public void next(Number number) {
        this.sum = Double.valueOf(this.sum.doubleValue() + number.doubleValue());
        this.sumSq = Double.valueOf(this.sumSq.doubleValue() + (number.doubleValue() * number.doubleValue()));
        this.count = Double.valueOf(this.count.doubleValue() + 1.0d);
    }
}
