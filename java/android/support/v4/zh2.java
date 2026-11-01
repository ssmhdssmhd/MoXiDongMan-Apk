package android.support.v4;

import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.edec.EdECObjectIdentifiers;

/* loaded from: classes3.dex */
public class zh2 implements AlgorithmParameterSpec {

    /* renamed from: for, reason: not valid java name */
    public static final String f8561for = "X448";

    /* renamed from: if, reason: not valid java name */
    public static final String f8562if = "X25519";

    /* renamed from: do, reason: not valid java name */
    private final String f8563do;

    public zh2(String str) {
        if (!str.equalsIgnoreCase(f8562if)) {
            if (!str.equalsIgnoreCase(f8561for)) {
                if (!str.equals(EdECObjectIdentifiers.id_X25519.m32795super())) {
                    if (!str.equals(EdECObjectIdentifiers.id_X448.m32795super())) {
                        throw new IllegalArgumentException("unrecognized curve name: " + str);
                    }
                }
            }
            this.f8563do = f8561for;
            return;
        }
        this.f8563do = f8562if;
    }

    /* renamed from: do, reason: not valid java name */
    public String m10214do() {
        return this.f8563do;
    }
}
