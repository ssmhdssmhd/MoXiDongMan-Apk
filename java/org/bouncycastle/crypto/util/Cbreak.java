package org.bouncycastle.crypto.util;

import android.support.v4.b1;
import android.support.v4.hn0;
import android.support.v4.u91;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.gm.GMObjectIdentifiers;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.rosstandart.RosstandartObjectIdentifiers;

/* renamed from: org.bouncycastle.crypto.util.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak extends u91 {

    /* renamed from: break, reason: not valid java name */
    private static final Map f30861break;

    /* renamed from: case, reason: not valid java name */
    public static final b1 f30862case;

    /* renamed from: else, reason: not valid java name */
    public static final b1 f30863else;

    /* renamed from: goto, reason: not valid java name */
    public static final b1 f30864goto;

    /* renamed from: this, reason: not valid java name */
    public static final b1 f30865this;

    /* renamed from: try, reason: not valid java name */
    public static final b1 f30866try;

    /* renamed from: for, reason: not valid java name */
    private final int f30867for;

    /* renamed from: if, reason: not valid java name */
    private final int f30868if;

    /* renamed from: new, reason: not valid java name */
    private final b1 f30869new;

    /* renamed from: org.bouncycastle.crypto.util.break$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private int f30870do = 1024;

        /* renamed from: if, reason: not valid java name */
        private int f30872if = -1;

        /* renamed from: for, reason: not valid java name */
        private b1 f30871for = Cbreak.f30866try;

        /* renamed from: case, reason: not valid java name */
        public Cif m34460case(b1 b1Var) {
            this.f30871for = b1Var;
            return this;
        }

        /* renamed from: else, reason: not valid java name */
        public Cif m34461else(int i) {
            this.f30872if = i;
            return this;
        }

        /* renamed from: new, reason: not valid java name */
        public Cbreak m34462new() {
            return new Cbreak(this);
        }

        /* renamed from: try, reason: not valid java name */
        public Cif m34463try(int i) {
            this.f30870do = i;
            return this;
        }
    }

    static {
        Ccatch ccatch = PKCSObjectIdentifiers.id_hmacWithSHA1;
        h hVar = h.f29080do;
        f30866try = new b1(ccatch, hVar);
        Ccatch ccatch2 = PKCSObjectIdentifiers.id_hmacWithSHA256;
        f30862case = new b1(ccatch2, hVar);
        Ccatch ccatch3 = PKCSObjectIdentifiers.id_hmacWithSHA512;
        f30863else = new b1(ccatch3, hVar);
        Ccatch ccatch4 = NISTObjectIdentifiers.id_hmacWithSHA3_256;
        f30864goto = new b1(ccatch4, hVar);
        Ccatch ccatch5 = NISTObjectIdentifiers.id_hmacWithSHA3_512;
        f30865this = new b1(ccatch5, hVar);
        HashMap map = new HashMap();
        f30861break = map;
        map.put(ccatch, hn0.m3072for(20));
        map.put(ccatch2, hn0.m3072for(32));
        map.put(ccatch3, hn0.m3072for(64));
        map.put(PKCSObjectIdentifiers.id_hmacWithSHA224, hn0.m3072for(28));
        map.put(PKCSObjectIdentifiers.id_hmacWithSHA384, hn0.m3072for(48));
        map.put(NISTObjectIdentifiers.id_hmacWithSHA3_224, hn0.m3072for(28));
        map.put(ccatch4, hn0.m3072for(32));
        map.put(NISTObjectIdentifiers.id_hmacWithSHA3_384, hn0.m3072for(48));
        map.put(ccatch5, hn0.m3072for(64));
        map.put(CryptoProObjectIdentifiers.gostR3411Hmac, hn0.m3072for(32));
        map.put(RosstandartObjectIdentifiers.id_tc26_hmac_gost_3411_12_256, hn0.m3072for(32));
        map.put(RosstandartObjectIdentifiers.id_tc26_hmac_gost_3411_12_512, hn0.m3072for(64));
        map.put(GMObjectIdentifiers.hmac_sm3, hn0.m3072for(32));
    }

    private Cbreak(Cif cif) {
        super(PKCSObjectIdentifiers.id_PBKDF2);
        this.f30868if = cif.f30870do;
        b1 b1Var = cif.f30871for;
        this.f30869new = b1Var;
        this.f30867for = cif.f30872if < 0 ? m34453try(b1Var.m420new()) : cif.f30872if;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m34453try(Ccatch ccatch) {
        Map map = f30861break;
        if (map.containsKey(ccatch)) {
            return ((Integer) map.get(ccatch)).intValue();
        }
        throw new IllegalStateException("no salt size for algorithm: " + ccatch);
    }

    /* renamed from: for, reason: not valid java name */
    public b1 m34454for() {
        return this.f30869new;
    }

    /* renamed from: if, reason: not valid java name */
    public int m34455if() {
        return this.f30868if;
    }

    /* renamed from: new, reason: not valid java name */
    public int m34456new() {
        return this.f30867for;
    }
}
