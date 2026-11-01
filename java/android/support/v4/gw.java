package android.support.v4;

import java.util.Date;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;

/* loaded from: classes3.dex */
public class gw extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private final Ccase f2257do;

    /* renamed from: if, reason: not valid java name */
    private final fr f2258if;

    public gw(fr frVar) {
        this.f2257do = null;
        this.f2258if = frVar;
    }

    public gw(Date date) {
        this(new Ccase(date));
    }

    public gw(Ccase ccase) {
        this.f2257do = ccase;
        this.f2258if = null;
    }

    /* renamed from: case, reason: not valid java name */
    public static gw m2790case(Cimport cimport, boolean z) {
        return m2791try(cimport.m33065const());
    }

    /* renamed from: try, reason: not valid java name */
    public static gw m2791try(Object obj) {
        if (obj instanceof gw) {
            return (gw) obj;
        }
        if (obj instanceof Ccase) {
            return new gw(Ccase.m32773final(obj));
        }
        if (obj != null) {
            return new gw(fr.m2388case(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public fr m2792else() {
        return this.f2258if;
    }

    /* renamed from: new, reason: not valid java name */
    public Ccase m2793new() {
        return this.f2257do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Ccase ccase = this.f2257do;
        return ccase != null ? ccase : this.f2258if.toASN1Primitive();
    }

    public String toString() {
        Ccase ccase = this.f2257do;
        return ccase != null ? ccase.toString() : this.f2258if.toString();
    }
}
