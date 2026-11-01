package android.support.v4;

import org.antlr.v4.runtime.atn.Cfor;
import org.antlr.v4.runtime.atn.LexerAction;

/* loaded from: classes3.dex */
public final class os0 implements LexerAction {

    /* renamed from: do, reason: not valid java name */
    private final int f4729do;

    /* renamed from: if, reason: not valid java name */
    private final LexerAction f4730if;

    public os0(int i, LexerAction lexerAction) {
        this.f4729do = i;
        this.f4730if = lexerAction;
    }

    /* renamed from: do, reason: not valid java name */
    public LexerAction m5748do() {
        return this.f4730if;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof os0)) {
            return false;
        }
        os0 os0Var = (os0) obj;
        return this.f4729do == os0Var.f4729do && this.f4730if.equals(os0Var.f4730if);
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public void execute(is0 is0Var) {
        this.f4730if.execute(is0Var);
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public Cfor getActionType() {
        return this.f4730if.getActionType();
    }

    public int hashCode() {
        return y01.m9664do(y01.m9663case(y01.m9668try(y01.m9665for(), this.f4729do), this.f4730if), 2);
    }

    /* renamed from: if, reason: not valid java name */
    public int m5749if() {
        return this.f4729do;
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public boolean isPositionDependent() {
        return true;
    }
}
