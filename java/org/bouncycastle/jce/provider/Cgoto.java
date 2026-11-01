package org.bouncycastle.jce.provider;

import android.support.v4.a4;
import android.support.v4.ou;
import android.support.v4.pu;
import android.support.v4.ru;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;

/* renamed from: org.bouncycastle.jce.provider.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto {
    /* renamed from: do, reason: not valid java name */
    public static a4 m35044do(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof DHPrivateKey)) {
            throw new InvalidKeyException("can't identify DH private key.");
        }
        DHPrivateKey dHPrivateKey = (DHPrivateKey) privateKey;
        return new pu(dHPrivateKey.getX(), new ou(dHPrivateKey.getParams().getP(), dHPrivateKey.getParams().getG(), null, dHPrivateKey.getParams().getL()));
    }

    /* renamed from: if, reason: not valid java name */
    public static a4 m35045if(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof DHPublicKey)) {
            throw new InvalidKeyException("can't identify DH public key.");
        }
        DHPublicKey dHPublicKey = (DHPublicKey) publicKey;
        return new ru(dHPublicKey.getY(), new ou(dHPublicKey.getParams().getP(), dHPublicKey.getParams().getG(), null, dHPublicKey.getParams().getL()));
    }
}
