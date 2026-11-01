package android.support.v4;

import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.edec.EdECObjectIdentifiers;

/* loaded from: classes3.dex */
public class y50 implements AlgorithmParameterSpec {

    /* renamed from: for, reason: not valid java name */
    public static final String f8137for = "Ed448";

    /* renamed from: if, reason: not valid java name */
    public static final String f8138if = "Ed25519";

    /* renamed from: do, reason: not valid java name */
    private final String f8139do;

    public y50(String str) {
        if (!str.equalsIgnoreCase(f8138if)) {
            if (!str.equalsIgnoreCase(f8137for)) {
                if (!str.equals(EdECObjectIdentifiers.id_Ed25519.m32795super())) {
                    if (!str.equals(EdECObjectIdentifiers.id_Ed448.m32795super())) {
                        throw new IllegalArgumentException("unrecognized curve name: " + str);
                    }
                }
            }
            this.f8139do = f8137for;
            return;
        }
        this.f8139do = f8138if;
    }

    /* renamed from: do, reason: not valid java name */
    public String m9756do() {
        return this.f8139do;
    }
}
