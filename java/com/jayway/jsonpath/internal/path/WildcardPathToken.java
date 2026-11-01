package com.jayway.jsonpath.internal.path;

import com.jayway.jsonpath.Option;
import com.jayway.jsonpath.PathNotFoundException;
import com.jayway.jsonpath.internal.PathRef;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class WildcardPathToken extends PathToken {
    @Override // com.jayway.jsonpath.internal.path.PathToken
    public void evaluate(String str, PathRef pathRef, Object obj, EvaluationContextImpl evaluationContextImpl) {
        if (evaluationContextImpl.jsonProvider().isMap(obj)) {
            Iterator<String> it = evaluationContextImpl.jsonProvider().getPropertyKeys(obj).iterator();
            while (it.hasNext()) {
                handleObjectProperty(str, obj, evaluationContextImpl, Arrays.asList(it.next()));
            }
        } else if (evaluationContextImpl.jsonProvider().isArray(obj)) {
            for (int i = 0; i < evaluationContextImpl.jsonProvider().length(obj); i++) {
                try {
                    handleArrayIndex(i, str, obj, evaluationContextImpl);
                } catch (PathNotFoundException e) {
                    if (evaluationContextImpl.options().contains(Option.REQUIRE_PROPERTIES)) {
                        throw e;
                    }
                }
            }
        }
    }

    @Override // com.jayway.jsonpath.internal.path.PathToken
    public String getPathFragment() {
        return "[*]";
    }

    @Override // com.jayway.jsonpath.internal.path.PathToken
    public boolean isTokenDefinite() {
        return false;
    }
}
