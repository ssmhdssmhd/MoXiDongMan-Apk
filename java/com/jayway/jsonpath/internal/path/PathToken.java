package com.jayway.jsonpath.internal.path;

import com.jayway.jsonpath.Option;
import com.jayway.jsonpath.PathNotFoundException;
import com.jayway.jsonpath.internal.PathRef;
import com.jayway.jsonpath.internal.Utils;
import com.jayway.jsonpath.internal.function.PathFunction;
import com.jayway.jsonpath.spi.json.JsonProvider;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class PathToken {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    private PathToken next;
    private PathToken prev;
    private Boolean definite = null;
    private Boolean upstreamDefinite = null;

    private static boolean hasProperty(String str, Object obj, EvaluationContextImpl evaluationContextImpl) {
        return evaluationContextImpl.jsonProvider().getPropertyKeys(obj).contains(str);
    }

    private static Object readObjectProperty(String str, Object obj, EvaluationContextImpl evaluationContextImpl) {
        return evaluationContextImpl.jsonProvider().getMapValue(obj, str);
    }

    public PathToken appendTailToken(PathToken pathToken) {
        this.next = pathToken;
        pathToken.prev = this;
        return pathToken;
    }

    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public abstract void evaluate(String str, PathRef pathRef, Object obj, EvaluationContextImpl evaluationContextImpl);

    public abstract String getPathFragment();

    public int getTokenCount() {
        int i = 1;
        PathToken next = this;
        while (!next.isLeaf()) {
            next = next.next();
            i++;
        }
        return i;
    }

    public void handleArrayIndex(int i, String str, Object obj, EvaluationContextImpl evaluationContextImpl) {
        String strConcat = Utils.concat(str, "[", String.valueOf(i), "]");
        PathRef pathRefCreate = evaluationContextImpl.forUpdate() ? PathRef.create(obj, i) : PathRef.NO_OP;
        if (i < 0) {
            i += evaluationContextImpl.jsonProvider().length(obj);
        }
        try {
            Object arrayIndex = evaluationContextImpl.jsonProvider().getArrayIndex(obj, i);
            if (isLeaf()) {
                evaluationContextImpl.addResult(strConcat, pathRefCreate, arrayIndex);
            } else {
                next().evaluate(strConcat, pathRefCreate, arrayIndex, evaluationContextImpl);
            }
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    public void handleObjectProperty(String str, Object obj, EvaluationContextImpl evaluationContextImpl, List<String> list) {
        Object objectProperty;
        Object obj2 = null;
        if (list.size() != 1) {
            String str2 = str + "[" + Utils.join(", ", "'", list) + "]";
            Object objCreateMap = evaluationContextImpl.jsonProvider().createMap();
            for (String str3 : list) {
                if (hasProperty(str3, obj, evaluationContextImpl)) {
                    objectProperty = readObjectProperty(str3, obj, evaluationContextImpl);
                    if (objectProperty == JsonProvider.UNDEFINED) {
                        if (evaluationContextImpl.options().contains(Option.DEFAULT_PATH_LEAF_TO_NULL)) {
                            objectProperty = null;
                        }
                    }
                } else if (evaluationContextImpl.options().contains(Option.DEFAULT_PATH_LEAF_TO_NULL)) {
                    objectProperty = null;
                } else if (evaluationContextImpl.options().contains(Option.REQUIRE_PROPERTIES)) {
                    throw new PathNotFoundException("Missing property in path " + str2);
                }
                evaluationContextImpl.jsonProvider().setProperty(objCreateMap, str3, objectProperty);
            }
            evaluationContextImpl.addResult(str2, evaluationContextImpl.forUpdate() ? PathRef.create(obj, list) : PathRef.NO_OP, objCreateMap);
            return;
        }
        String str4 = list.get(0);
        String strConcat = Utils.concat(str, "['", str4, "']");
        Object objectProperty2 = readObjectProperty(str4, obj, evaluationContextImpl);
        if (objectProperty2 != JsonProvider.UNDEFINED) {
            obj2 = objectProperty2;
        } else {
            if (!isLeaf()) {
                if (!((isUpstreamDefinite() && isTokenDefinite()) || evaluationContextImpl.options().contains(Option.REQUIRE_PROPERTIES)) || evaluationContextImpl.options().contains(Option.SUPPRESS_EXCEPTIONS)) {
                    return;
                }
                throw new PathNotFoundException("Missing property in path " + strConcat);
            }
            if (!evaluationContextImpl.options().contains(Option.DEFAULT_PATH_LEAF_TO_NULL)) {
                if (evaluationContextImpl.options().contains(Option.SUPPRESS_EXCEPTIONS) || !evaluationContextImpl.options().contains(Option.REQUIRE_PROPERTIES)) {
                    return;
                }
                throw new PathNotFoundException("No results for path: " + strConcat);
            }
        }
        PathRef pathRefCreate = evaluationContextImpl.forUpdate() ? PathRef.create(obj, str4) : PathRef.NO_OP;
        if (isLeaf()) {
            evaluationContextImpl.addResult(strConcat, pathRefCreate, obj2);
        } else {
            next().evaluate(strConcat, pathRefCreate, obj2, evaluationContextImpl);
        }
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public void invoke(PathFunction pathFunction, String str, PathRef pathRef, Object obj, EvaluationContextImpl evaluationContextImpl) {
        evaluationContextImpl.addResult(str, pathRef, pathFunction.invoke(str, pathRef, obj, evaluationContextImpl, null));
    }

    public boolean isLeaf() {
        return this.next == null;
    }

    public boolean isPathDefinite() {
        Boolean bool = this.definite;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean zIsTokenDefinite = isTokenDefinite();
        if (zIsTokenDefinite && !isLeaf()) {
            zIsTokenDefinite = this.next.isPathDefinite();
        }
        this.definite = Boolean.valueOf(zIsTokenDefinite);
        return zIsTokenDefinite;
    }

    public boolean isRoot() {
        return this.prev == null;
    }

    public abstract boolean isTokenDefinite();

    public boolean isUpstreamDefinite() {
        if (this.upstreamDefinite == null) {
            this.upstreamDefinite = Boolean.valueOf(isRoot() || (this.prev.isTokenDefinite() && this.prev.isUpstreamDefinite()));
        }
        return this.upstreamDefinite.booleanValue();
    }

    public PathToken next() {
        if (isLeaf()) {
            throw new IllegalStateException("Current path token is a leaf");
        }
        return this.next;
    }

    public PathToken prev() {
        return this.prev;
    }

    public String toString() {
        if (isLeaf()) {
            return getPathFragment();
        }
        return getPathFragment() + next().toString();
    }
}
