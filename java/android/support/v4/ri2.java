package android.support.v4;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.Vocabulary;
import org.antlr.v4.runtime.tree.xpath.Cdo;
import org.slf4j.Logger;

/* loaded from: classes3.dex */
public class ri2 extends is0 {
    private static final String[] a;

    /* renamed from: abstract, reason: not valid java name */
    public static final int f5818abstract = 2;
    public static final Vocabulary b;

    @Deprecated
    public static final String[] c;

    /* renamed from: continue, reason: not valid java name */
    public static final int f5819continue = 3;

    /* renamed from: implements, reason: not valid java name */
    public static String[] f5820implements = {"DEFAULT_MODE"};

    /* renamed from: instanceof, reason: not valid java name */
    public static final String[] f5821instanceof = {"ANYWHERE", Logger.ROOT_LOGGER_NAME, "WILDCARD", "BANG", "ID", "NameChar", "NameStartChar", "STRING"};

    /* renamed from: interface, reason: not valid java name */
    public static final int f5822interface = 6;

    /* renamed from: private, reason: not valid java name */
    public static final int f5823private = 1;

    /* renamed from: protected, reason: not valid java name */
    public static final int f5824protected = 7;

    /* renamed from: strictfp, reason: not valid java name */
    public static final int f5825strictfp = 4;

    /* renamed from: synchronized, reason: not valid java name */
    private static final String[] f5826synchronized;

    /* renamed from: transient, reason: not valid java name */
    public static final int f5827transient = 8;

    /* renamed from: volatile, reason: not valid java name */
    public static final int f5828volatile = 5;

    /* renamed from: finally, reason: not valid java name */
    public int f5829finally;

    /* renamed from: package, reason: not valid java name */
    public int f5830package;

    static {
        String[] strArr = {null, null, null, "'//'", "'/'", "'*'", "'!'"};
        f5826synchronized = strArr;
        String[] strArr2 = {null, "TOKEN_REF", "RULE_REF", "ANYWHERE", Logger.ROOT_LOGGER_NAME, "WILDCARD", "BANG", "ID", "STRING"};
        a = strArr2;
        b = new cf2(strArr, strArr2);
        c = new String[strArr2.length];
        int i = 0;
        while (true) {
            String[] strArr3 = c;
            if (i >= strArr3.length) {
                return;
            }
            Vocabulary vocabulary = b;
            strArr3[i] = vocabulary.getLiteralName(i);
            if (strArr3[i] == null) {
                strArr3[i] = vocabulary.getSymbolicName(i);
            }
            if (strArr3[i] == null) {
                strArr3[i] = "<INVALID>";
            }
            i++;
        }
    }

    public ri2(CharStream charStream) {
        super(charStream);
        this.f5829finally = 1;
        this.f5830package = 0;
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: class */
    public String[] mo2318class() {
        return f5821instanceof;
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: else */
    public String mo2320else() {
        return "XPathLexer.g4";
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: for */
    public Cstatic mo2321for() {
        return null;
    }

    @Override // android.support.v4.is0, org.antlr.v4.runtime.TokenSource
    public int getCharPositionInLine() {
        return this.f5830package;
    }

    @Override // android.support.v4.is0
    /* renamed from: implements */
    public String[] mo2322implements() {
        return f5820implements;
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: native */
    public Vocabulary mo2323native() {
        return b;
    }

    @Override // android.support.v4.is0, org.antlr.v4.runtime.TokenSource
    public Token nextToken() {
        this.f2863catch = this.f2866else.index();
        fp fpVar = null;
        while (fpVar == null) {
            int iLA = this.f2866else.LA(1);
            if (iLA == -1) {
                return new fp(-1, "<EOF>");
            }
            if (iLA == 33) {
                q();
                fpVar = new fp(6, Cdo.f28590try);
            } else if (iLA == 39) {
                fpVar = new fp(8, u());
            } else if (iLA == 42) {
                q();
                fpVar = new fp(5, "*");
            } else if (iLA == 47) {
                q();
                if (this.f2866else.LA(1) == 47) {
                    q();
                    fpVar = new fp(3, "//");
                } else {
                    fpVar = new fp(4, on0.f4694final);
                }
            } else {
                if (!s(this.f2866else.LA(1))) {
                    throw new ss0(this, this.f2866else, this.f2863catch, null);
                }
                String strT = t();
                fpVar = Character.isUpperCase(strT.charAt(0)) ? new fp(1, strT) : new fp(2, strT);
            }
        }
        fpVar.setStartIndex(this.f2863catch);
        fpVar.setCharPositionInLine(this.f2863catch);
        fpVar.setLine(this.f5829finally);
        return fpVar;
    }

    public void q() {
        if (this.f2866else.LA(1) == 10) {
            this.f5829finally++;
            this.f5830package = 0;
        } else {
            this.f5830package++;
        }
        this.f2866else.consume();
    }

    public boolean r(int i) {
        return Character.isUnicodeIdentifierPart(i);
    }

    public boolean s(int i) {
        return Character.isUnicodeIdentifierStart(i);
    }

    public String t() {
        int iIndex = this.f2866else.index();
        q();
        while (r(this.f2866else.LA(1))) {
            q();
        }
        CharStream charStream = this.f2866else;
        return charStream.getText(rn0.m7059case(iIndex, charStream.index() - 1));
    }

    @Override // android.support.v4.is0, org.antlr.v4.runtime.Cthis
    @Deprecated
    /* renamed from: throw */
    public String[] mo2325throw() {
        return c;
    }

    public String u() {
        int iIndex = this.f2866else.index();
        q();
        while (this.f2866else.LA(1) != 39) {
            q();
        }
        q();
        CharStream charStream = this.f2866else;
        return charStream.getText(rn0.m7059case(iIndex, charStream.index() - 1));
    }
}
