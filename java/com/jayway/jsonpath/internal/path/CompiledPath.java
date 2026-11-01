package com.jayway.jsonpath.internal.path;

import com.jayway.jsonpath.Configuration;
import com.jayway.jsonpath.internal.EvaluationAbortException;
import com.jayway.jsonpath.internal.EvaluationContext;
import com.jayway.jsonpath.internal.Path;
import com.jayway.jsonpath.internal.PathRef;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes2.dex */
public class CompiledPath implements Path {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) CompiledPath.class);
    private final boolean isRootPath;
    private final RootPathToken root;

    public CompiledPath(RootPathToken rootPathToken, boolean z) {
        this.root = rootPathToken;
        this.isRootPath = z;
    }

    @Override // com.jayway.jsonpath.internal.Path
    public EvaluationContext evaluate(Object obj, Object obj2, Configuration configuration, boolean z) {
        Logger logger2 = logger;
        if (logger2.isDebugEnabled()) {
            logger2.debug("Evaluating path: {}", toString());
        }
        EvaluationContextImpl evaluationContextImpl = new EvaluationContextImpl(this, obj2, configuration, z);
        try {
            this.root.evaluate("", evaluationContextImpl.forUpdate() ? PathRef.createRoot(obj2) : PathRef.NO_OP, obj, evaluationContextImpl);
        } catch (EvaluationAbortException unused) {
        }
        return evaluationContextImpl;
    }

    @Override // com.jayway.jsonpath.internal.Path
    public boolean isDefinite() {
        return this.root.isPathDefinite();
    }

    @Override // com.jayway.jsonpath.internal.Path
    public boolean isFunctionPath() {
        return this.root.isFunctionPath();
    }

    @Override // com.jayway.jsonpath.internal.Path
    public boolean isRootPath() {
        return this.isRootPath;
    }

    public String toString() {
        return this.root.toString();
    }

    @Override // com.jayway.jsonpath.internal.Path
    public EvaluationContext evaluate(Object obj, Object obj2, Configuration configuration) {
        return evaluate(obj, obj2, configuration, false);
    }
}
