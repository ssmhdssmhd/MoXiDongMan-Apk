package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.eac.Ctry;
import org.bouncycastle.asn1.eac.EACObjectIdentifiers;

/* loaded from: classes3.dex */
public abstract class ug1 extends Cbreak {
    /* renamed from: new, reason: not valid java name */
    public static ug1 m8441new(Object obj) {
        if (obj instanceof ug1) {
            return (ug1) obj;
        }
        if (obj == null) {
            return null;
        }
        Csuper csuperM33129catch = Csuper.m33129catch(obj);
        return Ccatch.m32790throw(csuperM33129catch.mo33075final(0)).m32794return(EACObjectIdentifiers.id_TA_ECDSA) ? new Ctry(csuperM33129catch) : new hk1(csuperM33129catch);
    }

    /* renamed from: try */
    public abstract Ccatch mo3055try();
}
