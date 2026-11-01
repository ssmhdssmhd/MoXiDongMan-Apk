package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;

/* loaded from: classes3.dex */
public class la1 extends Cbreak implements ASN1Choice {

    /* renamed from: break, reason: not valid java name */
    public static final int f3585break = 7;

    /* renamed from: case, reason: not valid java name */
    public static final int f3586case = 3;

    /* renamed from: catch, reason: not valid java name */
    public static final int f3587catch = 8;

    /* renamed from: class, reason: not valid java name */
    public static final int f3588class = 9;

    /* renamed from: const, reason: not valid java name */
    public static final int f3589const = 10;

    /* renamed from: default, reason: not valid java name */
    public static final int f3590default = 22;

    /* renamed from: else, reason: not valid java name */
    public static final int f3591else = 4;

    /* renamed from: extends, reason: not valid java name */
    public static final int f3592extends = 23;

    /* renamed from: final, reason: not valid java name */
    public static final int f3593final = 11;

    /* renamed from: finally, reason: not valid java name */
    public static final int f3594finally = 24;

    /* renamed from: for, reason: not valid java name */
    public static final int f3595for = 0;

    /* renamed from: goto, reason: not valid java name */
    public static final int f3596goto = 5;

    /* renamed from: import, reason: not valid java name */
    public static final int f3597import = 15;

    /* renamed from: native, reason: not valid java name */
    public static final int f3598native = 16;

    /* renamed from: new, reason: not valid java name */
    public static final int f3599new = 1;

    /* renamed from: package, reason: not valid java name */
    public static final int f3600package = 25;

    /* renamed from: private, reason: not valid java name */
    public static final int f3601private = 26;

    /* renamed from: public, reason: not valid java name */
    public static final int f3602public = 17;

    /* renamed from: return, reason: not valid java name */
    public static final int f3603return = 18;

    /* renamed from: static, reason: not valid java name */
    public static final int f3604static = 19;

    /* renamed from: super, reason: not valid java name */
    public static final int f3605super = 12;

    /* renamed from: switch, reason: not valid java name */
    public static final int f3606switch = 20;

    /* renamed from: this, reason: not valid java name */
    public static final int f3607this = 6;

    /* renamed from: throw, reason: not valid java name */
    public static final int f3608throw = 13;

    /* renamed from: throws, reason: not valid java name */
    public static final int f3609throws = 21;

    /* renamed from: try, reason: not valid java name */
    public static final int f3610try = 2;

    /* renamed from: while, reason: not valid java name */
    public static final int f3611while = 14;

    /* renamed from: do, reason: not valid java name */
    private int f3612do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f3613if;

    public la1(int i, ASN1Encodable aSN1Encodable) {
        this.f3612do = i;
        this.f3613if = m4631new(i, aSN1Encodable);
    }

    private la1(Cimport cimport) {
        int tagNo = cimport.getTagNo();
        this.f3612do = tagNo;
        this.f3613if = m4631new(tagNo, cimport.m33065const());
    }

    /* renamed from: case, reason: not valid java name */
    public static la1 m4630case(Object obj) {
        if (obj == null || (obj instanceof la1)) {
            return (la1) obj;
        }
        if (obj instanceof Cimport) {
            return new la1((Cimport) obj);
        }
        throw new IllegalArgumentException("Invalid object: " + obj.getClass().getName());
    }

    /* renamed from: new, reason: not valid java name */
    private static ASN1Encodable m4631new(int i, ASN1Encodable aSN1Encodable) {
        switch (i) {
            case 0:
                return ig.m3414new(aSN1Encodable);
            case 1:
                return hg.m3016try(aSN1Encodable);
            case 2:
                return ig.m3414new(aSN1Encodable);
            case 3:
                return hg.m3016try(aSN1Encodable);
            case 4:
                return yg.m9835try(aSN1Encodable);
            case 5:
                return bb1.m502new(aSN1Encodable);
            case 6:
                return cb1.m839new(aSN1Encodable);
            case 7:
                return ig.m3414new(aSN1Encodable);
            case 8:
                return hg.m3016try(aSN1Encodable);
            case 9:
                return ig.m3414new(aSN1Encodable);
            case 10:
                return ir0.m3547case(aSN1Encodable);
            case 11:
                return ho1.m3076new(aSN1Encodable);
            case 12:
                return fo1.m2375case(aSN1Encodable);
            case 13:
                return ig.m3414new(aSN1Encodable);
            case 14:
                return hg.m3016try(aSN1Encodable);
            case 15:
                return ge.m2642new(aSN1Encodable);
            case 16:
                return se.m7371new(aSN1Encodable);
            case 17:
                return do1.m1470else(aSN1Encodable);
            case 18:
                return we.m9125try(aSN1Encodable);
            case 19:
                return ma1.m4883new(aSN1Encodable);
            case 20:
                return ta1.m7797new(aSN1Encodable);
            case 21:
                return pg0.m6018new(aSN1Encodable);
            case 22:
                return qg0.m6554new(aSN1Encodable);
            case 23:
                return j80.m3743else(aSN1Encodable);
            case 24:
                return zf.m10164new(aSN1Encodable);
            case 25:
                return ke1.m4383case(aSN1Encodable);
            case 26:
                return je1.m3848case(aSN1Encodable);
            default:
                throw new IllegalArgumentException("unknown tag number: " + i);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public int m4632else() {
        return this.f3612do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.u(true, this.f3612do, this.f3613if);
    }

    /* renamed from: try, reason: not valid java name */
    public ASN1Encodable m4633try() {
        return this.f3613if;
    }
}
