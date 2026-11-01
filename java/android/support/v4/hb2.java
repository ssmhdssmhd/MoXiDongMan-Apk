package android.support.v4;

import java.util.Arrays;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenSource;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.WritableToken;

/* loaded from: classes3.dex */
public class hb2<T extends Token> implements TokenStream {

    /* renamed from: this, reason: not valid java name */
    public static final /* synthetic */ boolean f2356this = false;

    /* renamed from: case, reason: not valid java name */
    public Token f2357case;

    /* renamed from: do, reason: not valid java name */
    public TokenSource f2358do;

    /* renamed from: else, reason: not valid java name */
    public Token f2359else;

    /* renamed from: for, reason: not valid java name */
    public int f2360for;

    /* renamed from: goto, reason: not valid java name */
    public int f2361goto;

    /* renamed from: if, reason: not valid java name */
    public Token[] f2362if;

    /* renamed from: new, reason: not valid java name */
    public int f2363new;

    /* renamed from: try, reason: not valid java name */
    public int f2364try;

    public hb2(TokenSource tokenSource) {
        this(tokenSource, 256);
    }

    @Override // org.antlr.v4.runtime.IntStream
    public int LA(int i) {
        return LT(i).getType();
    }

    @Override // org.antlr.v4.runtime.TokenStream
    public Token LT(int i) {
        if (i == -1) {
            return this.f2357case;
        }
        m2983new(i);
        int i2 = (this.f2363new + i) - 1;
        if (i2 >= 0) {
            int i3 = this.f2360for;
            return i2 >= i3 ? this.f2362if[i3 - 1] : this.f2362if[i2];
        }
        throw new IndexOutOfBoundsException("LT(" + i + ") gives negative index");
    }

    @Override // org.antlr.v4.runtime.IntStream
    public void consume() {
        if (LA(1) == -1) {
            throw new IllegalStateException("cannot consume EOF");
        }
        Token[] tokenArr = this.f2362if;
        int i = this.f2363new;
        Token token = tokenArr[i];
        this.f2357case = token;
        if (i == this.f2360for - 1 && this.f2364try == 0) {
            this.f2360for = 0;
            this.f2363new = -1;
            this.f2359else = token;
        }
        this.f2363new++;
        this.f2361goto++;
        m2983new(1);
    }

    /* renamed from: do, reason: not valid java name */
    public void m2980do(Token token) {
        int i = this.f2360for;
        Token[] tokenArr = this.f2362if;
        if (i >= tokenArr.length) {
            this.f2362if = (Token[]) Arrays.copyOf(tokenArr, tokenArr.length * 2);
        }
        if (token instanceof WritableToken) {
            ((WritableToken) token).setTokenIndex(m2981for() + this.f2360for);
        }
        Token[] tokenArr2 = this.f2362if;
        int i2 = this.f2360for;
        this.f2360for = i2 + 1;
        tokenArr2[i2] = token;
    }

    /* renamed from: for, reason: not valid java name */
    public final int m2981for() {
        return this.f2361goto - this.f2363new;
    }

    @Override // org.antlr.v4.runtime.TokenStream
    public Token get(int i) {
        int iM2981for = m2981for();
        if (i >= iM2981for && i < this.f2360for + iM2981for) {
            return this.f2362if[i - iM2981for];
        }
        throw new IndexOutOfBoundsException("get(" + i + ") outside buffer: " + iM2981for + ".." + (iM2981for + this.f2360for));
    }

    @Override // org.antlr.v4.runtime.IntStream
    public String getSourceName() {
        return this.f2358do.getSourceName();
    }

    @Override // org.antlr.v4.runtime.TokenStream
    public String getText() {
        return "";
    }

    @Override // org.antlr.v4.runtime.TokenStream
    public String getText(vo1 vo1Var) {
        return getText(vo1Var.getSourceInterval());
    }

    @Override // org.antlr.v4.runtime.TokenStream
    public TokenSource getTokenSource() {
        return this.f2358do;
    }

