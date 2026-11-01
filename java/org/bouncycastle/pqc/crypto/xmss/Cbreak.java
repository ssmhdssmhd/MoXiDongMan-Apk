package org.bouncycastle.pqc.crypto.xmss;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.break, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cbreak implements XMSSOid {

    /* renamed from: for, reason: not valid java name */
    private static final Map<String, Cbreak> f32390for;

    /* renamed from: do, reason: not valid java name */
    private final int f32391do;

    /* renamed from: if, reason: not valid java name */
    private final String f32392if;

    static {
        HashMap map = new HashMap();
        map.put(m35834do("SHA-256", 32, 16, 67), new Cbreak(16777217, "WOTSP_SHA2-256_W16"));
        map.put(m35834do("SHA-512", 64, 16, 131), new Cbreak(33554434, "WOTSP_SHA2-512_W16"));
        map.put(m35834do("SHAKE128", 32, 16, 67), new Cbreak(50331651, "WOTSP_SHAKE128_W16"));
        map.put(m35834do("SHAKE256", 64, 16, 131), new Cbreak(67108868, "WOTSP_SHAKE256_W16"));
        f32390for = Collections.unmodifiableMap(map);
    }

    private Cbreak(int i, String str) {
        this.f32391do = i;
        this.f32392if = str;
    }

    /* renamed from: do, reason: not valid java name */
    private static String m35834do(String str, int i, int i2, int i3) {
        Objects.requireNonNull(str, "algorithmName == null");
        return str + "-" + i + "-" + i2 + "-" + i3;
    }

    /* renamed from: if, reason: not valid java name */
    public static Cbreak m35835if(String str, int i, int i2, int i3) {
        Objects.requireNonNull(str, "algorithmName == null");
        return f32390for.get(m35834do(str, i, i2, i3));
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.XMSSOid
    public int getOid() {
        return this.f32391do;
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.XMSSOid
    public String toString() {
        return this.f32392if;
    }
}
