package android.support.v4;

import org.antlr.v4.runtime.atn.Cfor;
import org.antlr.v4.runtime.atn.LexerAction;

/* loaded from: classes3.dex */
public final class vs0 implements LexerAction {

    /* renamed from: do, reason: not valid java name */
    public static final vs0 f7339do = new vs0();

    private vs0() {
    }

    public boolean equals(Object obj) {
        return obj == this;
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public void execute(is0 is0Var) {
        is0Var.p();
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public Cfor getActionType() {
        return Cfor.SKIP;
    }

    public int hashCode() {
        return y01.m9664do(y01.m9668try(y01.m9665for(), getActionType().ordinal()), 1);
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public boolean isPositionDependent() {
        return false;
    }

    public String toString() {
        return "skip";
    }
}
