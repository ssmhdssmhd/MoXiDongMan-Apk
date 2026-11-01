package android.support.v4;

import java.util.ArrayList;
import java.util.EmptyStackException;
import java.util.List;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Cthis;
import org.antlr.v4.runtime.IntStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenFactory;
import org.antlr.v4.runtime.TokenSource;

/* loaded from: classes3.dex */
public abstract class is0 extends Cthis<Integer, ks0> implements TokenSource {

    /* renamed from: default, reason: not valid java name */
    public static final int f2855default = 0;

    /* renamed from: extends, reason: not valid java name */
    public static final int f2856extends = 1114111;

    /* renamed from: public, reason: not valid java name */
    public static final int f2857public = 0;

    /* renamed from: return, reason: not valid java name */
    public static final int f2858return = -2;

    /* renamed from: static, reason: not valid java name */
    public static final int f2859static = -3;

    /* renamed from: switch, reason: not valid java name */
    public static final int f2860switch = 0;

    /* renamed from: throws, reason: not valid java name */
    public static final int f2861throws = 1;

    /* renamed from: break, reason: not valid java name */
    public Token f2862break;

    /* renamed from: class, reason: not valid java name */
    public int f2864class;

    /* renamed from: const, reason: not valid java name */
    public int f2865const;

    /* renamed from: else, reason: not valid java name */
    public CharStream f2866else;

    /* renamed from: final, reason: not valid java name */
    public boolean f2867final;

    /* renamed from: goto, reason: not valid java name */
    public ob1<TokenSource, CharStream> f2868goto;

    /* renamed from: native, reason: not valid java name */
    public String f2870native;

    /* renamed from: super, reason: not valid java name */
    public int f2871super;

    /* renamed from: throw, reason: not valid java name */
    public int f2873throw;

    /* renamed from: this, reason: not valid java name */
    public TokenFactory<?> f2872this = gp.f2187if;

    /* renamed from: catch, reason: not valid java name */
    public int f2863catch = -1;

    /* renamed from: while, reason: not valid java name */
    public final gn0 f2874while = new gn0();

    /* renamed from: import, reason: not valid java name */
    public int f2869import = 0;

    public is0() {
    }

    public int a() {
        return this.f2873throw;
    }

    /* renamed from: abstract, reason: not valid java name */
    public List<? extends Token> m3555abstract() {
        ArrayList arrayList = new ArrayList();
        Token tokenNextToken = nextToken();
        while (tokenNextToken.getType() != -1) {
            arrayList.add(tokenNextToken);
            tokenNextToken = nextToken();
        }
        return arrayList;
    }

    public void b(int i) {
        this.f2869import = i;
    }

    public void c() {
        this.f2873throw = -2;
    }

    /* renamed from: continue, reason: not valid java name */
    public int m3556continue() {
        return this.f2871super;
    }

    public void d(ss0 ss0Var) {
        CharStream charStream = this.f2866else;
        m32083try().syntaxError(this, null, this.f2864class, this.f2865const, "token recognition error at: '" + m3566transient(charStream.getText(rn0.m7059case(this.f2863catch, charStream.index()))) + "'", ss0Var);
    }

    public int e() {
        if (this.f2874while.m32016class()) {
            throw new EmptyStackException();
        }
        b(this.f2874while.m2743static());
        return this.f2869import;
    }

    public void f(int i) {
        this.f2874while.m2744switch(this.f2869import);
        b(i);
    }

    /* renamed from: finally, reason: not valid java name */
    public Token m3557finally() {
        Token tokenCreate = this.f2872this.create(this.f2868goto, this.f2873throw, this.f2870native, this.f2871super, this.f2863catch, m3560interface() - 1, this.f2864class, this.f2865const);
        m3561package(tokenCreate);
        return tokenCreate;
    }

    public void g(ss0 ss0Var) {
        if (this.f2866else.LA(1) != -1) {
            m32082this().m4499static(this.f2866else);
        }
    }

