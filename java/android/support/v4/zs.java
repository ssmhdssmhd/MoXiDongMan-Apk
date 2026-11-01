package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.engines.Cgoto;
import org.bouncycastle.crypto.modes.Cbreak;

/* loaded from: classes3.dex */
public class zs extends Cgoto {
    /* renamed from: do, reason: not valid java name */
    private static boolean m10267do(byte b, int i) {
        return (b & (1 << i)) != 0;
    }

    /* renamed from: if, reason: not valid java name */
    private static byte[] m10268if(byte[] bArr, byte[] bArr2, byte[] bArr3) throws IllegalStateException, tw, IllegalArgumentException {
        for (int i = 0; i != 8; i++) {
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 != 8; i4++) {
                int iM3357final = ib1.m3357final(bArr, i4 * 4);
                if (m10267do(bArr2[i], i4)) {
                    i2 += iM3357final;
                } else {
                    i3 += iM3357final;
                }
            }
            byte[] bArr4 = new byte[8];
            ib1.m3347break(i2, bArr4, 0);
            ib1.m3347break(i3, bArr4, 4);
            Cbreak cbreak = new Cbreak(new mf0());
            cbreak.init(true, new bc1(new dc1(new gr0(bArr), bArr3), bArr4));
            cbreak.processBlock(bArr, 0, bArr, 0);
            cbreak.processBlock(bArr, 8, bArr, 8);
            cbreak.processBlock(bArr, 16, bArr, 16);
            cbreak.processBlock(bArr, 24, bArr, 24);
        }
        return bArr;
    }

    @Override // org.bouncycastle.crypto.engines.Cgoto, org.bouncycastle.crypto.Wrapper
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        byte[] bArrM1263if;
        gr0 gr0Var;
        if (cipherParameters instanceof cc1) {
            cipherParameters = ((cc1) cipherParameters).m846do();
        }
        fc1 fc1Var = (fc1) cipherParameters;
        if (fc1Var.m2244do() instanceof dc1) {
            gr0Var = (gr0) ((dc1) fc1Var.m2244do()).m1262do();
            bArrM1263if = ((dc1) fc1Var.m2244do()).m1263if();
        } else {
            bArrM1263if = null;
            gr0Var = (gr0) fc1Var.m2244do();
        }
        gr0 gr0Var2 = new gr0(m10268if(gr0Var.m2770do(), fc1Var.m2245if(), bArrM1263if));
        super.init(z, bArrM1263if != null ? new fc1(new dc1(gr0Var2, bArrM1263if), fc1Var.m2245if()) : new fc1(gr0Var2, fc1Var.m2245if()));
    }
}
