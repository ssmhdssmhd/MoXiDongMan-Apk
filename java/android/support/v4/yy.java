package android.support.v4;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import org.bouncycastle.pqc.crypto.xmss.XMSSOid;

/* loaded from: classes3.dex */
public final class yy implements XMSSOid {

    /* renamed from: for, reason: not valid java name */
    private static final Map<String, yy> f8364for;

    /* renamed from: do, reason: not valid java name */
    private final int f8365do;

    /* renamed from: if, reason: not valid java name */
    private final String f8366if;

    static {
        HashMap map = new HashMap();
        map.put(m9991do("SHA-256", 32, 16, 67, 20, 2), new yy(16777217, "XMSSMT_SHA2-256_W16_H20_D2"));
        map.put(m9991do("SHA-256", 32, 16, 67, 20, 4), new yy(16777217, "XMSSMT_SHA2-256_W16_H20_D4"));
        map.put(m9991do("SHA-256", 32, 16, 67, 40, 2), new yy(16777217, "XMSSMT_SHA2-256_W16_H40_D2"));
        map.put(m9991do("SHA-256", 32, 16, 67, 40, 2), new yy(16777217, "XMSSMT_SHA2-256_W16_H40_D4"));
        map.put(m9991do("SHA-256", 32, 16, 67, 40, 4), new yy(16777217, "XMSSMT_SHA2-256_W16_H40_D8"));
        map.put(m9991do("SHA-256", 32, 16, 67, 60, 8), new yy(16777217, "XMSSMT_SHA2-256_W16_H60_D3"));
        map.put(m9991do("SHA-256", 32, 16, 67, 60, 6), new yy(16777217, "XMSSMT_SHA2-256_W16_H60_D6"));
        map.put(m9991do("SHA-256", 32, 16, 67, 60, 12), new yy(16777217, "XMSSMT_SHA2-256_W16_H60_D12"));
        map.put(m9991do("SHA2-512", 64, 16, 131, 20, 2), new yy(16777217, "XMSSMT_SHA2-512_W16_H20_D2"));
        map.put(m9991do("SHA2-512", 64, 16, 131, 20, 4), new yy(16777217, "XMSSMT_SHA2-512_W16_H20_D4"));
        map.put(m9991do("SHA2-512", 64, 16, 131, 40, 2), new yy(16777217, "XMSSMT_SHA2-512_W16_H40_D2"));
        map.put(m9991do("SHA2-512", 64, 16, 131, 40, 4), new yy(16777217, "XMSSMT_SHA2-512_W16_H40_D4"));
        map.put(m9991do("SHA2-512", 64, 16, 131, 40, 8), new yy(16777217, "XMSSMT_SHA2-512_W16_H40_D8"));
        map.put(m9991do("SHA2-512", 64, 16, 131, 60, 3), new yy(16777217, "XMSSMT_SHA2-512_W16_H60_D3"));
        map.put(m9991do("SHA2-512", 64, 16, 131, 60, 6), new yy(16777217, "XMSSMT_SHA2-512_W16_H60_D6"));
        map.put(m9991do("SHA2-512", 64, 16, 131, 60, 12), new yy(16777217, "XMSSMT_SHA2-512_W16_H60_D12"));
        map.put(m9991do("SHAKE128", 32, 16, 67, 20, 2), new yy(16777217, "XMSSMT_SHAKE128_W16_H20_D2"));
        map.put(m9991do("SHAKE128", 32, 16, 67, 20, 4), new yy(16777217, "XMSSMT_SHAKE128_W16_H20_D4"));
        map.put(m9991do("SHAKE128", 32, 16, 67, 40, 2), new yy(16777217, "XMSSMT_SHAKE128_W16_H40_D2"));
        map.put(m9991do("SHAKE128", 32, 16, 67, 40, 4), new yy(16777217, "XMSSMT_SHAKE128_W16_H40_D4"));
        map.put(m9991do("SHAKE128", 32, 16, 67, 40, 8), new yy(16777217, "XMSSMT_SHAKE128_W16_H40_D8"));
        map.put(m9991do("SHAKE128", 32, 16, 67, 60, 3), new yy(16777217, "XMSSMT_SHAKE128_W16_H60_D3"));
        map.put(m9991do("SHAKE128", 32, 16, 67, 60, 6), new yy(16777217, "XMSSMT_SHAKE128_W16_H60_D6"));
        map.put(m9991do("SHAKE128", 32, 16, 67, 60, 12), new yy(16777217, "XMSSMT_SHAKE128_W16_H60_D12"));
        map.put(m9991do("SHAKE256", 64, 16, 131, 20, 2), new yy(16777217, "XMSSMT_SHAKE256_W16_H20_D2"));
        map.put(m9991do("SHAKE256", 64, 16, 131, 20, 4), new yy(16777217, "XMSSMT_SHAKE256_W16_H20_D4"));
        map.put(m9991do("SHAKE256", 64, 16, 131, 40, 2), new yy(16777217, "XMSSMT_SHAKE256_W16_H40_D2"));
        map.put(m9991do("SHAKE256", 64, 16, 131, 40, 4), new yy(16777217, "XMSSMT_SHAKE256_W16_H40_D4"));
        map.put(m9991do("SHAKE256", 64, 16, 131, 40, 8), new yy(16777217, "XMSSMT_SHAKE256_W16_H40_D8"));
        map.put(m9991do("SHAKE256", 64, 16, 131, 60, 3), new yy(16777217, "XMSSMT_SHAKE256_W16_H60_D3"));
        map.put(m9991do("SHAKE256", 64, 16, 131, 60, 6), new yy(16777217, "XMSSMT_SHAKE256_W16_H60_D6"));
        map.put(m9991do("SHAKE256", 64, 16, 131, 60, 12), new yy(16777217, "XMSSMT_SHAKE256_W16_H60_D12"));
        f8364for = Collections.unmodifiableMap(map);
    }

    private yy(int i, String str) {
        this.f8365do = i;
        this.f8366if = str;
    }

    /* renamed from: do, reason: not valid java name */
    private static String m9991do(String str, int i, int i2, int i3, int i4, int i5) {
        Objects.requireNonNull(str, "algorithmName == null");
        return str + "-" + i + "-" + i2 + "-" + i3 + "-" + i4 + "-" + i5;
    }

    /* renamed from: if, reason: not valid java name */
    public static yy m9992if(String str, int i, int i2, int i3, int i4, int i5) {
        Objects.requireNonNull(str, "algorithmName == null");
        return f8364for.get(m9991do(str, i, i2, i3, i4, i5));
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.XMSSOid
    public int getOid() {
        return this.f8365do;
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.XMSSOid
    public String toString() {
        return this.f8366if;
    }
}
