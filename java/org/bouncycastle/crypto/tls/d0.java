package org.bouncycastle.crypto.tls;

import android.support.v4.cc1;
import android.support.v4.ck1;
import android.support.v4.n72;
import android.support.v4.q3;
import android.support.v4.tn0;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.crypto.encodings.Cfor;
import org.bouncycastle.crypto.engines.Creturn;

/* loaded from: classes3.dex */
public class d0 {
    /* renamed from: do, reason: not valid java name */
    public static byte[] m34051do(TlsContext tlsContext, ck1 ck1Var, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[48];
        tlsContext.getSecureRandom().nextBytes(bArr);
        l0.O0(tlsContext.getClientVersion(), bArr, 0);
        Cfor cfor = new Cfor(new Creturn());
        cfor.init(true, new cc1(ck1Var, tlsContext.getSecureRandom()));
        try {
            byte[] bArrProcessBlock = cfor.processBlock(bArr, 0, 48);
            if (l0.q(tlsContext)) {
                outputStream.write(bArrProcessBlock);
            } else {
                l0.o0(bArrProcessBlock, outputStream);
            }
            return bArr;
        } catch (tn0 e) {
            throw new n72((short) 80, e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m34052if(TlsContext tlsContext, ck1 ck1Var, byte[] bArr) {
        a clientVersion = tlsContext.getClientVersion();
        byte[] bArr2 = new byte[48];
        tlsContext.getSecureRandom().nextBytes(bArr2);
        byte[] bArrM6371final = q3.m6371final(bArr2);
        try {
            Cfor cfor = new Cfor(new Creturn(), bArr2);
            cfor.init(false, new cc1(ck1Var, tlsContext.getSecureRandom()));
            bArrM6371final = cfor.processBlock(bArr, 0, bArr.length);
        } catch (Exception unused) {
        }
        int iM33944try = (clientVersion.m33944try() ^ (bArrM6371final[0] & 255)) | (clientVersion.m33936case() ^ (bArrM6371final[1] & 255));
        int i = iM33944try | (iM33944try >> 1);
        int i2 = i | (i >> 2);
        int i3 = (((i2 | (i2 >> 4)) & 1) - 1) ^ (-1);
        for (int i4 = 0; i4 < 48; i4++) {
            bArrM6371final[i4] = (byte) ((bArrM6371final[i4] & (i3 ^ (-1))) | (bArr2[i4] & i3));
        }
        return bArrM6371final;
    }
}
