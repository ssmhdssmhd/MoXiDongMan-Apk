package com.jayway.jsonpath.internal.function.numeric;

/* loaded from: classes2.dex */
public class Sum extends AbstractAggregation {
    private Double summation = Double.valueOf(0.0d);

    @Override // com.jayway.jsonpath.internal.function.numeric.AbstractAggregation
    public Number getValue() {
        return this.summation;
    }

    @Override // com.jayway.jsonpath.internal.function.numeric.AbstractAggregation
    public void next(Number number) {
        this.summation = Double.valueOf(this.summation.doubleValue() + number.doubleValue());
    }
}
