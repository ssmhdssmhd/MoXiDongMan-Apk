package org.bouncycastle.asn1.iso;

import org.bouncycastle.asn1.Ccatch;

/* loaded from: classes3.dex */
public interface ISOIECObjectIdentifiers {
    public static final Ccatch hash_algorithms;
    public static final Ccatch id_ac_generic_hybrid;
    public static final Ccatch id_kem_rsa;
    public static final Ccatch is18033_2;
    public static final Ccatch iso_encryption_algorithms;
    public static final Ccatch ripemd128;
    public static final Ccatch ripemd160;
    public static final Ccatch whirlpool;

    static {
        Ccatch ccatch = new Ccatch("1.0.10118");
        iso_encryption_algorithms = ccatch;
        Ccatch ccatchM32792catch = ccatch.m32792catch("3.0");
        hash_algorithms = ccatchM32792catch;
        ripemd160 = ccatchM32792catch.m32792catch("49");
        ripemd128 = ccatchM32792catch.m32792catch("50");
        whirlpool = ccatchM32792catch.m32792catch("55");
        Ccatch ccatch2 = new Ccatch("1.0.18033.2");
        is18033_2 = ccatch2;
        id_ac_generic_hybrid = ccatch2.m32792catch("1.2");
        id_kem_rsa = ccatch2.m32792catch("2.4");
    }
}
