package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.math.ec.Cfor;

/* loaded from: classes3.dex */
public class wh2 extends Cbreak {

    /* renamed from: if, reason: not valid java name */
    private static yh2 f7528if = new yh2();

    /* renamed from: do, reason: not valid java name */
    public Cfor f7529do;

    public wh2(int i, int i2, int i3, int i4, Cclass cclass) {
        this(new Cfor.C0461for(i, i2, i3, i4, new BigInteger(1, cclass.mo5490const())));
    }

    public wh2(BigInteger bigInteger, Cclass cclass) {
        this(new Cfor.Cnew(bigInteger, new BigInteger(1, cclass.mo5490const())));
    }

    public wh2(Cfor cfor) {
        this.f7529do = cfor;
    }

    /* renamed from: new, reason: not valid java name */
    public Cfor m9152new() {
        return this.f7529do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.j(f7528if.m9871for(this.f7529do.mo339static(), f7528if.m9872if(this.f7529do)));
    }
}
