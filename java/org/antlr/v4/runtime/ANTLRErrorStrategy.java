package org.antlr.v4.runtime;

import android.support.v4.ql1;

/* loaded from: classes3.dex */
public interface ANTLRErrorStrategy {
    boolean inErrorRecoveryMode(Cgoto cgoto);

    void recover(Cgoto cgoto, ql1 ql1Var) throws ql1;

    Token recoverInline(Cgoto cgoto) throws ql1;

    void reportError(Cgoto cgoto, ql1 ql1Var);

    void reportMatch(Cgoto cgoto);

    void reset(Cgoto cgoto);

    void sync(Cgoto cgoto) throws ql1;
}