    @Override // org.antlr.v4.runtime.TokenSource
    public int getCharPositionInLine() {
        return m32082this().m4488finally();
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: getInputStream, reason: merged with bridge method [inline-methods] */
    public CharStream mo3558goto() {
        return this.f2866else;
    }

    @Override // org.antlr.v4.runtime.TokenSource
    public int getLine() {
        return m32082this().m4484continue();
    }

    @Override // org.antlr.v4.runtime.TokenSource
    public String getSourceName() {
        return this.f2866else.getSourceName();
    }

    @Override // org.antlr.v4.runtime.Cthis, org.antlr.v4.runtime.TokenSource
    public TokenFactory<? extends Token> getTokenFactory() {
        return this.f2872this;
    }

    public void h(ql1 ql1Var) {
        this.f2866else.consume();
    }

    public void i() {
        CharStream charStream = this.f2866else;
        if (charStream != null) {
            charStream.seek(0);
        }
        this.f2862break = null;
        this.f2873throw = 0;
        this.f2871super = 0;
        this.f2863catch = -1;
        this.f2865const = -1;
        this.f2864class = -1;
        this.f2870native = null;
        this.f2867final = false;
        this.f2869import = 0;
        this.f2874while.m32021goto();
        m32082this().mo2072goto();
    }

    /* renamed from: implements */
    public String[] mo2322implements() {
        return null;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public String m3559instanceof() {
        String str = this.f2870native;
        return str != null ? str : m32082this().m4492interface(this.f2866else);
    }

    /* renamed from: interface, reason: not valid java name */
    public int m3560interface() {
        return this.f2866else.index();
    }

    public void j(int i) {
        this.f2871super = i;
    }

    public void k(int i) {
        m32082this().m4491instanceof(i);
    }

    public void l(int i) {
        m32082this().m4503synchronized(i);
    }

    public void m(String str) {
        this.f2870native = str;
    }

    public void n(Token token) {
        this.f2862break = token;
    }

    @Override // org.antlr.v4.runtime.TokenSource
    public Token nextToken() {
        Token token;
        int iM4506transient;
        int i;
        CharStream charStream = this.f2866else;
        if (charStream == null) {
            throw new IllegalStateException("nextToken requires a non-null input stream.");
        }
        int iMark = charStream.mark();
        while (true) {
            try {
                if (this.f2867final) {
                    m3562private();
                    token = this.f2862break;
                    break;
                }
                this.f2862break = null;
                this.f2871super = 0;
                this.f2863catch = this.f2866else.index();
                this.f2865const = m32082this().m4488finally();
                this.f2864class = m32082this().m4484continue();
                this.f2870native = null;
                do {
                    this.f2873throw = 0;
                    try {
                        iM4506transient = m32082this().m4506transient(this.f2866else, this.f2869import);
                    } catch (ss0 e) {
                        d(e);
                        g(e);
                        iM4506transient = -3;
                    }
                    if (this.f2866else.LA(1) == -1) {
                        this.f2867final = true;
                    }
                    if (this.f2873throw == 0) {
                        this.f2873throw = iM4506transient;
                    }
                    i = this.f2873throw;
                    if (i == -3) {
                        break;
                    }
                } while (i == -2);
                if (this.f2862break == null) {
                    m3557finally();
                }
                token = this.f2862break;
            } finally {
                this.f2866else.release(iMark);
            }
        }
        return token;
    }

    public void o(int i) {
        this.f2873throw = i;
    }

    public void p() {
        this.f2873throw = -3;
    }

    /* renamed from: package, reason: not valid java name */
    public void m3561package(Token token) {
        this.f2862break = token;
    }

    /* renamed from: private, reason: not valid java name */
    public Token m3562private() {
        Token tokenCreate = this.f2872this.create(this.f2868goto, -1, null, 0, this.f2866else.index(), this.f2866else.index() - 1, getLine(), getCharPositionInLine());
        m3561package(tokenCreate);
        return tokenCreate;
    }

    /* renamed from: protected, reason: not valid java name */
    public String m3563protected(int i) {
        return i != -1 ? i != 13 ? i != 9 ? i != 10 ? String.valueOf((char) i) : "\\n" : "\\t" : "\\r" : "<EOF>";
    }

    @Override // org.antlr.v4.runtime.Cthis, org.antlr.v4.runtime.TokenSource
    public void setTokenFactory(TokenFactory<?> tokenFactory) {
        this.f2872this = tokenFactory;
    }

    /* renamed from: strictfp */
    public String[] mo2324strictfp() {
        return null;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public Token m3564synchronized() {
        return this.f2862break;
    }

    @Override // org.antlr.v4.runtime.Cthis
    @Deprecated
    /* renamed from: throw */
    public String[] mo2325throw() {
        return null;
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: throws, reason: not valid java name */
    public void mo3565throws(IntStream intStream) {
        this.f2866else = null;
        this.f2868goto = new ob1<>(this, null);
        i();
        CharStream charStream = (CharStream) intStream;
        this.f2866else = charStream;
        this.f2868goto = new ob1<>(this, charStream);
    }

    /* renamed from: transient, reason: not valid java name */
    public String m3566transient(String str) {
        StringBuilder sb = new StringBuilder();
        for (char c : str.toCharArray()) {
            sb.append(m3563protected(c));
        }
        return sb.toString();
    }

    /* renamed from: volatile, reason: not valid java name */
    public String m3567volatile(int i) {
        return "'" + m3563protected(i) + "'";
    }

    public is0(CharStream charStream) {
        this.f2866else = charStream;
        this.f2868goto = new ob1<>(this, charStream);
    }
}
