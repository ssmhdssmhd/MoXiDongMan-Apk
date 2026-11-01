package android.support.v4;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class kl0 {

    /* renamed from: break, reason: not valid java name */
    public static final int f3406break = 14540;

    /* renamed from: case, reason: not valid java name */
    public static final int f3407case = 13516;

    /* renamed from: catch, reason: not valid java name */
    public static final int f3408catch = 14796;

    /* renamed from: class, reason: not valid java name */
    public static final int f3409class = 15052;

    /* renamed from: do, reason: not valid java name */
    private static final Map<String, Integer> f3410do;

    /* renamed from: else, reason: not valid java name */
    public static final int f3411else = 13772;

    /* renamed from: for, reason: not valid java name */
    public static final int f3412for = 12748;

    /* renamed from: goto, reason: not valid java name */
    public static final int f3413goto = 14028;

    /* renamed from: if, reason: not valid java name */
    public static final int f3414if = 188;

    /* renamed from: new, reason: not valid java name */
    public static final int f3415new = 13004;

    /* renamed from: this, reason: not valid java name */
    public static final int f3416this = 14284;

    /* renamed from: try, reason: not valid java name */
    public static final int f3417try = 13260;

    static {
        HashMap map = new HashMap();
        map.put("RIPEMD128", hn0.m3072for(13004));
        map.put("RIPEMD160", hn0.m3072for(12748));
        map.put(qy0.f5539case, hn0.m3072for(13260));
        map.put(qy0.f5542else, hn0.m3072for(14540));
        map.put("SHA-256", hn0.m3072for(13516));
        map.put(qy0.f5544this, hn0.m3072for(14028));
        map.put("SHA-512", hn0.m3072for(13772));
        map.put("SHA-512/224", hn0.m3072for(f3408catch));
        map.put(zq1.f8632for, hn0.m3072for(f3409class));
        map.put("Whirlpool", hn0.m3072for(14284));
        f3410do = Collections.unmodifiableMap(map);
    }

    /* renamed from: do, reason: not valid java name */
    public static Integer m4434do(Digest digest) {
        return f3410do.get(digest.getAlgorithmName());
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m4435if(Digest digest) {
        return !f3410do.containsKey(digest.getAlgorithmName());
    }
}
