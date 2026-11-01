package android.support.v4;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.rosstandart.RosstandartObjectIdentifiers;

/* loaded from: classes3.dex */
public class qf0 implements AlgorithmParameterSpec {

    /* renamed from: for, reason: not valid java name */
    private static Map f5360for;

    /* renamed from: do, reason: not valid java name */
    private byte[] f5361do;

    /* renamed from: if, reason: not valid java name */
    private byte[] f5362if;

    static {
        HashMap map = new HashMap();
        f5360for = map;
        map.put(CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_A_ParamSet, "E-A");
        f5360for.put(CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_B_ParamSet, "E-B");
        f5360for.put(CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_C_ParamSet, "E-C");
        f5360for.put(CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_D_ParamSet, "E-D");
        f5360for.put(RosstandartObjectIdentifiers.id_tc26_gost_28147_param_Z, "Param-Z");
    }

    public qf0(String str) {
        this.f5361do = null;
        this.f5362if = null;
        this.f5362if = mf0.m4916case(str);
    }

    public qf0(String str, byte[] bArr) {
        this(str);
        byte[] bArr2 = new byte[bArr.length];
        this.f5361do = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
    }

    public qf0(Ccatch ccatch, byte[] bArr) {
        this(m6545do(ccatch));
        this.f5361do = q3.m6371final(bArr);
    }

    public qf0(byte[] bArr) {
        this.f5361do = null;
        this.f5362if = null;
        byte[] bArr2 = new byte[bArr.length];
        this.f5362if = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
    }

    public qf0(byte[] bArr, byte[] bArr2) {
        this(bArr);
        byte[] bArr3 = new byte[bArr2.length];
        this.f5361do = bArr3;
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
    }

    /* renamed from: do, reason: not valid java name */
    private static String m6545do(Ccatch ccatch) {
        String str = (String) f5360for.get(ccatch);
        if (str != null) {
            return str;
        }
        throw new IllegalArgumentException("unknown OID: " + ccatch);
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m6546for() {
        return q3.m6371final(this.f5361do);
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m6547if() {
        return q3.m6371final(this.f5362if);
    }
}
