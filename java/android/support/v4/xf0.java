package android.support.v4;

import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.rosstandart.RosstandartObjectIdentifiers;

/* loaded from: classes3.dex */
public class xf0 implements AlgorithmParameterSpec {

    /* renamed from: do, reason: not valid java name */
    private final Ccatch f7903do;

    /* renamed from: for, reason: not valid java name */
    private final Ccatch f7904for;

    /* renamed from: if, reason: not valid java name */
    private final Ccatch f7905if;

    public xf0(String str) {
        this(m9490new(str), m9489do(str), null);
    }

    public xf0(Ccatch ccatch, Ccatch ccatch2) {
        this(ccatch, ccatch2, null);
    }

    public xf0(Ccatch ccatch, Ccatch ccatch2, Ccatch ccatch3) {
        this.f7903do = ccatch;
        this.f7905if = ccatch2;
        this.f7904for = ccatch3;
    }

    /* renamed from: do, reason: not valid java name */
    private static Ccatch m9489do(String str) {
        return str.indexOf("12-512") > 0 ? RosstandartObjectIdentifiers.id_tc26_gost_3411_12_512 : str.indexOf("12-256") > 0 ? RosstandartObjectIdentifiers.id_tc26_gost_3411_12_256 : CryptoProObjectIdentifiers.gostR3411_94_CryptoProParamSet;
    }

    /* renamed from: new, reason: not valid java name */
    private static Ccatch m9490new(String str) {
        return j40.m3722try(str);
    }

    /* renamed from: case, reason: not valid java name */
    public String m9491case() {
        return j40.m3719for(m9494try());
    }

    /* renamed from: for, reason: not valid java name */
    public Ccatch m9492for() {
        return this.f7904for;
    }

    /* renamed from: if, reason: not valid java name */
    public Ccatch m9493if() {
        return this.f7905if;
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m9494try() {
        return this.f7903do;
    }
}
