package android.support.v4;

/* loaded from: classes3.dex */
public class ch extends vr1 {
    @Override // android.support.v4.vr1
    /* renamed from: catch, reason: not valid java name */
    public void mo917catch() {
        int[] iArr = this.f7326for;
        if (iArr[12] == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        iArr[12] = iArr[12] - 1;
    }

    @Override // android.support.v4.vr1
    /* renamed from: class, reason: not valid java name */
    public void mo918class(long j) {
        int i = (int) j;
        if (((int) (j >>> 32)) != 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        int[] iArr = this.f7326for;
        if ((iArr[12] & 4294967295L) < (4294967295L & i)) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        iArr[12] = iArr[12] - i;
    }

    @Override // android.support.v4.vr1
    /* renamed from: do, reason: not valid java name */
    public void mo919do() {
        int[] iArr = this.f7326for;
        int i = iArr[12] + 1;
        iArr[12] = i;
        if (i == 0) {
            throw new IllegalStateException("attempt to increase counter past 2^32.");
        }
    }

    @Override // android.support.v4.vr1
    /* renamed from: for, reason: not valid java name */
    public void mo920for(byte[] bArr) {
        dh.m1337throw(this.f7324do, this.f7326for, this.f7329new);
        ib1.m3349catch(this.f7329new, bArr, 0);
    }

    @Override // android.support.v4.vr1, org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "ChaCha7539-" + this.f7324do;
    }

    @Override // android.support.v4.vr1
    /* renamed from: if, reason: not valid java name */
    public void mo921if(long j) {
        int i = (int) j;
        if (((int) (j >>> 32)) > 0) {
            throw new IllegalStateException("attempt to increase counter past 2^32.");
        }
        int[] iArr = this.f7326for;
        int i2 = iArr[12];
        iArr[12] = iArr[12] + i;
        if (i2 != 0 && iArr[12] < i2) {
            throw new IllegalStateException("attempt to increase counter past 2^32.");
        }
    }

    @Override // android.support.v4.vr1
    /* renamed from: new, reason: not valid java name */
    public long mo922new() {
        return this.f7326for[12] & 4294967295L;
    }

    @Override // android.support.v4.vr1
    /* renamed from: super */
    public void mo259super(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            if (bArr.length != 32) {
                throw new IllegalArgumentException(getAlgorithmName() + " requires 256 bit key");
            }
            m8947goto(bArr.length, this.f7326for, 0);
            ib1.m3374throw(bArr, 0, this.f7326for, 4, 8);
        }
        ib1.m3374throw(bArr2, 0, this.f7326for, 13, 3);
    }

    @Override // android.support.v4.vr1
    /* renamed from: this, reason: not valid java name */
    public void mo923this() {
        this.f7326for[12] = 0;
    }

    @Override // android.support.v4.vr1
    /* renamed from: try */
    public int mo260try() {
        return 12;
    }
}
