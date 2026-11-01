package com.jayway.jsonpath;

/* loaded from: classes2.dex */
public interface EvaluationListener {

    public enum EvaluationContinuation {
        CONTINUE,
        ABORT
    }

    public interface FoundResult {
        int index();

        String path();

        Object result();
    }

    EvaluationContinuation resultFound(FoundResult foundResult);
}