    /* renamed from: if, reason: not valid java name */
    public int m2982if(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.f2360for;
            if (i3 > 0 && this.f2362if[i3 - 1].getType() == -1) {
                return i2;
            }
            m2980do(this.f2358do.nextToken());
        }
        return i;
    }

    @Override // org.antlr.v4.runtime.IntStream
    public int index() {
        return this.f2361goto;
    }

    @Override // org.antlr.v4.runtime.IntStream
    public int mark() {
        int i = this.f2364try;
        if (i == 0) {
            this.f2359else = this.f2357case;
        }
        int i2 = (-i) - 1;
        this.f2364try = i + 1;
        return i2;
    }

    /* renamed from: new, reason: not valid java name */
    public void m2983new(int i) {
        int i2 = (((this.f2363new + i) - 1) - this.f2360for) + 1;
        if (i2 > 0) {
            m2982if(i2);
        }
    }

    @Override // org.antlr.v4.runtime.IntStream
    public void release(int i) {
        int i2 = this.f2364try;
        if (i != (-i2)) {
            throw new IllegalStateException("release() called with an invalid marker.");
        }
        int i3 = i2 - 1;
        this.f2364try = i3;
        if (i3 == 0) {
            int i4 = this.f2363new;
            if (i4 > 0) {
                Token[] tokenArr = this.f2362if;
                System.arraycopy(tokenArr, i4, tokenArr, 0, this.f2360for - i4);
                this.f2360for -= this.f2363new;
                this.f2363new = 0;
            }
            this.f2359else = this.f2357case;
        }
    }

    @Override // org.antlr.v4.runtime.IntStream
    public void seek(int i) {
        int i2 = this.f2361goto;
        if (i == i2) {
            return;
        }
        if (i > i2) {
            m2983new(i - i2);
            i = Math.min(i, (m2981for() + this.f2360for) - 1);
        }
        int iM2981for = m2981for();
        int i3 = i - iM2981for;
        if (i3 < 0) {
            throw new IllegalArgumentException("cannot seek to negative index " + i);
        }
        if (i3 < this.f2360for) {
            this.f2363new = i3;
            this.f2361goto = i;
            if (i3 == 0) {
                this.f2357case = this.f2359else;
                return;
            } else {
                this.f2357case = this.f2362if[i3 - 1];
                return;
            }
        }
        throw new UnsupportedOperationException("seek to index outside buffer: " + i + " not in " + iM2981for + ".." + (iM2981for + this.f2360for));
    }

    @Override // org.antlr.v4.runtime.IntStream
    public int size() {
        throw new UnsupportedOperationException("Unbuffered stream cannot know its size");
    }

    public hb2(TokenSource tokenSource, int i) {
        this.f2363new = 0;
        this.f2364try = 0;
        this.f2361goto = 0;
        this.f2358do = tokenSource;
        this.f2362if = new Token[i];
        this.f2360for = 0;
        m2982if(1);
    }

    @Override // org.antlr.v4.runtime.TokenStream
    public String getText(Token token, Token token2) {
        return getText(rn0.m7059case(token.getTokenIndex(), token2.getTokenIndex()));
    }

    @Override // org.antlr.v4.runtime.TokenStream
    public String getText(rn0 rn0Var) {
        int iM2981for = m2981for();
        int length = (this.f2362if.length + iM2981for) - 1;
        int i = rn0Var.f5888do;
        int i2 = rn0Var.f5889if;
        if (i >= iM2981for && i2 <= length) {
            int i3 = i2 - iM2981for;
            StringBuilder sb = new StringBuilder();
            for (int i4 = i - iM2981for; i4 <= i3; i4++) {
                sb.append(this.f2362if[i4].getText());
            }
            return sb.toString();
        }
        throw new UnsupportedOperationException("interval " + rn0Var + " not in token buffer window: " + iM2981for + ".." + length);
    }
}
