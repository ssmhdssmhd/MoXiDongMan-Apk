package android.support.v4;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenSource;

/* loaded from: classes3.dex */
public class zo1 implements Token {

    /* renamed from: do, reason: not valid java name */
    private final String f8626do;

    /* renamed from: for, reason: not valid java name */
    private final String f8627for;

    /* renamed from: if, reason: not valid java name */
    private final int f8628if;

    public zo1(String str, int i) {
        this(str, i, null);
    }

    /* renamed from: do, reason: not valid java name */
    public final String m10262do() {
        return this.f8627for;
    }

    @Override // org.antlr.v4.runtime.Token
    public int getChannel() {
        return 0;
    }

    @Override // org.antlr.v4.runtime.Token
    public int getCharPositionInLine() {
        return -1;
    }

    @Override // org.antlr.v4.runtime.Token
    public CharStream getInputStream() {
        return null;
    }

    @Override // org.antlr.v4.runtime.Token
    public int getLine() {
        return 0;
    }

    @Override // org.antlr.v4.runtime.Token
    public int getStartIndex() {
        return -1;
    }

    @Override // org.antlr.v4.runtime.Token
    public int getStopIndex() {
        return -1;
    }

    @Override // org.antlr.v4.runtime.Token
    public String getText() {
        if (this.f8627for == null) {
            return "<" + this.f8626do + ">";
        }
        return "<" + this.f8627for + ":" + this.f8626do + ">";
    }

    @Override // org.antlr.v4.runtime.Token
    public int getTokenIndex() {
        return -1;
    }

    @Override // org.antlr.v4.runtime.Token
    public TokenSource getTokenSource() {
        return null;
    }

    @Override // org.antlr.v4.runtime.Token
    public int getType() {
        return this.f8628if;
    }

    /* renamed from: if, reason: not valid java name */
    public final String m10263if() {
        return this.f8626do;
    }

    public String toString() {
        return this.f8626do + ":" + this.f8628if;
    }

    public zo1(String str, int i, String str2) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("ruleName cannot be null or empty.");
        }
        this.f8626do = str;
        this.f8628if = i;
        this.f8627for = str2;
    }
}
