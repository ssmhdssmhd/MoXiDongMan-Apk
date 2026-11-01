package android.support.v4;

import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class rl {

    /* renamed from: do, reason: not valid java name */
    public SecureRandom f5863do;

    /* renamed from: if, reason: not valid java name */
    public int f5864if;

    /* renamed from: do */
    public byte[] mo4914do() {
        byte[] bArr = new byte[this.f5864if];
        this.f5863do.nextBytes(bArr);
        return bArr;
    }

    /* renamed from: if */
    public void mo4915if(dr0 dr0Var) {
        this.f5863do = dr0Var.m1497do();
        this.f5864if = (dr0Var.m1498if() + 7) / 8;
    }
}
