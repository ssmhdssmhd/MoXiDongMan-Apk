package org.bouncycastle.jcajce.provider.asymmetric.util;

import android.support.v4.a4;
import android.support.v4.ag0;
import android.support.v4.dg0;
import android.support.v4.eg0;
import android.support.v4.yf0;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import org.bouncycastle.jce.interfaces.GOST3410PrivateKey;
import org.bouncycastle.jce.interfaces.GOST3410PublicKey;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.util.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto {
    /* renamed from: do, reason: not valid java name */
    public static a4 m34747do(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof GOST3410PrivateKey)) {
            throw new InvalidKeyException("can't identify GOST3410 private key.");
        }
        GOST3410PrivateKey gOST3410PrivateKey = (GOST3410PrivateKey) privateKey;
        dg0 publicKeyParameters = gOST3410PrivateKey.getParameters().getPublicKeyParameters();
        return new ag0(gOST3410PrivateKey.getX(), new yf0(publicKeyParameters.m1336if(), publicKeyParameters.m1335for(), publicKeyParameters.m1334do()));
    }

    /* renamed from: if, reason: not valid java name */
    public static a4 m34748if(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof GOST3410PublicKey) {
            GOST3410PublicKey gOST3410PublicKey = (GOST3410PublicKey) publicKey;
            dg0 publicKeyParameters = gOST3410PublicKey.getParameters().getPublicKeyParameters();
            return new eg0(gOST3410PublicKey.getY(), new yf0(publicKeyParameters.m1336if(), publicKeyParameters.m1335for(), publicKeyParameters.m1334do()));
        }
        throw new InvalidKeyException("can't identify GOST3410 public key: " + publicKey.getClass().getName());
    }
}
