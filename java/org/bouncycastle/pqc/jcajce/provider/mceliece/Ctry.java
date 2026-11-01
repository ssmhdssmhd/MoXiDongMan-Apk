package org.bouncycastle.pqc.jcajce.provider.mceliece;

import android.support.v4.a4;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry {
    /* renamed from: do, reason: not valid java name */
    public static a4 m36101do(PrivateKey privateKey) throws InvalidKeyException {
        if (privateKey instanceof Cdo) {
            return ((Cdo) privateKey).getKeyParams();
        }
        throw new InvalidKeyException("can't identify McElieceCCA2 private key.");
    }

    /* renamed from: if, reason: not valid java name */
    public static a4 m36102if(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof Cif) {
            return ((Cif) publicKey).getKeyParams();
        }
        throw new InvalidKeyException("can't identify McElieceCCA2 public key: " + publicKey.getClass().getName());
    }
}
