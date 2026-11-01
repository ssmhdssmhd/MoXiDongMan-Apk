package org.bouncycastle.crypto.tls;

import android.support.v4.hn0;
import android.support.v4.n72;
import android.support.v4.vl;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.Hashtable;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class f0 {

    /* renamed from: do, reason: not valid java name */
    public static final Integer f30589do = hn0.m3072for(12);

    /* renamed from: case, reason: not valid java name */
    public static BigInteger m34088case(InputStream inputStream) throws IOException {
        return new BigInteger(1, l0.P(inputStream));
    }

    /* renamed from: do, reason: not valid java name */
    public static void m34089do(Hashtable hashtable, byte[] bArr) throws IOException {
        hashtable.put(f30589do, m34092if(bArr));
    }

    /* renamed from: else, reason: not valid java name */
    public static void m34090else(BigInteger bigInteger, OutputStream outputStream) throws IOException {
        l0.o0(Cdo.m36313if(bigInteger), outputStream);
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[] m34091for(Hashtable hashtable) throws IOException {
        byte[] bArrB = l0.b(hashtable, f30589do);
        if (bArrB == null) {
            return null;
        }
        return m34094try(bArrB);
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m34092if(byte[] bArr) throws IOException {
        if (bArr != null) {
            return l0.m34202package(bArr);
        }
        throw new n72((short) 80);
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m34093new(int i) {
        switch (i) {
            case vl.t0 /* 49178 */:
            case vl.u0 /* 49179 */:
            case vl.v0 /* 49180 */:
            case vl.w0 /* 49181 */:
            case vl.x0 /* 49182 */:
            case vl.y0 /* 49183 */:
            case vl.z0 /* 49184 */:
            case vl.A0 /* 49185 */:
            case vl.B0 /* 49186 */:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static byte[] m34094try(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("'extensionData' cannot be null");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        byte[] bArrR = l0.R(byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        return bArrR;
    }
}
