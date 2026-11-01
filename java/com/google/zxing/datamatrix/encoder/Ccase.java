package com.google.zxing.datamatrix.encoder;

import android.support.v4.d10;
import java.nio.charset.StandardCharsets;

/* renamed from: com.google.zxing.datamatrix.encoder.case, reason: invalid class name */
/* loaded from: classes2.dex */
final class Ccase {

    /* renamed from: case, reason: not valid java name */
    public int f17500case;

    /* renamed from: do, reason: not valid java name */
    private final String f17501do;

    /* renamed from: else, reason: not valid java name */
    private int f17502else;

    /* renamed from: for, reason: not valid java name */
    private d10 f17503for;

    /* renamed from: goto, reason: not valid java name */
    private Cgoto f17504goto;

    /* renamed from: if, reason: not valid java name */
    private Cthis f17505if;

    /* renamed from: new, reason: not valid java name */
    private d10 f17506new;

    /* renamed from: this, reason: not valid java name */
    private int f17507this;

    /* renamed from: try, reason: not valid java name */
    private final StringBuilder f17508try;

    public Ccase(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
        StringBuilder sb = new StringBuilder(bytes.length);
        int length = bytes.length;
        for (int i = 0; i < length; i++) {
            char c = (char) (bytes[i] & 255);
            if (c == '?' && str.charAt(i) != '?') {
                throw new IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding.");
            }
            sb.append(c);
        }
        this.f17501do = sb.toString();
        this.f17505if = Cthis.FORCE_NONE;
        this.f17508try = new StringBuilder(str.length());
        this.f17502else = -1;
    }

    /* renamed from: this, reason: not valid java name */
    private int m21886this() {
        return this.f17501do.length() - this.f17507this;
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m21887break() {
        return this.f17500case < m21886this();
    }

    /* renamed from: case, reason: not valid java name */
    public int m21888case() {
        return this.f17502else;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m21889catch() {
        this.f17502else = -1;
    }

    /* renamed from: class, reason: not valid java name */
    public void m21890class() {
        this.f17504goto = null;
    }

    /* renamed from: const, reason: not valid java name */
    public void m21891const(d10 d10Var, d10 d10Var2) {
        this.f17503for = d10Var;
        this.f17506new = d10Var2;
    }

    /* renamed from: do, reason: not valid java name */
    public int m21892do() {
        return this.f17508try.length();
    }

    /* renamed from: else, reason: not valid java name */
    public int m21893else() {
        return m21886this() - this.f17500case;
    }

    /* renamed from: final, reason: not valid java name */
    public void m21894final(int i) {
        this.f17507this = i;
    }

    /* renamed from: for, reason: not valid java name */
    public char m21895for() {
        return this.f17501do.charAt(this.f17500case);
    }

    /* renamed from: goto, reason: not valid java name */
    public Cgoto m21896goto() {
        return this.f17504goto;
    }

    /* renamed from: if, reason: not valid java name */
    public StringBuilder m21897if() {
        return this.f17508try;
    }

    /* renamed from: import, reason: not valid java name */
    public void m21898import(int i) {
        Cgoto cgoto = this.f17504goto;
        if (cgoto == null || i > cgoto.m21941if()) {
            this.f17504goto = Cgoto.m21932super(i, this.f17505if, this.f17503for, this.f17506new, true);
        }
    }

    /* renamed from: native, reason: not valid java name */
    public void m21899native(char c) {
        this.f17508try.append(c);
    }

    /* renamed from: new, reason: not valid java name */
    public char m21900new() {
        return this.f17501do.charAt(this.f17500case);
    }

    /* renamed from: public, reason: not valid java name */
    public void m21901public(String str) {
        this.f17508try.append(str);
    }

    /* renamed from: super, reason: not valid java name */
    public void m21902super(Cthis cthis) {
        this.f17505if = cthis;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m21903throw(int i) {
        this.f17502else = i;
    }

    /* renamed from: try, reason: not valid java name */
    public String m21904try() {
        return this.f17501do;
    }

    /* renamed from: while, reason: not valid java name */
    public void m21905while() {
        m21898import(m21892do());
    }
}
