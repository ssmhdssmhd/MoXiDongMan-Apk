package org.bouncycastle.pqc.crypto.util;

import android.support.v4.b1;
import android.support.v4.bq1;
import android.support.v4.dq1;
import android.support.v4.hn0;
import android.support.v4.yp1;
import android.support.v4.yq1;
import android.support.v4.zq1;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;

/* renamed from: org.bouncycastle.pqc.crypto.util.try, reason: invalid class name */
/* loaded from: classes3.dex */
class Ctry {

    /* renamed from: break, reason: not valid java name */
    public static final b1 f32371break;

    /* renamed from: case, reason: not valid java name */
    public static final b1 f32372case;

    /* renamed from: catch, reason: not valid java name */
    public static final b1 f32373catch;

    /* renamed from: class, reason: not valid java name */
    public static final Map f32374class;

    /* renamed from: do, reason: not valid java name */
    public static final b1 f32375do;

    /* renamed from: else, reason: not valid java name */
    public static final b1 f32376else;

    /* renamed from: for, reason: not valid java name */
    public static final b1 f32377for;

    /* renamed from: goto, reason: not valid java name */
    public static final b1 f32378goto;

    /* renamed from: if, reason: not valid java name */
    public static final b1 f32379if;

    /* renamed from: new, reason: not valid java name */
    public static final b1 f32380new;

    /* renamed from: this, reason: not valid java name */
    public static final b1 f32381this;

    /* renamed from: try, reason: not valid java name */
    public static final b1 f32382try;

    static {
        Ccatch ccatch = PQCObjectIdentifiers.qTESLA_I;
        f32375do = new b1(ccatch);
        Ccatch ccatch2 = PQCObjectIdentifiers.qTESLA_III_size;
        f32379if = new b1(ccatch2);
        Ccatch ccatch3 = PQCObjectIdentifiers.qTESLA_III_speed;
        f32377for = new b1(ccatch3);
        Ccatch ccatch4 = PQCObjectIdentifiers.qTESLA_p_I;
        f32380new = new b1(ccatch4);
        Ccatch ccatch5 = PQCObjectIdentifiers.qTESLA_p_III;
        f32382try = new b1(ccatch5);
        f32372case = new b1(NISTObjectIdentifiers.id_sha3_256);
        f32376else = new b1(NISTObjectIdentifiers.id_sha512_256);
        f32378goto = new b1(NISTObjectIdentifiers.id_sha256);
        f32381this = new b1(NISTObjectIdentifiers.id_sha512);
        f32371break = new b1(NISTObjectIdentifiers.id_shake128);
        f32373catch = new b1(NISTObjectIdentifiers.id_shake256);
        HashMap map = new HashMap();
        f32374class = map;
        map.put(ccatch, hn0.m3072for(0));
        map.put(ccatch2, hn0.m3072for(1));
        map.put(ccatch3, hn0.m3072for(2));
        map.put(ccatch4, hn0.m3072for(3));
        map.put(ccatch5, hn0.m3072for(4));
    }

    /* renamed from: case, reason: not valid java name */
    public static b1 m35817case(String str) {
        if (str.equals("SHA-256")) {
            return f32378goto;
        }
        if (str.equals("SHA-512")) {
            return f32381this;
        }
        if (str.equals("SHAKE128")) {
            return f32371break;
        }
        if (str.equals("SHAKE256")) {
            return f32373catch;
        }
        throw new IllegalArgumentException("unknown tree digest: " + str);
    }

    /* renamed from: do, reason: not valid java name */
    public static Digest m35818do(Ccatch ccatch) {
        if (ccatch.equals(NISTObjectIdentifiers.id_sha256)) {
            return new yp1();
        }
        if (ccatch.equals(NISTObjectIdentifiers.id_sha512)) {
            return new bq1();
        }
        if (ccatch.equals(NISTObjectIdentifiers.id_shake128)) {
            return new dq1(128);
        }
        if (ccatch.equals(NISTObjectIdentifiers.id_shake256)) {
            return new dq1(256);
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + ccatch);
    }

    /* renamed from: for, reason: not valid java name */
    public static int m35819for(b1 b1Var) {
        return ((Integer) f32374class.get(b1Var.m420new())).intValue();
    }

    /* renamed from: if, reason: not valid java name */
    public static b1 m35820if(int i) {
        if (i == 0) {
            return f32375do;
        }
        if (i == 1) {
            return f32379if;
        }
        if (i == 2) {
            return f32377for;
        }
        if (i == 3) {
            return f32380new;
        }
        if (i == 4) {
            return f32382try;
        }
        throw new IllegalArgumentException("unknown security category: " + i);
    }

    /* renamed from: new, reason: not valid java name */
    public static b1 m35821new(String str) {
        if (str.equals("SHA3-256")) {
            return f32372case;
        }
        if (str.equals(zq1.f8632for)) {
            return f32376else;
        }
        throw new IllegalArgumentException("unknown tree digest: " + str);
    }

    /* renamed from: try, reason: not valid java name */
    public static String m35822try(yq1 yq1Var) {
        b1 b1VarM9930try = yq1Var.m9930try();
        if (b1VarM9930try.m420new().equals(f32372case.m420new())) {
            return "SHA3-256";
        }
        if (b1VarM9930try.m420new().equals(f32376else.m420new())) {
            return zq1.f8632for;
        }
        throw new IllegalArgumentException("unknown tree digest: " + b1VarM9930try.m420new());
    }
}
