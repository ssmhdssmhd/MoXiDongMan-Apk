package android.support.v4;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.rosstandart.RosstandartObjectIdentifiers;

/* loaded from: classes3.dex */
public class of0 implements AlgorithmParameterSpec {

    /* renamed from: for, reason: not valid java name */
    private static Map f4584for;

    /* renamed from: do, reason: not valid java name */
    private byte[] f4585do;

    /* renamed from: if, reason: not valid java name */
    private byte[] f4586if;

    static {
        HashMap map = new HashMap();
        f4584for = map;
        map.put(CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_A_ParamSet, "E-A");
        f4584for.put(CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_B_ParamSet, "E-B");
        f4584for.put(CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_C_ParamSet, "E-C");
        f4584for.put(CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_D_ParamSet, "E-D");
        f4584for.put(RosstandartObjectIdentifiers.id_tc26_gost_28147_param_Z, "Param-Z");
    }

    public of0(String str) {
        this.f4585do = null;
        this.f4586if = null;
        this.f4586if = mf0.m4916case(str);
    }

    public of0(String str, byte[] bArr) {
        this(str);
        byte[] bArr2 = new byte[bArr.length];
        this.f4585do = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
    }

    public of0(Ccatch ccatch, byte[] bArr) {
        this(m5619if(ccatch));
        this.f4585do = q3.m6371final(bArr);
    }

    public of0(byte[] bArr) {
        this.f4585do = null;
        this.f4586if = null;
        byte[] bArr2 = new byte[bArr.length];
        this.f4586if = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
    }

    public of0(byte[] bArr, byte[] bArr2) {
        this(bArr);
        byte[] bArr3 = new byte[bArr2.length];
        this.f4585do = bArr3;
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
    }

    /* renamed from: if, reason: not valid java name */
    private static String m5619if(Ccatch ccatch) {
        String str = (String) f4584for.get(ccatch);
        if (str != null) {
            return str;
        }
        throw new IllegalArgumentException("unknown OID: " + ccatch);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m5620do() {
        return q3.m6371final(this.f4585do);
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m5621for() {
        return q3.m6371final(this.f4586if);
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m5622new() {
        return q3.m6371final(this.f4586if);
    }
}
