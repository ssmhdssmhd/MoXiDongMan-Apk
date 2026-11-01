package org.bouncycastle.crypto.tls;

import android.support.v4.hd2;
import android.support.v4.hn0;
import android.support.v4.n72;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Hashtable;

/* loaded from: classes3.dex */
public class g0 {

    /* renamed from: do, reason: not valid java name */
    public static final Integer f30606do = hn0.m3072for(14);

    /* renamed from: do, reason: not valid java name */
    public static void m34115do(Hashtable hashtable, hd2 hd2Var) throws IOException {
        hashtable.put(f30606do, m34117if(hd2Var));
    }

    /* renamed from: for, reason: not valid java name */
    public static hd2 m34116for(Hashtable hashtable) throws IOException {
        byte[] bArrB = l0.b(hashtable, f30606do);
        if (bArrB == null) {
            return null;
        }
        return m34118new(bArrB);
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m34117if(hd2 hd2Var) throws IOException {
        if (hd2Var == null) {
            throw new IllegalArgumentException("'useSRTPData' cannot be null");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        l0.v0(hd2Var.m2994if(), byteArrayOutputStream);
        l0.q0(hd2Var.m2993do(), byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: new, reason: not valid java name */
    public static hd2 m34118new(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("'extensionData' cannot be null");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        int iT = l0.T(byteArrayInputStream);
        if (iT < 2 || (iT & 1) != 0) {
            throw new n72((short) 50);
        }
        int[] iArrV = l0.V(iT / 2, byteArrayInputStream);
        byte[] bArrR = l0.R(byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        return new hd2(iArrV, bArrR);
    }
}
