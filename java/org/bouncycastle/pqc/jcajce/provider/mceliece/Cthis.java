package org.bouncycastle.pqc.jcajce.provider.mceliece;

import android.support.v4.a4;
import android.support.v4.gz0;
import android.support.v4.y5;
import android.support.v4.z5;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis {
    /* renamed from: do, reason: not valid java name */
    public static a4 m36099do(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof y5)) {
            throw new InvalidKeyException("can't identify McEliece private key.");
        }
        y5 y5Var = (y5) privateKey;
        return new gz0(y5Var.getN(), y5Var.getK(), y5Var.getField(), y5Var.getGoppaPoly(), y5Var.getP1(), y5Var.getP2(), y5Var.getSInv());
    }

    /* renamed from: if, reason: not valid java name */
    public static a4 m36100if(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof z5) {
            return ((z5) publicKey).getKeyParams();
        }
        throw new InvalidKeyException("can't identify McEliece public key: " + publicKey.getClass().getName());
    }
}
