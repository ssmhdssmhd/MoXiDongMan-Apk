package com.jayway.jsonpath.internal.path;

import com.jayway.jsonpath.Configuration;
import com.jayway.jsonpath.InvalidPathException;
import com.jayway.jsonpath.Predicate;
import com.jayway.jsonpath.internal.PathRef;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class PredicatePathToken extends PathToken {
    private final Collection<Predicate> predicates;

    public PredicatePathToken(Predicate predicate) {
        this.predicates = Arrays.asList(predicate);
    }

    public boolean accept(Object obj, Object obj2, Configuration configuration, EvaluationContextImpl evaluationContextImpl) {
        PredicateContextImpl predicateContextImpl = new PredicateContextImpl(obj, obj2, configuration, evaluationContextImpl.documentEvalCache());
        Iterator<Predicate> it = this.predicates.iterator();
        while (it.hasNext()) {
            if (!it.next().apply(predicateContextImpl)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.jayway.jsonpath.internal.path.PathToken
    public void evaluate(String str, PathRef pathRef, Object obj, EvaluationContextImpl evaluationContextImpl) {
        if (evaluationContextImpl.jsonProvider().isMap(obj)) {
            if (accept(obj, evaluationContextImpl.rootDocument(), evaluationContextImpl.configuration(), evaluationContextImpl)) {
                if (!evaluationContextImpl.forUpdate()) {
                    pathRef = PathRef.NO_OP;
                }
                if (isLeaf()) {
                    evaluationContextImpl.addResult(str, pathRef, obj);
                    return;
                } else {
                    next().evaluate(str, pathRef, obj, evaluationContextImpl);
                    return;
                }
            }
            return;
        }
        int i = 0;
        if (!evaluationContextImpl.jsonProvider().isArray(obj)) {
            if (isUpstreamDefinite()) {
                throw new InvalidPathException(String.format("Filter: %s can not be applied to primitives. Current context is: %s", toString(), obj));
            }
            return;
        }
        Iterator<?> it = evaluationContextImpl.jsonProvider().toIterable(obj).iterator();
        while (it.hasNext()) {
            if (accept(it.next(), evaluationContextImpl.rootDocument(), evaluationContextImpl.configuration(), evaluationContextImpl)) {
                handleArrayIndex(i, str, obj, evaluationContextImpl);
            }
            i++;
        }
    }

    @Override // com.jayway.jsonpath.internal.path.PathToken
    public String getPathFragment() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (int i = 0; i < this.predicates.size(); i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append("?");
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // com.jayway.jsonpath.internal.path.PathToken
    public boolean isTokenDefinite() {
        return false;
    }

    public PredicatePathToken(Collection<Predicate> collection) {
        this.predicates = collection;
    }
}
