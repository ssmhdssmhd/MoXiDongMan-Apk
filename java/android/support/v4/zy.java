package android.support.v4;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import org.bouncycastle.pqc.crypto.xmss.XMSSOid;

/* loaded from: classes3.dex */
public final class zy implements XMSSOid {

    /* renamed from: for, reason: not valid java name */
    private static final Map<String, zy> f8681for;

    /* renamed from: do, reason: not valid java name */
    private final int f8682do;

    /* renamed from: if, reason: not valid java name */
    private final String f8683if;

    static {
        HashMap map = new HashMap();
        map.put(m10325do("SHA-256", 32, 16, 67, 10), new zy(16777217, "XMSS_SHA2-256_W16_H10"));
        map.put(m10325do("SHA-256", 32, 16, 67, 16), new zy(33554434, "XMSS_SHA2-256_W16_H16"));
        map.put(m10325do("SHA-256", 32, 16, 67, 20), new zy(50331651, "XMSS_SHA2-256_W16_H20"));
        map.put(m10325do("SHA-512", 64, 16, 131, 10), new zy(67108868, "XMSS_SHA2-512_W16_H10"));
        map.put(m10325do("SHA-512", 64, 16, 131, 16), new zy(83886085, "XMSS_SHA2-512_W16_H16"));
        map.put(m10325do("SHA-512", 64, 16, 131, 20), new zy(100663302, "XMSS_SHA2-512_W16_H20"));
        map.put(m10325do("SHAKE128", 32, 16, 67, 10), new zy(117440519, "XMSS_SHAKE128_W16_H10"));
        map.put(m10325do("SHAKE128", 32, 16, 67, 16), new zy(134217736, "XMSS_SHAKE128_W16_H16"));
        map.put(m10325do("SHAKE128", 32, 16, 67, 20), new zy(150994953, "XMSS_SHAKE128_W16_H20"));
        map.put(m10325do("SHAKE256", 64, 16, 131, 10), new zy(167772170, "XMSS_SHAKE256_W16_H10"));
        map.put(m10325do("SHAKE256", 64, 16, 131, 16), new zy(184549387, "XMSS_SHAKE256_W16_H16"));
        map.put(m10325do("SHAKE256", 64, 16, 131, 20), new zy(201326604, "XMSS_SHAKE256_W16_H20"));
        f8681for = Collections.unmodifiableMap(map);
    }

    private zy(int i, String str) {
        this.f8682do = i;
        this.f8683if = str;
    }

    /* renamed from: do, reason: not valid java name */
    private static String m10325do(String str, int i, int i2, int i3, int i4) {
        Objects.requireNonNull(str, "algorithmName == null");
        return str + "-" + i + "-" + i2 + "-" + i3 + "-" + i4;
    }

    /* renamed from: if, reason: not valid java name */
    public static zy m10326if(String str, int i, int i2, int i3, int i4) {
        Objects.requireNonNull(str, "algorithmName == null");
        return f8681for.get(m10325do(str, i, i2, i3, i4));
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.XMSSOid
    public int getOid() {
        return this.f8682do;
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.XMSSOid
    public String toString() {
        return this.f8683if;
    }
}
