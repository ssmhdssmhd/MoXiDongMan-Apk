package android.support.v4;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.TokenFactory;
import org.antlr.v4.runtime.TokenSource;

/* loaded from: classes3.dex */
public class gp implements TokenFactory<fp> {

    /* renamed from: if, reason: not valid java name */
    public static final TokenFactory<fp> f2187if = new gp();

    /* renamed from: do, reason: not valid java name */
    public final boolean f2188do;

    public gp(boolean z) {
        this.f2188do = z;
    }

    @Override // org.antlr.v4.runtime.TokenFactory
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public fp create(int i, String str) {
        return new fp(i, str);
    }

    @Override // org.antlr.v4.runtime.TokenFactory
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public fp create(ob1<TokenSource, CharStream> ob1Var, int i, String str, int i2, int i3, int i4, int i5, int i6) {
        CharStream charStream;
        fp fpVar = new fp(ob1Var, i, i2, i3, i4);
        fpVar.setLine(i5);
        fpVar.setCharPositionInLine(i6);
        if (str != null) {
            fpVar.setText(str);
        } else if (this.f2188do && (charStream = ob1Var.b) != null) {
            fpVar.setText(charStream.getText(rn0.m7059case(i3, i4)));
        }
        return fpVar;
    }

    public gp() {
        this(false);
    }
}
