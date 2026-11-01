package android.support.v4;

import org.bouncycastle.crypto.modes.gcm.GCMMultiplier;

/* loaded from: classes3.dex */
public class x7 implements GCMMultiplier {

    /* renamed from: do, reason: not valid java name */
    private long[] f7784do;

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void init(byte[] bArr) {
        this.f7784do = ne0.m5169goto(bArr);
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void multiplyH(byte[] bArr) {
        long[] jArrM5169goto = ne0.m5169goto(bArr);
        ne0.m5166final(jArrM5169goto, this.f7784do);
        ne0.m5170if(jArrM5169goto, bArr);
    }
}
