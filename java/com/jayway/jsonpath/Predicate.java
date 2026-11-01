package com.jayway.jsonpath;

import com.jayway.jsonpath.spi.mapper.MappingException;

/* loaded from: classes2.dex */
public interface Predicate {

    public interface PredicateContext {
        Configuration configuration();

        Object item();

        <T> T item(Class<T> cls) throws MappingException;

        Object root();
    }

    boolean apply(PredicateContext predicateContext);
}
