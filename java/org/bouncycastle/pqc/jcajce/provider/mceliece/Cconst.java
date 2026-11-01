package org.bouncycastle.pqc.jcajce.provider.mceliece;

import android.support.v4.b1;
import android.support.v4.qy0;
import android.support.v4.u00;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.const, reason: invalid class name */
/* loaded from: classes3.dex */
class Cconst {
    /* renamed from: do, reason: not valid java name */
    public static b1 m36092do(String str) {
        if (str.equals(qy0.f5539case)) {
            return new b1(OIWObjectIdentifiers.idSHA1, h.f29080do);
        }
        if (str.equals(qy0.f5542else)) {
            return new b1(NISTObjectIdentifiers.id_sha224, h.f29080do);
        }
        if (str.equals("SHA-256")) {
            return new b1(NISTObjectIdentifiers.id_sha256, h.f29080do);
        }
        if (str.equals(qy0.f5544this)) {
            return new b1(NISTObjectIdentifiers.id_sha384, h.f29080do);
        }
        if (str.equals("SHA-512")) {
            return new b1(NISTObjectIdentifiers.id_sha512, h.f29080do);
        }
        throw new IllegalArgumentException("unrecognised digest algorithm: " + str);
    }

    /* renamed from: if, reason: not valid java name */
    public static Digest m36093if(b1 b1Var) {
        if (b1Var.m420new().equals(OIWObjectIdentifiers.idSHA1)) {
            return u00.m8176if();
        }
        if (b1Var.m420new().equals(NISTObjectIdentifiers.id_sha224)) {
            return u00.m8174for();
        }
        if (b1Var.m420new().equals(NISTObjectIdentifiers.id_sha256)) {
            return u00.m8177new();
        }
        if (b1Var.m420new().equals(NISTObjectIdentifiers.id_sha384)) {
            return u00.m8179try();
        }
        if (b1Var.m420new().equals(NISTObjectIdentifiers.id_sha512)) {
            return u00.m8168break();
        }
        throw new IllegalArgumentException("unrecognised OID in digest algorithm identifier: " + b1Var.m420new());
    }
}
