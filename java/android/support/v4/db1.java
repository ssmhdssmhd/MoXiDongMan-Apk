package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;

/* loaded from: classes3.dex */
public class db1 extends Cbreak implements ASN1Choice {

    /* renamed from: case, reason: not valid java name */
    public static final int f976case = 3;

    /* renamed from: else, reason: not valid java name */
    public static final int f977else = 4;

    /* renamed from: for, reason: not valid java name */
    public static final int f978for = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f979new = 1;

    /* renamed from: try, reason: not valid java name */
    public static final int f980try = 2;

    /* renamed from: do, reason: not valid java name */
    private int f981do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f982if;

    public db1(ab1 ab1Var) {
        this.f981do = 3;
        this.f982if = ab1Var;
    }

    public db1(e32 e32Var) {
        this.f981do = 1;
        this.f982if = e32Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private db1(Cimport cimport) {
        ASN1Encodable aSN1EncodableM33069return;
        int tagNo = cimport.getTagNo();
        this.f981do = tagNo;
        if (tagNo == 0) {
            aSN1EncodableM33069return = Cinstanceof.m33069return(cimport, false);
        } else if (tagNo == 1) {
            aSN1EncodableM33069return = e32.m1643throw(Cgoto.m33041class(cimport, false).m33044final().intValue());
        } else if (tagNo != 2) {
            if (tagNo == 3) {
                aSN1EncodableM33069return = ab1.m122case(cimport, false);
            } else {
                if (tagNo != 4) {
                    throw new IllegalArgumentException("unknown tag in POPOPrivKey");
                }
                aSN1EncodableM33069return = b80.m465else(cimport, false);
            }
        }
        this.f982if = aSN1EncodableM33069return;
    }

    /* renamed from: new, reason: not valid java name */
    public static db1 m1212new(Object obj) {
        if (obj instanceof db1) {
            return (db1) obj;
        }
        if (obj != null) {
            return new db1(Cimport.m33063catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static db1 m1213try(Cimport cimport, boolean z) {
        return m1212new(Cimport.m33064class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public int m1214case() {
        return this.f981do;
    }

    /* renamed from: else, reason: not valid java name */
    public ASN1Encodable m1215else() {
        return this.f982if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.u(false, this.f981do, this.f982if);
    }
}
