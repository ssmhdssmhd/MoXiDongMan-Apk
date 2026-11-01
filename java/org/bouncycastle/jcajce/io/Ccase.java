package org.bouncycastle.jcajce.io;

import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.Signature;
import javax.crypto.Mac;

/* renamed from: org.bouncycastle.jcajce.io.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase {
    /* renamed from: do, reason: not valid java name */
    public static OutputStream m34581do(MessageDigest messageDigest) {
        return new Cfor(messageDigest);
    }

    /* renamed from: for, reason: not valid java name */
    public static OutputStream m34582for(Mac mac) {
        return new Ctry(mac);
    }

    /* renamed from: if, reason: not valid java name */
    public static OutputStream m34583if(Signature signature) {
        return new Celse(signature);
    }
}
