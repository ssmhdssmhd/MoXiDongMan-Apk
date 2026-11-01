package android.support.v4;

/* loaded from: classes3.dex */
public class xt extends tt {

    /* renamed from: for, reason: not valid java name */
    private static final int f8019for = 20;

    @Override // android.support.v4.tt, android.support.v4.rl
    /* renamed from: do */
    public byte[] mo4914do() {
        int i = this.f5864if;
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (true) {
            this.f5863do.nextBytes(bArr);
            ut.m8637for(bArr);
            i2++;
            if (i2 >= 20 || (!yt.m9937else(bArr, 0, i) && yt.m9936case(bArr, 0))) {
                break;
            }
        }
        if (yt.m9937else(bArr, 0, i) || !yt.m9936case(bArr, 0)) {
            throw new IllegalStateException("Unable to generate DES-EDE key");
        }
        return bArr;
    }

    @Override // android.support.v4.tt, android.support.v4.rl
    /* renamed from: if */
    public void mo4915if(dr0 dr0Var) {
        this.f5863do = dr0Var.m1497do();
        int iM1498if = (dr0Var.m1498if() + 7) / 8;
        this.f5864if = iM1498if;
        if (iM1498if == 0 || iM1498if == 21) {
            this.f5864if = 24;
        } else if (iM1498if == 14) {
            this.f5864if = 16;
        } else if (iM1498if != 24 && iM1498if != 16) {
            throw new IllegalArgumentException("DESede key must be 192 or 128 bits long.");
        }
    }
}
