package org.bouncycastle.asn1.x509;

import android.support.v4.Cimport;
import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cfor;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.n;

/* renamed from: org.bouncycastle.asn1.x509.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f29340do;

    /* renamed from: for, reason: not valid java name */
    private Cclass f29341for;

    /* renamed from: if, reason: not valid java name */
    private boolean f29342if;

    /* renamed from: new, reason: not valid java name */
    public static final Ccatch f29324new = new Ccatch("2.5.29.9").m32793import();

    /* renamed from: try, reason: not valid java name */
    public static final Ccatch f29337try = new Ccatch("2.5.29.14").m32793import();

    /* renamed from: case, reason: not valid java name */
    public static final Ccatch f29310case = new Ccatch("2.5.29.15").m32793import();

    /* renamed from: else, reason: not valid java name */
    public static final Ccatch f29316else = new Ccatch("2.5.29.16").m32793import();

    /* renamed from: goto, reason: not valid java name */
    public static final Ccatch f29320goto = new Ccatch("2.5.29.17").m32793import();

    /* renamed from: this, reason: not valid java name */
    public static final Ccatch f29334this = new Ccatch("2.5.29.18").m32793import();

    /* renamed from: break, reason: not valid java name */
    public static final Ccatch f29309break = new Ccatch("2.5.29.19").m32793import();

    /* renamed from: catch, reason: not valid java name */
    public static final Ccatch f29311catch = new Ccatch("2.5.29.20").m32793import();

    /* renamed from: class, reason: not valid java name */
    public static final Ccatch f29312class = new Ccatch("2.5.29.21").m32793import();

    /* renamed from: const, reason: not valid java name */
    public static final Ccatch f29313const = new Ccatch("2.5.29.23").m32793import();

    /* renamed from: final, reason: not valid java name */
    public static final Ccatch f29318final = new Ccatch("2.5.29.24").m32793import();

    /* renamed from: super, reason: not valid java name */
    public static final Ccatch f29332super = new Ccatch("2.5.29.27").m32793import();

    /* renamed from: throw, reason: not valid java name */
    public static final Ccatch f29335throw = new Ccatch("2.5.29.28").m32793import();

    /* renamed from: while, reason: not valid java name */
    public static final Ccatch f29339while = new Ccatch("2.5.29.29").m32793import();

    /* renamed from: import, reason: not valid java name */
    public static final Ccatch f29321import = new Ccatch("2.5.29.30").m32793import();

    /* renamed from: native, reason: not valid java name */
    public static final Ccatch f29323native = new Ccatch("2.5.29.31").m32793import();

    /* renamed from: public, reason: not valid java name */
    public static final Ccatch f29328public = new Ccatch("2.5.29.32").m32793import();

    /* renamed from: return, reason: not valid java name */
    public static final Ccatch f29329return = new Ccatch("2.5.29.33").m32793import();

    /* renamed from: static, reason: not valid java name */
    public static final Ccatch f29330static = new Ccatch("2.5.29.35").m32793import();

    /* renamed from: switch, reason: not valid java name */
    public static final Ccatch f29333switch = new Ccatch("2.5.29.36").m32793import();

    /* renamed from: throws, reason: not valid java name */
    public static final Ccatch f29336throws = new Ccatch("2.5.29.37").m32793import();

    /* renamed from: default, reason: not valid java name */
    public static final Ccatch f29315default = new Ccatch("2.5.29.46").m32793import();

    /* renamed from: extends, reason: not valid java name */
    public static final Ccatch f29317extends = new Ccatch("2.5.29.54").m32793import();

    /* renamed from: finally, reason: not valid java name */
    public static final Ccatch f29319finally = new Ccatch("1.3.6.1.5.5.7.1.1").m32793import();

    /* renamed from: package, reason: not valid java name */
    public static final Ccatch f29325package = new Ccatch("1.3.6.1.5.5.7.1.11").m32793import();

    /* renamed from: private, reason: not valid java name */
    public static final Ccatch f29326private = new Ccatch("1.3.6.1.5.5.7.1.12").m32793import();

    /* renamed from: abstract, reason: not valid java name */
    public static final Ccatch f29308abstract = new Ccatch("1.3.6.1.5.5.7.1.2").m32793import();

    /* renamed from: continue, reason: not valid java name */
    public static final Ccatch f29314continue = new Ccatch("1.3.6.1.5.5.7.1.3").m32793import();

    /* renamed from: strictfp, reason: not valid java name */
    public static final Ccatch f29331strictfp = new Ccatch("1.3.6.1.5.5.7.1.4").m32793import();

    /* renamed from: volatile, reason: not valid java name */
    public static final Ccatch f29338volatile = new Ccatch("2.5.29.56").m32793import();

    /* renamed from: interface, reason: not valid java name */
    public static final Ccatch f29322interface = new Ccatch("2.5.29.55").m32793import();

    /* renamed from: protected, reason: not valid java name */
    public static final Ccatch f29327protected = new Ccatch("2.5.29.60").m32793import();

    public Cif(Ccatch ccatch, Cfor cfor, Cclass cclass) {
        this(ccatch, cfor.m33022throw(), cclass);
    }

    public Cif(Ccatch ccatch, boolean z, Cclass cclass) {
        this.f29340do = ccatch;
        this.f29342if = z;
        this.f29341for = cclass;
    }

    public Cif(Ccatch ccatch, boolean z, byte[] bArr) {
        this(ccatch, z, new j(bArr));
    }

    private Cif(Csuper csuper) {
        ASN1Encodable aSN1EncodableMo33075final;
        if (csuper.size() == 2) {
            this.f29340do = Ccatch.m32790throw(csuper.mo33075final(0));
            this.f29342if = false;
            aSN1EncodableMo33075final = csuper.mo33075final(1);
        } else {
            if (csuper.size() != 3) {
                throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
            }
            this.f29340do = Ccatch.m32790throw(csuper.mo33075final(0));
            this.f29342if = Cfor.m33019const(csuper.mo33075final(1)).m33022throw();
            aSN1EncodableMo33075final = csuper.mo33075final(2);
        }
        this.f29341for = Cclass.m32796catch(aSN1EncodableMo33075final);
    }

    /* renamed from: else, reason: not valid java name */
    public static Cif m33244else(Object obj) {
        if (obj instanceof Cif) {
            return (Cif) obj;
        }
        if (obj != null) {
            return new Cif(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private static Cfinal m33245new(Cif cif) throws IllegalArgumentException {
        try {
            return Cfinal.m33015else(cif.m33246case().mo5490const());
        } catch (IOException e) {
            throw new IllegalArgumentException("can't convert extension: " + e);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public Cclass m33246case() {
        return this.f29341for;
    }

    @Override // org.bouncycastle.asn1.Cbreak
    public boolean equals(Object obj) {
        if (!(obj instanceof Cif)) {
            return false;
        }
        Cif cif = (Cif) obj;
        return cif.m33249try().equals(m33249try()) && cif.m33246case().equals(m33246case()) && cif.m33248this() == m33248this();
    }

    /* renamed from: goto, reason: not valid java name */
    public ASN1Encodable m33247goto() {
        return m33245new(this);
    }

    @Override // org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        return m33248this() ? m33246case().hashCode() ^ m33249try().hashCode() : (m33246case().hashCode() ^ m33249try().hashCode()) ^ (-1);
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m33248this() {
        return this.f29342if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f29340do);
        if (this.f29342if) {
            cimport.m3516do(Cfor.m33021super(true));
        }
        cimport.m3516do(this.f29341for);
        return new n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m33249try() {
        return this.f29340do;
    }
}
