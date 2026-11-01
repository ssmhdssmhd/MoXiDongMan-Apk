package org.bouncycastle.asn1.edec;

import org.bouncycastle.asn1.Ccatch;

/* loaded from: classes3.dex */
public interface EdECObjectIdentifiers {
    public static final Ccatch id_Ed25519;
    public static final Ccatch id_Ed448;
    public static final Ccatch id_X25519;
    public static final Ccatch id_X448;
    public static final Ccatch id_edwards_curve_algs;

    static {
        Ccatch ccatch = new Ccatch("1.3.101");
        id_edwards_curve_algs = ccatch;
        id_X25519 = ccatch.m32792catch("110").m32793import();
        id_X448 = ccatch.m32792catch("111").m32793import();
        id_Ed25519 = ccatch.m32792catch("112").m32793import();
        id_Ed448 = ccatch.m32792catch("113").m32793import();
    }
}
