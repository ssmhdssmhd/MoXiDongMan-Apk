package android.support.v4;

import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenSource;

/* loaded from: classes3.dex */
public class hp extends kc {

    /* renamed from: case, reason: not valid java name */
    public int f2445case;

    public hp(TokenSource tokenSource) {
        super(tokenSource);
        this.f2445case = 0;
    }

    @Override // android.support.v4.kc, org.antlr.v4.runtime.TokenStream
    public Token LT(int i) {
        m4363super();
        if (i == 0) {
            return null;
        }
        if (i < 0) {
            return mo3078do(-i);
        }
        int iM4365throw = this.f3354for;
        for (int i2 = 1; i2 < i; i2++) {
            int i3 = iM4365throw + 1;
            if (m4362return(i3)) {
                iM4365throw = m4365throw(i3, this.f2445case);
            }
        }
        return this.f3355if.get(iM4365throw);
    }

    @Override // android.support.v4.kc
    /* renamed from: do, reason: not valid java name */
    public Token mo3078do(int i) {
        if (i != 0) {
            int iM4367while = this.f3354for;
            if (iM4367while - i >= 0) {
                for (int i2 = 1; i2 <= i && iM4367while > 0; i2++) {
                    iM4367while = m4367while(iM4367while - 1, this.f2445case);
                }
                if (iM4367while < 0) {
                    return null;
                }
                return this.f3355if.get(iM4367while);
            }
        }
        return null;
    }

    @Override // android.support.v4.kc
    /* renamed from: if, reason: not valid java name */
    public int mo3079if(int i) {
        return m4365throw(i, this.f2445case);
    }

    /* renamed from: static, reason: not valid java name */
    public int m3080static() {
        m4360new();
        int i = 0;
        for (int i2 = 0; i2 < this.f3355if.size(); i2++) {
            Token token = this.f3355if.get(i2);
            if (token.getChannel() == this.f2445case) {
                i++;
            }
            if (token.getType() == -1) {
                break;
            }
        }
        return i;
    }

    public hp(TokenSource tokenSource, int i) {
        this(tokenSource);
        this.f2445case = i;
    }
}
