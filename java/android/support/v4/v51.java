package android.support.v4;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class v51 extends Cbreak implements ASN1Choice {

    /* renamed from: for, reason: not valid java name */
    public static final int f7093for = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f7094new = 1;

    /* renamed from: do, reason: not valid java name */
    private final int f7095do;

    /* renamed from: if, reason: not valid java name */
    private final Cbreak f7096if;

    public v51(yc1 yc1Var) {
        this((ASN1Encodable) yc1Var);
    }

    public v51(zx1 zx1Var) {
        this(new org.bouncycastle.asn1.u(0, zx1Var));
    }

    private v51(ASN1Encodable aSN1Encodable) {
        Cbreak cbreakM9802new;
        if ((aSN1Encodable instanceof Csuper) || (aSN1Encodable instanceof yc1)) {
            this.f7095do = 0;
            cbreakM9802new = yc1.m9802new(aSN1Encodable);
        } else {
            if (!(aSN1Encodable instanceof Cimport)) {
                throw new IllegalArgumentException("Unknown check object in integrity check.");
            }
            this.f7095do = 1;
            cbreakM9802new = zx1.m10321try(((Cimport) aSN1Encodable).m33065const());
        }
        this.f7096if = cbreakM9802new;
    }

    /* renamed from: new, reason: not valid java name */
    public static v51 m8752new(Object obj) {
        if (obj instanceof v51) {
            return (v51) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return new v51(Cfinal.m33015else((byte[]) obj));
            } catch (IOException unused) {
                throw new IllegalArgumentException("Unable to parse integrity check details.");
            }
        }
        if (obj != null) {
            return new v51((ASN1Encodable) obj);
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public int m8753case() {
        return this.f7095do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cbreak cbreak = this.f7096if;
        return cbreak instanceof zx1 ? new org.bouncycastle.asn1.u(0, this.f7096if) : cbreak.toASN1Primitive();
    }

    /* renamed from: try, reason: not valid java name */
    public Cbreak m8754try() {
        return this.f7096if;
    }
}
