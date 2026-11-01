package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class fu extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f1992do;

    /* renamed from: for, reason: not valid java name */
    private Cgoto f1993for;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f1994if;

    /* renamed from: new, reason: not valid java name */
    private Cgoto f1995new;

    /* renamed from: try, reason: not valid java name */
    private yu f1996try;

    public fu(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, yu yuVar) {
        if (bigInteger == null) {
            throw new IllegalArgumentException("'p' cannot be null");
        }
        if (bigInteger2 == null) {
            throw new IllegalArgumentException("'g' cannot be null");
        }
        if (bigInteger3 == null) {
            throw new IllegalArgumentException("'q' cannot be null");
        }
        this.f1992do = new Cgoto(bigInteger);
        this.f1994if = new Cgoto(bigInteger2);
        this.f1993for = new Cgoto(bigInteger3);
        this.f1995new = new Cgoto(bigInteger4);
        this.f1996try = yuVar;
    }

    public fu(Cgoto cgoto, Cgoto cgoto2, Cgoto cgoto3, Cgoto cgoto4, yu yuVar) {
        if (cgoto == null) {
            throw new IllegalArgumentException("'p' cannot be null");
        }
        if (cgoto2 == null) {
            throw new IllegalArgumentException("'g' cannot be null");
        }
        if (cgoto3 == null) {
            throw new IllegalArgumentException("'q' cannot be null");
        }
        this.f1992do = cgoto;
        this.f1994if = cgoto2;
        this.f1993for = cgoto3;
        this.f1995new = cgoto4;
        this.f1996try = yuVar;
    }

    private fu(Csuper csuper) {
        if (csuper.size() < 3 || csuper.size() > 5) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f1992do = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        this.f1994if = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        this.f1993for = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        ASN1Encodable aSN1EncodableM2408goto = m2408goto(enumerationMo33076super);
        if (aSN1EncodableM2408goto != null && (aSN1EncodableM2408goto instanceof Cgoto)) {
            this.f1995new = Cgoto.m33040catch(aSN1EncodableM2408goto);
            aSN1EncodableM2408goto = m2408goto(enumerationMo33076super);
        }
        if (aSN1EncodableM2408goto != null) {
            this.f1996try = yu.m9941new(aSN1EncodableM2408goto.toASN1Primitive());
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static fu m2407case(Cimport cimport, boolean z) {
        return m2409try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: goto, reason: not valid java name */
    private static ASN1Encodable m2408goto(Enumeration enumeration) {
        if (enumeration.hasMoreElements()) {
            return (ASN1Encodable) enumeration.nextElement();
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static fu m2409try(Object obj) {
        if (obj == null || (obj instanceof fu)) {
            return (fu) obj;
        }
        if (obj instanceof Csuper) {
            return new fu((Csuper) obj);
        }
        throw new IllegalArgumentException("Invalid DHDomainParameters: " + obj.getClass().getName());
    }

    /* renamed from: break, reason: not valid java name */
    public Cgoto m2410break() {
        return this.f1993for;
    }

    /* renamed from: catch, reason: not valid java name */
    public yu m2411catch() {
        return this.f1996try;
    }

    /* renamed from: else, reason: not valid java name */
    public Cgoto m2412else() {
        return this.f1995new;
    }

    /* renamed from: new, reason: not valid java name */
    public Cgoto m2413new() {
        return this.f1994if;
    }

    /* renamed from: this, reason: not valid java name */
    public Cgoto m2414this() {
        return this.f1992do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f1992do);
        cimport.m3516do(this.f1994if);
        cimport.m3516do(this.f1993for);
        Cgoto cgoto = this.f1995new;
        if (cgoto != null) {
            cimport.m3516do(cgoto);
        }
        yu yuVar = this.f1996try;
        if (yuVar != null) {
            cimport.m3516do(yuVar);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
