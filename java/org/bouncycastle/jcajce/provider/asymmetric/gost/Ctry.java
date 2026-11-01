package org.bouncycastle.jcajce.provider.asymmetric.gost;

import android.support.v4.ec0;
import android.support.v4.q3;
import android.support.v4.yf0;
import java.math.BigInteger;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.gost.try, reason: invalid class name */
/* loaded from: classes3.dex */
class Ctry {
    /* renamed from: do, reason: not valid java name */
    private static String m34713do(BigInteger bigInteger, yf0 yf0Var) {
        return new ec0(q3.m6370extends(bigInteger.toByteArray(), yf0Var.m9829if().toByteArray(), yf0Var.m9827do().toByteArray())).toString();
    }

    /* renamed from: for, reason: not valid java name */
    public static String m34714for(String str, BigInteger bigInteger, yf0 yf0Var) {
        StringBuffer stringBuffer = new StringBuffer();
        String strM36360new = Cfor.m36360new();
        stringBuffer.append(str);
        stringBuffer.append(" Public Key [");
        stringBuffer.append(m34713do(bigInteger, yf0Var));
        stringBuffer.append("]");
        stringBuffer.append(strM36360new);
        stringBuffer.append("                 Y: ");
        stringBuffer.append(bigInteger.toString(16));
        stringBuffer.append(strM36360new);
        return stringBuffer.toString();
    }

    /* renamed from: if, reason: not valid java name */
    public static String m34715if(String str, BigInteger bigInteger, yf0 yf0Var) {
        StringBuffer stringBuffer = new StringBuffer();
        String strM36360new = Cfor.m36360new();
        BigInteger bigIntegerModPow = yf0Var.m9827do().modPow(bigInteger, yf0Var.m9829if());
        stringBuffer.append(str);
        stringBuffer.append(" Private Key [");
        stringBuffer.append(m34713do(bigIntegerModPow, yf0Var));
        stringBuffer.append("]");
        stringBuffer.append(strM36360new);
        stringBuffer.append("                  Y: ");
        stringBuffer.append(bigIntegerModPow.toString(16));
        stringBuffer.append(strM36360new);
        return stringBuffer.toString();
    }
}
