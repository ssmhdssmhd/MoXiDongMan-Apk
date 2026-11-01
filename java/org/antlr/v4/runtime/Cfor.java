package org.antlr.v4.runtime;

import android.support.v4.hc1;
import android.support.v4.qc1;
import android.support.v4.ql1;
import android.support.v4.xm0;

/* renamed from: org.antlr.v4.runtime.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends Celse {
    @Override // org.antlr.v4.runtime.Celse, org.antlr.v4.runtime.ANTLRErrorStrategy
    public void recover(Cgoto cgoto, ql1 ql1Var) {
        for (qc1 qc1VarC = cgoto.c(); qc1VarC != null; qc1VarC = qc1VarC.getParent()) {
            qc1VarC.f5338else = ql1Var;
        }
        throw new hc1(ql1Var);
    }

    @Override // org.antlr.v4.runtime.Celse, org.antlr.v4.runtime.ANTLRErrorStrategy
    public Token recoverInline(Cgoto cgoto) throws ql1 {
        xm0 xm0Var = new xm0(cgoto);
        for (qc1 qc1VarC = cgoto.c(); qc1VarC != null; qc1VarC = qc1VarC.getParent()) {
            qc1VarC.f5338else = xm0Var;
        }
        throw new hc1(xm0Var);
    }

    @Override // org.antlr.v4.runtime.Celse, org.antlr.v4.runtime.ANTLRErrorStrategy
    public void sync(Cgoto cgoto) {
    }
}
