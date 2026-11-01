package org.bouncycastle.jcajce.provider.asymmetric.ec;

import android.support.v4.a4;
import android.support.v4.rh2;
import android.support.v4.t30;
import android.support.v4.th2;
import android.support.v4.y40;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PublicKey;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECParameterSpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cthis;
import org.bouncycastle.asn1.h;
import org.bouncycastle.jcajce.provider.asymmetric.util.Celse;
import org.bouncycastle.math.ec.Cif;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.new, reason: invalid class name */
/* loaded from: classes3.dex */
class Cnew {
    /* renamed from: do, reason: not valid java name */
    public static a4 m34667do(PublicKey publicKey) throws InvalidKeyException {
        return publicKey instanceof Cfor ? ((Cfor) publicKey).engineGetKeyParameters() : Celse.m34743try(publicKey);
    }

    /* renamed from: for, reason: not valid java name */
    public static rh2 m34668for(ECParameterSpec eCParameterSpec, boolean z) {
        if (!(eCParameterSpec instanceof y40)) {
            if (eCParameterSpec == null) {
                return new rh2((Cthis) h.f29080do);
            }
            Cif cifM7705if = t30.m7705if(eCParameterSpec.getCurve());
            return new rh2(new th2(cifM7705if, t30.m7697case(cifM7705if, eCParameterSpec.getGenerator(), z), eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor()), eCParameterSpec.getCurve().getSeed()));
        }
        y40 y40Var = (y40) eCParameterSpec;
        Ccatch ccatchM34732class = Celse.m34732class(y40Var.m9755for());
        if (ccatchM34732class == null) {
            ccatchM34732class = new Ccatch(y40Var.m9755for());
        }
        return new rh2(ccatchM34732class);
    }

    /* renamed from: if, reason: not valid java name */
    public static th2 m34669if(ECGenParameterSpec eCGenParameterSpec) {
        return m34670new(eCGenParameterSpec.getName());
    }

    /* renamed from: new, reason: not valid java name */
    public static th2 m34670new(String str) {
        try {
            if (str.charAt(0) >= '0' && str.charAt(0) <= '2') {
                return Celse.m34729break(new Ccatch(str));
            }
            if (str.indexOf(32) > 0) {
                str = str.substring(str.indexOf(32) + 1);
            }
            return Celse.m34742this(str);
        } catch (IllegalArgumentException unused) {
            return Celse.m34742this(str);
        }
    }
}
