package org.bouncycastle.asn1.x509;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cfor;

/* renamed from: org.bouncycastle.asn1.x509.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse {

    /* renamed from: do, reason: not valid java name */
    public boolean f29265do;

    /* renamed from: if, reason: not valid java name */
    public Cclass f29266if;

    /* renamed from: for, reason: not valid java name */
    public static final Ccatch f29246for = new Ccatch("2.5.29.9");

    /* renamed from: new, reason: not valid java name */
    public static final Ccatch f29250new = new Ccatch("2.5.29.14");

    /* renamed from: try, reason: not valid java name */
    public static final Ccatch f29262try = new Ccatch("2.5.29.15");

    /* renamed from: case, reason: not valid java name */
    public static final Ccatch f29236case = new Ccatch("2.5.29.16");

    /* renamed from: else, reason: not valid java name */
    public static final Ccatch f29242else = new Ccatch("2.5.29.17");

    /* renamed from: goto, reason: not valid java name */
    public static final Ccatch f29247goto = new Ccatch("2.5.29.18");

    /* renamed from: this, reason: not valid java name */
    public static final Ccatch f29259this = new Ccatch("2.5.29.19");

    /* renamed from: break, reason: not valid java name */
    public static final Ccatch f29235break = new Ccatch("2.5.29.20");

    /* renamed from: catch, reason: not valid java name */
    public static final Ccatch f29237catch = new Ccatch("2.5.29.21");

    /* renamed from: class, reason: not valid java name */
    public static final Ccatch f29238class = new Ccatch("2.5.29.23");

    /* renamed from: const, reason: not valid java name */
    public static final Ccatch f29239const = new Ccatch("2.5.29.24");

    /* renamed from: final, reason: not valid java name */
    public static final Ccatch f29244final = new Ccatch("2.5.29.27");

    /* renamed from: super, reason: not valid java name */
    public static final Ccatch f29257super = new Ccatch("2.5.29.28");

    /* renamed from: throw, reason: not valid java name */
    public static final Ccatch f29260throw = new Ccatch("2.5.29.29");

    /* renamed from: while, reason: not valid java name */
    public static final Ccatch f29264while = new Ccatch("2.5.29.30");

    /* renamed from: import, reason: not valid java name */
    public static final Ccatch f29248import = new Ccatch("2.5.29.31");

    /* renamed from: native, reason: not valid java name */
    public static final Ccatch f29249native = new Ccatch("2.5.29.32");

    /* renamed from: public, reason: not valid java name */
    public static final Ccatch f29253public = new Ccatch("2.5.29.33");

    /* renamed from: return, reason: not valid java name */
    public static final Ccatch f29254return = new Ccatch("2.5.29.35");

    /* renamed from: static, reason: not valid java name */
    public static final Ccatch f29255static = new Ccatch("2.5.29.36");

    /* renamed from: switch, reason: not valid java name */
    public static final Ccatch f29258switch = new Ccatch("2.5.29.37");

    /* renamed from: throws, reason: not valid java name */
    public static final Ccatch f29261throws = new Ccatch("2.5.29.46");

    /* renamed from: default, reason: not valid java name */
    public static final Ccatch f29241default = new Ccatch("2.5.29.54");

    /* renamed from: extends, reason: not valid java name */
    public static final Ccatch f29243extends = new Ccatch("1.3.6.1.5.5.7.1.1");

    /* renamed from: finally, reason: not valid java name */
    public static final Ccatch f29245finally = new Ccatch("1.3.6.1.5.5.7.1.11");

    /* renamed from: package, reason: not valid java name */
    public static final Ccatch f29251package = new Ccatch("1.3.6.1.5.5.7.1.12");

    /* renamed from: private, reason: not valid java name */
    public static final Ccatch f29252private = new Ccatch("1.3.6.1.5.5.7.1.2");

    /* renamed from: abstract, reason: not valid java name */
    public static final Ccatch f29234abstract = new Ccatch("1.3.6.1.5.5.7.1.3");

    /* renamed from: continue, reason: not valid java name */
    public static final Ccatch f29240continue = new Ccatch("1.3.6.1.5.5.7.1.4");

    /* renamed from: strictfp, reason: not valid java name */
    public static final Ccatch f29256strictfp = new Ccatch("2.5.29.56");

    /* renamed from: volatile, reason: not valid java name */
    public static final Ccatch f29263volatile = new Ccatch("2.5.29.55");

    public Celse(Cfor cfor, Cclass cclass) {
        this.f29265do = cfor.m33022throw();
        this.f29266if = cclass;
    }

    public Celse(boolean z, Cclass cclass) {
        this.f29265do = z;
        this.f29266if = cclass;
    }

    /* renamed from: do, reason: not valid java name */
    public static Cfinal m33218do(Celse celse) throws IllegalArgumentException {
        try {
            return Cfinal.m33015else(celse.m33219for().mo5490const());
        } catch (IOException e) {
            throw new IllegalArgumentException("can't convert extension: " + e);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Celse)) {
            return false;
        }
        Celse celse = (Celse) obj;
        return celse.m33219for().equals(m33219for()) && celse.m33221new() == m33221new();
    }

    /* renamed from: for, reason: not valid java name */
    public Cclass m33219for() {
        return this.f29266if;
    }

    public int hashCode() {
        return m33221new() ? m33219for().hashCode() : m33219for().hashCode() ^ (-1);
    }

    /* renamed from: if, reason: not valid java name */
    public ASN1Encodable m33220if() {
        return m33218do(this);
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m33221new() {
        return this.f29265do;
    }
}
