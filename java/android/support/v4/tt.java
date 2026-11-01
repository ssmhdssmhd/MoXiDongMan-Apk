package android.support.v4;

/* loaded from: classes3.dex */
public class tt extends rl {
    @Override // android.support.v4.rl
    /* renamed from: do */
    public byte[] mo4914do() {
        byte[] bArr = new byte[8];
        do {
            this.f5863do.nextBytes(bArr);
            ut.m8637for(bArr);
        } while (ut.m8638if(bArr, 0));
        return bArr;
    }

    @Override // android.support.v4.rl
    /* renamed from: if */
    public void mo4915if(dr0 dr0Var) {
        super.mo4915if(dr0Var);
        int i = this.f5864if;
        if (i == 0 || i == 7) {
            this.f5864if = 8;
        } else if (i != 8) {
            throw new IllegalArgumentException("DES key must be 64 bits long.");
        }
    }
}
