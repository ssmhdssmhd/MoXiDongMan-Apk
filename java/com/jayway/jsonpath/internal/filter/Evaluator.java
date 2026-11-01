package com.jayway.jsonpath.internal.filter;

import com.jayway.jsonpath.Predicate;

/* loaded from: classes2.dex */
public interface Evaluator {
    boolean evaluate(ValueNode valueNode, ValueNode valueNode2, Predicate.PredicateContext predicateContext);
}
