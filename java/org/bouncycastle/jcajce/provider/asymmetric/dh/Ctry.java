package org.bouncycastle.jcajce.provider.asymmetric.dh;

import android.support.v4.ec0;
import android.support.v4.ou;
import android.support.v4.q3;
import java.math.BigInteger;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.try, reason: invalid class name */
/* loaded from: classes3.dex */
class Ctry {
    /* renamed from: do, reason: not valid java name */
    private static String m34643do(BigInteger bigInteger, ou ouVar) {
        return new ec0(q3.m6370extends(bigInteger.toByteArray(), ouVar.m5757case().toByteArray(), ouVar.m5761if().toByteArray())).toString();
    }

    /* renamed from: for, reason: not valid java name */
    public static String m34644for(String str, BigInteger bigInteger, ou ouVar) {
        StringBuffer stringBuffer = new StringBuffer();
        String strM36360new = Cfor.m36360new();
        stringBuffer.append(str);
        stringBuffer.append(" Public Key [");
        stringBuffer.append(m34643do(bigInteger, ouVar));
        stringBuffer.append("]");
        stringBuffer.append(strM36360new);
        stringBuffer.append("             Y: ");
        stringBuffer.append(bigInteger.toString(16));
        stringBuffer.append(strM36360new);
        return stringBuffer.toString();
    }

    /* renamed from: if, reason: not valid java name */
    public static String m34645if(String str, BigInteger bigInteger, ou ouVar) {
        StringBuffer stringBuffer = new StringBuffer();
        String strM36360new = Cfor.m36360new();
        BigInteger bigIntegerModPow = ouVar.m5761if().modPow(bigInteger, ouVar.m5757case());
        stringBuffer.append(str);
        stringBuffer.append(" Private Key [");
        stringBuffer.append(m34643do(bigIntegerModPow, ouVar));
        stringBuffer.append("]");
        stringBuffer.append(strM36360new);
        stringBuffer.append("              Y: ");
        stringBuffer.append(bigIntegerModPow.toString(16));
        stringBuffer.append(strM36360new);
        return stringBuffer.toString();
    }
}
