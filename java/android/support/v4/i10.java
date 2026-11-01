package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimplements;
import org.bouncycastle.asn1.Cimport;

/* loaded from: classes3.dex */
public class i10 extends Cbreak implements ASN1Choice {

    /* renamed from: case, reason: not valid java name */
    public static final int f2592case = 3;

    /* renamed from: else, reason: not valid java name */
    public static final int f2593else = 200;

    /* renamed from: for, reason: not valid java name */
    public static final int f2594for = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f2595new = 1;

    /* renamed from: try, reason: not valid java name */
    public static final int f2596try = 2;

    /* renamed from: do, reason: not valid java name */
    public int f2597do;

    /* renamed from: if, reason: not valid java name */
    public ASN1String f2598if;

    public i10(int i, String str) {
        str = str.length() > 200 ? str.substring(0, 200) : str;
        this.f2597do = i;
        ASN1String vVar = i != 0 ? i != 1 ? (i == 2 || i != 3) ? new org.bouncycastle.asn1.v(str) : new org.bouncycastle.asn1.y(str) : new Cimplements(str) : new org.bouncycastle.asn1.g(str);
        this.f2598if = vVar;
    }

    public i10(String str) {
        str = str.length() > 200 ? str.substring(0, 200) : str;
        this.f2597do = 2;
        this.f2598if = new org.bouncycastle.asn1.v(str);
    }

    private i10(ASN1String aSN1String) {
        int i;
        this.f2598if = aSN1String;
        if (aSN1String instanceof org.bouncycastle.asn1.v) {
            i = 2;
        } else if (aSN1String instanceof Cimplements) {
            i = 1;
        } else if (aSN1String instanceof org.bouncycastle.asn1.g) {
            i = 0;
        } else {
            if (!(aSN1String instanceof org.bouncycastle.asn1.y)) {
                throw new IllegalArgumentException("unknown STRING type in DisplayText");
            }
            i = 3;
        }
        this.f2597do = i;
    }

    /* renamed from: new, reason: not valid java name */
    public static i10 m3197new(Object obj) {
        if (obj instanceof ASN1String) {
            return new i10((ASN1String) obj);
        }
        if (obj == null || (obj instanceof i10)) {
            return (i10) obj;
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    /* renamed from: try, reason: not valid java name */
    public static i10 m3198try(Cimport cimport, boolean z) {
        return m3197new(cimport.m33065const());
    }

    public String getString() {
        return this.f2598if.getString();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return (Cfinal) this.f2598if;
    }
}
