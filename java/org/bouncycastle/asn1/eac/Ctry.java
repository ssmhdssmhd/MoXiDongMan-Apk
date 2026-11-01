package org.bouncycastle.asn1.eac;

import android.support.v4.mc2;
import android.support.v4.q3;
import android.support.v4.ug1;
import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.u;

/* renamed from: org.bouncycastle.asn1.eac.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry extends ug1 {

    /* renamed from: break, reason: not valid java name */
    private static final int f29042break = 1;

    /* renamed from: catch, reason: not valid java name */
    private static final int f29043catch = 2;

    /* renamed from: class, reason: not valid java name */
    private static final int f29044class = 4;

    /* renamed from: const, reason: not valid java name */
    private static final int f29045const = 8;

    /* renamed from: final, reason: not valid java name */
    private static final int f29046final = 16;

    /* renamed from: super, reason: not valid java name */
    private static final int f29047super = 32;

    /* renamed from: throw, reason: not valid java name */
    private static final int f29048throw = 64;

    /* renamed from: case, reason: not valid java name */
    private BigInteger f29049case;

    /* renamed from: do, reason: not valid java name */
    private Ccatch f29050do;

    /* renamed from: else, reason: not valid java name */
    private byte[] f29051else;

    /* renamed from: for, reason: not valid java name */
    private BigInteger f29052for;

    /* renamed from: goto, reason: not valid java name */
    private BigInteger f29053goto;

    /* renamed from: if, reason: not valid java name */
    private BigInteger f29054if;

    /* renamed from: new, reason: not valid java name */
    private BigInteger f29055new;

    /* renamed from: this, reason: not valid java name */
    private int f29056this;

    /* renamed from: try, reason: not valid java name */
    private byte[] f29057try;

    public Ctry(Ccatch ccatch, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, byte[] bArr, BigInteger bigInteger4, byte[] bArr2, int i) throws IllegalArgumentException {
        this.f29050do = ccatch;
        m32982native(bigInteger);
        m32987while(bigInteger2);
        m32984return(bigInteger3);
        m32985super(new j(bArr));
        m32981import(bigInteger4);
        m32983public(new j(bArr2));
        m32986throw(BigInteger.valueOf(i));
    }

    public Ctry(Ccatch ccatch, byte[] bArr) throws IllegalArgumentException {
        this.f29050do = ccatch;
        m32983public(new j(bArr));
    }

    public Ctry(Csuper csuper) throws IllegalArgumentException {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f29050do = Ccatch.m32790throw(enumerationMo33076super.nextElement());
        this.f29056this = 0;
        while (enumerationMo33076super.hasMoreElements()) {
            Object objNextElement = enumerationMo33076super.nextElement();
            if (!(objNextElement instanceof Cimport)) {
                throw new IllegalArgumentException("Unknown Object Identifier!");
            }
            Cimport cimport = (Cimport) objNextElement;
            switch (cimport.getTagNo()) {
                case 1:
                    m32982native(mc2.m4903try(cimport).m4904case());
                    break;
                case 2:
                    m32987while(mc2.m4903try(cimport).m4904case());
                    break;
                case 3:
                    m32984return(mc2.m4903try(cimport).m4904case());
                    break;
                case 4:
                    m32985super(Cclass.m32797class(cimport, false));
                    break;
                case 5:
                    m32981import(mc2.m4903try(cimport).m4904case());
                    break;
                case 6:
                    m32983public(Cclass.m32797class(cimport, false));
                    break;
                case 7:
                    m32986throw(mc2.m4903try(cimport).m4904case());
                    break;
                default:
                    this.f29056this = 0;
                    throw new IllegalArgumentException("Unknown Object Identifier!");
            }
        }
        int i = this.f29056this;
        if (i != 32 && i != 127) {
            throw new IllegalArgumentException("All options must be either present or absent!");
        }
    }

    /* renamed from: import, reason: not valid java name */
    private void m32981import(BigInteger bigInteger) throws IllegalArgumentException {
        int i = this.f29056this;
        if ((i & 16) != 0) {
            throw new IllegalArgumentException("Order of base point R already set");
        }
        this.f29056this = i | 16;
        this.f29049case = bigInteger;
    }

    /* renamed from: native, reason: not valid java name */
    private void m32982native(BigInteger bigInteger) {
        int i = this.f29056this;
        if ((i & 1) != 0) {
            throw new IllegalArgumentException("Prime Modulus P already set");
        }
        this.f29056this = i | 1;
        this.f29054if = bigInteger;
    }

    /* renamed from: public, reason: not valid java name */
    private void m32983public(Cclass cclass) throws IllegalArgumentException {
        int i = this.f29056this;
        if ((i & 32) != 0) {
            throw new IllegalArgumentException("Public Point Y already set");
        }
        this.f29056this = i | 32;
        this.f29051else = cclass.mo5490const();
    }

    /* renamed from: return, reason: not valid java name */
    private void m32984return(BigInteger bigInteger) throws IllegalArgumentException {
        int i = this.f29056this;
        if ((i & 4) != 0) {
            throw new IllegalArgumentException("Second Coef B already set");
        }
        this.f29056this = i | 4;
        this.f29055new = bigInteger;
    }

    /* renamed from: super, reason: not valid java name */
    private void m32985super(Cclass cclass) throws IllegalArgumentException {
        int i = this.f29056this;
        if ((i & 8) != 0) {
            throw new IllegalArgumentException("Base Point G already set");
        }
        this.f29056this = i | 8;
        this.f29057try = cclass.mo5490const();
    }

    /* renamed from: throw, reason: not valid java name */
    private void m32986throw(BigInteger bigInteger) throws IllegalArgumentException {
        int i = this.f29056this;
        if ((i & 64) != 0) {
            throw new IllegalArgumentException("Cofactor F already set");
        }
        this.f29056this = i | 64;
        this.f29053goto = bigInteger;
    }

    /* renamed from: while, reason: not valid java name */
    private void m32987while(BigInteger bigInteger) throws IllegalArgumentException {
        int i = this.f29056this;
        if ((i & 2) != 0) {
            throw new IllegalArgumentException("First Coef A already set");
        }
        this.f29056this = i | 2;
        this.f29052for = bigInteger;
    }

    /* renamed from: break, reason: not valid java name */
    public BigInteger m32988break() {
        if ((this.f29056this & 16) != 0) {
            return this.f29049case;
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public android.support.v4.Cimport m32989case(Ccatch ccatch, boolean z) {
        android.support.v4.Cimport cimport = new android.support.v4.Cimport();
        cimport.m3516do(ccatch);
        if (!z) {
            cimport.m3516do(new mc2(1, m32990catch()));
            cimport.m3516do(new mc2(2, m32996this()));
            cimport.m3516do(new mc2(3, m32992const()));
            cimport.m3516do(new u(false, 4, new j(m32993else())));
            cimport.m3516do(new mc2(5, m32988break()));
        }
        cimport.m3516do(new u(false, 6, new j(m32991class())));
        if (!z) {
            cimport.m3516do(new mc2(7, m32995goto()));
        }
        return cimport;
    }

    /* renamed from: catch, reason: not valid java name */
    public BigInteger m32990catch() {
        if ((this.f29056this & 1) != 0) {
            return this.f29054if;
        }
        return null;
    }

    /* renamed from: class, reason: not valid java name */
    public byte[] m32991class() {
        if ((this.f29056this & 32) != 0) {
            return q3.m6371final(this.f29051else);
        }
        return null;
    }

    /* renamed from: const, reason: not valid java name */
    public BigInteger m32992const() {
        if ((this.f29056this & 4) != 0) {
            return this.f29055new;
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m32993else() {
        if ((this.f29056this & 8) != 0) {
            return q3.m6371final(this.f29057try);
        }
        return null;
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m32994final() {
        return this.f29054if != null;
    }

    /* renamed from: goto, reason: not valid java name */
    public BigInteger m32995goto() {
        if ((this.f29056this & 64) != 0) {
            return this.f29053goto;
        }
        return null;
    }

    /* renamed from: this, reason: not valid java name */
    public BigInteger m32996this() {
        if ((this.f29056this & 2) != 0) {
            return this.f29052for;
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new n(m32989case(this.f29050do, !m32994final()));
    }

    @Override // android.support.v4.ug1
    /* renamed from: try */
    public Ccatch mo3055try() {
        return this.f29050do;
    }
}
