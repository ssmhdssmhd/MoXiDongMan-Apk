package android.support.v4;

import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.tls.TlsSRPIdentityManager;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class hz1 implements TlsSRPIdentityManager {

    /* renamed from: new, reason: not valid java name */
    private static final byte[] f2568new = Cfor.m36358goto("password");

    /* renamed from: try, reason: not valid java name */
    private static final byte[] f2569try = Cfor.m36358goto("salt");

    /* renamed from: do, reason: not valid java name */
    public gr1 f2570do;

    /* renamed from: for, reason: not valid java name */
    public Mac f2571for;

    /* renamed from: if, reason: not valid java name */
    public kr1 f2572if;

    public hz1(gr1 gr1Var, kr1 kr1Var, Mac mac) {
        this.f2570do = gr1Var;
        this.f2572if = kr1Var;
        this.f2571for = mac;
    }

    /* renamed from: do, reason: not valid java name */
    public static hz1 m3180do(gr1 gr1Var, byte[] bArr) {
        kr1 kr1Var = new kr1();
        kr1Var.m4481if(gr1Var, org.bouncycastle.crypto.tls.l0.m34214throws((short) 2));
        pi0 pi0Var = new pi0(org.bouncycastle.crypto.tls.l0.m34214throws((short) 2));
        pi0Var.init(new gr0(bArr));
        return new hz1(gr1Var, kr1Var, pi0Var);
    }

    @Override // org.bouncycastle.crypto.tls.TlsSRPIdentityManager
    public s72 getLoginParameters(byte[] bArr) throws IllegalStateException, tw {
        Mac mac = this.f2571for;
        byte[] bArr2 = f2569try;
        mac.update(bArr2, 0, bArr2.length);
        this.f2571for.update(bArr, 0, bArr.length);
        byte[] bArr3 = new byte[this.f2571for.getMacSize()];
        this.f2571for.doFinal(bArr3, 0);
        Mac mac2 = this.f2571for;
        byte[] bArr4 = f2568new;
        mac2.update(bArr4, 0, bArr4.length);
        this.f2571for.update(bArr, 0, bArr.length);
        byte[] bArr5 = new byte[this.f2571for.getMacSize()];
        this.f2571for.doFinal(bArr5, 0);
        return new s72(this.f2570do, this.f2572if.m4479do(bArr3, bArr, bArr5), bArr3);
    }
}
