package org.bouncycastle.jcajce.provider.asymmetric.edec;

import android.support.v4.a4;
import android.support.v4.ec0;
import org.apache.commons.lang3.Cclass;
import org.bouncycastle.crypto.params.Cbreak;
import org.bouncycastle.crypto.params.Cgoto;
import org.bouncycastle.crypto.params.Ctry;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.this, reason: invalid class name */
/* loaded from: classes3.dex */
class Cthis {
    /* renamed from: do, reason: not valid java name */
    private static String m34705do(byte[] bArr) {
        return new ec0(bArr).toString();
    }

    /* renamed from: for, reason: not valid java name */
    public static String m34706for(String str, String str2, a4 a4Var) {
        StringBuffer stringBuffer = new StringBuffer();
        String strM36360new = Cfor.m36360new();
        byte[] bArrM33802for = a4Var instanceof Cbreak ? ((Cbreak) a4Var).m33802for() : a4Var instanceof Ctry ? ((Ctry) a4Var).m33861for() : a4Var instanceof Cgoto ? ((Cgoto) a4Var).m33847for() : ((org.bouncycastle.crypto.params.Cfor) a4Var).m33845for();
        stringBuffer.append(str2);
        stringBuffer.append(Cclass.f28652do);
        stringBuffer.append(str);
        stringBuffer.append(" [");
        stringBuffer.append(m34705do(bArrM33802for));
        stringBuffer.append("]");
        stringBuffer.append(strM36360new);
        stringBuffer.append("    public data: ");
        stringBuffer.append(org.bouncycastle.util.encoders.Cfor.m36331goto(bArrM33802for));
        stringBuffer.append(strM36360new);
        return stringBuffer.toString();
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m34707if(byte[] bArr, byte[] bArr2) {
        if (bArr2.length < bArr.length) {
            return !m34707if(bArr, bArr);
        }
        int i = 0;
        for (int i2 = 0; i2 != bArr.length; i2++) {
            i |= bArr[i2] ^ bArr2[i2];
        }
        return i == 0;
    }
}
