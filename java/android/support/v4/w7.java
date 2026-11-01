package android.support.v4;

import org.bouncycastle.crypto.modes.gcm.GCMExponentiator;

/* loaded from: classes3.dex */
public class w7 implements GCMExponentiator {

    /* renamed from: do, reason: not valid java name */
    private long[] f7403do;

    @Override // org.bouncycastle.crypto.modes.gcm.GCMExponentiator
    public void exponentiateX(long j, byte[] bArr) {
        long[] jArrM5177package = ne0.m5177package();
        if (j > 0) {
            long[] jArrM6377import = q3.m6377import(this.f7403do);
            do {
                if ((1 & j) != 0) {
                    ne0.m5166final(jArrM5177package, jArrM6377import);
                }
                ne0.m5155abstract(jArrM6377import, jArrM6377import);
                j >>>= 1;
            } while (j > 0);
        }
        ne0.m5170if(jArrM5177package, bArr);
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMExponentiator
    public void init(byte[] bArr) {
        this.f7403do = ne0.m5169goto(bArr);
    }
}
