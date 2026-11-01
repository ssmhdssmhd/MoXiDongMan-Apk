package com.jayway.jsonpath.internal.path;

import com.jayway.jsonpath.Predicate;
import com.jayway.jsonpath.internal.function.Parameter;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public class PathTokenFactory {
    public static PathToken crateScanToken() {
        return new ScanPathToken();
    }

    public static PathToken createFunctionPathToken(String str, List<Parameter> list) {
        return new FunctionPathToken(str, list);
    }

    public static PathToken createIndexArrayPathToken(ArrayIndexOperation arrayIndexOperation) {
        return new ArrayPathToken(arrayIndexOperation);
    }

    public static PathToken createPredicatePathToken(Collection<Predicate> collection) {
        return new PredicatePathToken(collection);
    }

    public static PathToken createPropertyPathToken(List<String> list, char c) {
        return new PropertyPathToken(list, c);
    }

    public static RootPathToken createRootPathToken(char c) {
        return new RootPathToken(c);
    }

    public static PathToken createSinglePropertyPathToken(String str, char c) {
        return new PropertyPathToken(Collections.singletonList(str), c);
    }

    public static PathToken createSliceArrayPathToken(ArraySliceOperation arraySliceOperation) {
        return new ArrayPathToken(arraySliceOperation);
    }

    public static PathToken createWildCardPathToken() {
        return new WildcardPathToken();
    }

    public static PathToken createPredicatePathToken(Predicate predicate) {
        return new PredicatePathToken(predicate);
    }
}
