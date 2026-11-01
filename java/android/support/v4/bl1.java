package android.support.v4;

import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.crypto.MessageSigner;

/* loaded from: classes3.dex */
public class bl1 implements MessageSigner {

    /* renamed from: case, reason: not valid java name */
    private static final int f474case = 65536;

    /* renamed from: do, reason: not valid java name */
    private SecureRandom f475do;

    /* renamed from: for, reason: not valid java name */
    private short[] f476for;

    /* renamed from: if, reason: not valid java name */
    public int f477if;

    /* renamed from: new, reason: not valid java name */
    private jq f478new = new jq();

    /* renamed from: try, reason: not valid java name */
    public rk1 f479try;

    /* renamed from: do, reason: not valid java name */
    private short[] m565do(ds0[] ds0VarArr, short[] sArr) throws RuntimeException {
        short[] sArr2 = new short[sArr.length];
        short[] sArrM4061this = this.f478new.m4061this(((wk1) this.f479try).m9207try(), this.f478new.m4060if(((wk1) this.f479try).m9204for(), sArr));
        for (int i = 0; i < ds0VarArr[0].m1505case(); i++) {
            this.f476for[i] = (short) this.f475do.nextInt();
            short[] sArr3 = this.f476for;
            sArr3[i] = (short) (sArr3[i] & 255);
        }
        return sArrM4061this;
    }

    /* renamed from: for, reason: not valid java name */
    private short[] m566for(short[] sArr) {
        short[][] sArrM10234for = ((zk1) this.f479try).m10234for();
        short[][] sArrM10236try = ((zk1) this.f479try).m10236try();
        short[] sArrM10235new = ((zk1) this.f479try).m10235new();
        short[] sArr2 = new short[sArrM10234for.length];
        int length = sArrM10236try[0].length;
        for (int i = 0; i < sArrM10234for.length; i++) {
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                for (int i4 = i3; i4 < length; i4++) {
                    sArr2[i] = pe0.m5955do(sArr2[i], pe0.m5959try(sArrM10234for[i][i2], pe0.m5959try(sArr[i3], sArr[i4])));
                    i2++;
                }
                sArr2[i] = pe0.m5955do(sArr2[i], pe0.m5959try(sArrM10236try[i][i3], sArr[i3]));
            }
            sArr2[i] = pe0.m5955do(sArr2[i], sArrM10235new[i]);
        }
        return sArr2;
    }

    /* renamed from: if, reason: not valid java name */
    private short[] m567if(byte[] bArr) {
        int i = this.f477if;
        short[] sArr = new short[i];
        int i2 = 0;
        int i3 = 0;
        while (i2 < bArr.length) {
            sArr[i2] = bArr[i3];
            sArr[i2] = (short) (sArr[i2] & 255);
            i3++;
            i2++;
            if (i2 >= i) {
                break;
            }
        }
        return sArr;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) throws Exception {
        boolean z;
        ds0[] ds0VarArrM9203else = ((wk1) this.f479try).m9203else();
        int length = ds0VarArrM9203else.length;
        this.f476for = new short[((wk1) this.f479try).m9202case().length];
        int iM1507else = ds0VarArrM9203else[length - 1].m1507else();
        byte[] bArr2 = new byte[iM1507else];
        short[] sArrM567if = m567if(bArr);
        int i = 0;
        do {
            try {
                short[] sArrM565do = m565do(ds0VarArrM9203else, sArrM567if);
                int i2 = 0;
                for (int i3 = 0; i3 < length; i3++) {
                    short[] sArr = new short[ds0VarArrM9203else[i3].m1512try()];
                    short[] sArr2 = new short[ds0VarArrM9203else[i3].m1512try()];
                    for (int i4 = 0; i4 < ds0VarArrM9203else[i3].m1512try(); i4++) {
                        sArr[i4] = sArrM565do[i2];
                        i2++;
                    }
                    short[] sArrM4056catch = this.f478new.m4056catch(ds0VarArrM9203else[i3].m1509goto(this.f476for), sArr);
                    if (sArrM4056catch == null) {
                        throw new Exception("LES is not solveable!");
                    }
                    for (int i5 = 0; i5 < sArrM4056catch.length; i5++) {
                        this.f476for[ds0VarArrM9203else[i3].m1505case() + i5] = sArrM4056catch[i5];
                    }
                }
                short[] sArrM4061this = this.f478new.m4061this(((wk1) this.f479try).m9202case(), this.f478new.m4060if(((wk1) this.f479try).m9206new(), this.f476for));
                for (int i6 = 0; i6 < iM1507else; i6++) {
                    bArr2[i6] = (byte) sArrM4061this[i6];
                }
                z = true;
            } catch (Exception unused) {
                z = false;
            }
            if (z) {
                break;
            }
            i++;
        } while (i < 65536);
        if (i != 65536) {
            return bArr2;
        }
        throw new IllegalStateException("unable to generate signature - LES not solvable");
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        rk1 rk1Var;
        if (!z) {
            rk1Var = (zk1) cipherParameters;
        } else {
            if (cipherParameters instanceof cc1) {
                cc1 cc1Var = (cc1) cipherParameters;
                this.f475do = cc1Var.m847if();
                this.f479try = (wk1) cc1Var.m846do();
                this.f477if = this.f479try.m7024if();
            }
            this.f475do = Cfor.m33599case();
            rk1Var = (wk1) cipherParameters;
        }
        this.f479try = rk1Var;
        this.f477if = this.f479try.m7024if();
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        short[] sArr = new short[bArr2.length];
        for (int i = 0; i < bArr2.length; i++) {
            sArr[i] = (short) (bArr2[i] & 255);
        }
        short[] sArrM567if = m567if(bArr);
        short[] sArrM566for = m566for(sArr);
        if (sArrM567if.length != sArrM566for.length) {
            return false;
        }
        boolean z = true;
        for (int i2 = 0; i2 < sArrM567if.length; i2++) {
            z = z && sArrM567if[i2] == sArrM566for[i2];
        }
        return z;
    }
}
