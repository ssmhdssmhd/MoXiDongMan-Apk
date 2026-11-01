package android.support.v4;

import org.apache.commons.lang3.Cclass;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.encoders.Cfor;
import org.mozilla.javascript.v8dtoa.FastDtoa;

/* loaded from: classes3.dex */
public class cf0 {

    /* renamed from: break, reason: not valid java name */
    private int f750break;

    /* renamed from: case, reason: not valid java name */
    private byte[] f751case;

    /* renamed from: catch, reason: not valid java name */
    private int f752catch;

    /* renamed from: class, reason: not valid java name */
    private byte[] f753class;

    /* renamed from: const, reason: not valid java name */
    public byte[] f754const;

    /* renamed from: do, reason: not valid java name */
    private Digest f755do;

    /* renamed from: else, reason: not valid java name */
    private int f756else;

    /* renamed from: for, reason: not valid java name */
    private int f757for;

    /* renamed from: goto, reason: not valid java name */
    private int f758goto;

    /* renamed from: if, reason: not valid java name */
    private int f759if;

    /* renamed from: new, reason: not valid java name */
    private hf0 f760new;

    /* renamed from: this, reason: not valid java name */
    private int f761this;

    /* renamed from: try, reason: not valid java name */
    private byte[] f762try;

    private cf0(cf0 cf0Var) {
        this.f755do = cf0Var.f755do;
        this.f759if = cf0Var.f759if;
        this.f757for = cf0Var.f757for;
        this.f760new = cf0Var.f760new;
        this.f762try = q3.m6371final(cf0Var.f762try);
        this.f751case = q3.m6371final(cf0Var.f751case);
        this.f756else = cf0Var.f756else;
        this.f758goto = cf0Var.f758goto;
        this.f761this = cf0Var.f761this;
        this.f750break = cf0Var.f750break;
        this.f752catch = cf0Var.f752catch;
        this.f753class = q3.m6371final(cf0Var.f753class);
        this.f754const = q3.m6371final(cf0Var.f754const);
    }

    public cf0(Digest digest, int i, int i2) {
        this.f750break = i;
        this.f755do = digest;
        this.f760new = new hf0(digest);
        int digestSize = this.f755do.getDigestSize();
        this.f759if = digestSize;
        double d = digestSize << 3;
        double d2 = i;
        Double.isNaN(d);
        Double.isNaN(d2);
        int iCeil = (int) Math.ceil(d / d2);
        double dM891if = m891if((iCeil << i) + 1);
        Double.isNaN(dM891if);
        Double.isNaN(d2);
        int iCeil2 = iCeil + ((int) Math.ceil(dM891if / d2));
        this.f757for = iCeil2;
        int i3 = 1 << i;
        this.f761this = i3;
        double d3 = ((i3 - 1) * iCeil2) + 1 + iCeil2;
        double d4 = i2;
        Double.isNaN(d3);
        Double.isNaN(d4);
        this.f752catch = (int) Math.ceil(d3 / d4);
        int i4 = this.f759if;
        this.f753class = new byte[i4];
        this.f762try = new byte[i4];
        this.f754const = new byte[i4];
        this.f751case = new byte[i4 * this.f757for];
    }

    public cf0(Digest digest, int i, int i2, byte[] bArr) {
        this.f750break = i;
        this.f755do = digest;
        this.f760new = new hf0(digest);
        int digestSize = this.f755do.getDigestSize();
        this.f759if = digestSize;
        double d = digestSize << 3;
        double d2 = i;
        Double.isNaN(d);
        Double.isNaN(d2);
        int iCeil = (int) Math.ceil(d / d2);
        double dM891if = m891if((iCeil << i) + 1);
        Double.isNaN(dM891if);
        Double.isNaN(d2);
        int iCeil2 = iCeil + ((int) Math.ceil(dM891if / d2));
        this.f757for = iCeil2;
        int i3 = 1 << i;
        this.f761this = i3;
        double d3 = ((i3 - 1) * iCeil2) + 1 + iCeil2;
        double d4 = i2;
        Double.isNaN(d3);
        Double.isNaN(d4);
        this.f752catch = (int) Math.ceil(d3 / d4);
        int i4 = this.f759if;
        this.f753class = new byte[i4];
        this.f762try = new byte[i4];
        this.f754const = new byte[i4];
        this.f751case = new byte[i4 * this.f757for];
        m896try(bArr);
    }

    public cf0(Digest digest, byte[][] bArr, int[] iArr) {
        this.f756else = iArr[0];
        this.f758goto = iArr[1];
        this.f752catch = iArr[2];
        this.f750break = iArr[3];
        this.f755do = digest;
        this.f760new = new hf0(digest);
        int digestSize = this.f755do.getDigestSize();
        this.f759if = digestSize;
        double d = digestSize << 3;
        double d2 = this.f750break;
        Double.isNaN(d);
        Double.isNaN(d2);
        int iCeil = (int) Math.ceil(d / d2);
        double dM891if = m891if((iCeil << this.f750break) + 1);
        double d3 = this.f750break;
        Double.isNaN(dM891if);
        Double.isNaN(d3);
        this.f757for = iCeil + ((int) Math.ceil(dM891if / d3));
        this.f761this = 1 << this.f750break;
        this.f754const = bArr[0];
        this.f753class = bArr[1];
        this.f751case = bArr[2];
        this.f762try = bArr[3];
    }

    /* renamed from: else, reason: not valid java name */
    private void m890else() {
        byte[] bArr = new byte[this.f755do.getDigestSize()];
        for (int i = 0; i < this.f752catch + FastDtoa.kTen4; i++) {
            int i2 = this.f756else;
            if (i2 == this.f757for && this.f758goto == this.f761this - 1) {
                Digest digest = this.f755do;
                byte[] bArr2 = this.f751case;
                digest.update(bArr2, 0, bArr2.length);
                byte[] bArr3 = new byte[this.f755do.getDigestSize()];
                this.f762try = bArr3;
                this.f755do.doFinal(bArr3, 0);
                return;
            }
            if (i2 == 0 || this.f758goto == this.f761this - 1) {
                this.f756else = i2 + 1;
                this.f758goto = 0;
                this.f754const = this.f760new.m3009for(this.f753class);
            } else {
                Digest digest2 = this.f755do;
                byte[] bArr4 = this.f754const;
                digest2.update(bArr4, 0, bArr4.length);
                this.f754const = bArr;
                this.f755do.doFinal(bArr, 0);
                int i3 = this.f758goto + 1;
                this.f758goto = i3;
                if (i3 == this.f761this - 1) {
                    byte[] bArr5 = this.f754const;
                    byte[] bArr6 = this.f751case;
                    int i4 = this.f759if;
                    System.arraycopy(bArr5, 0, bArr6, (this.f756else - 1) * i4, i4);
                }
            }
        }
        throw new IllegalStateException("unable to updateLeaf in steps: " + this.f752catch + Cclass.f28652do + this.f756else + Cclass.f28652do + this.f758goto);
    }

    /* renamed from: if, reason: not valid java name */
    private int m891if(int i) {
        int i2 = 1;
        int i3 = 2;
        while (i3 < i) {
            i3 <<= 1;
            i2++;
        }
        return i2;
    }

    /* renamed from: case, reason: not valid java name */
    public cf0 m892case() {
        cf0 cf0Var = new cf0(this);
        cf0Var.m890else();
        return cf0Var;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m893do() {
        return q3.m6371final(this.f762try);
    }

    /* renamed from: for, reason: not valid java name */
    public byte[][] m894for() {
        return new byte[][]{this.f754const, this.f753class, this.f751case, this.f762try};
    }

    /* renamed from: new, reason: not valid java name */
    public int[] m895new() {
        return new int[]{this.f756else, this.f758goto, this.f752catch, this.f750break};
    }

    public String toString() {
        StringBuilder sb;
        String str = "";
        for (int i = 0; i < 4; i++) {
            str = str + m895new()[i] + Cclass.f28652do;
        }
        String string = str + Cclass.f28652do + this.f759if + Cclass.f28652do + this.f757for + Cclass.f28652do + this.f761this + Cclass.f28652do;
        byte[][] bArrM894for = m894for();
        for (int i2 = 0; i2 < 4; i2++) {
            if (bArrM894for[i2] != null) {
                sb = new StringBuilder();
                sb.append(string);
                sb.append(new String(Cfor.m36327case(bArrM894for[i2])));
                sb.append(Cclass.f28652do);
            } else {
                sb = new StringBuilder();
                sb.append(string);
                sb.append("null ");
            }
            string = sb.toString();
        }
        return string;
    }

    /* renamed from: try, reason: not valid java name */
    public void m896try(byte[] bArr) {
        this.f756else = 0;
        this.f758goto = 0;
        byte[] bArr2 = new byte[this.f759if];
        System.arraycopy(bArr, 0, bArr2, 0, this.f753class.length);
        this.f753class = this.f760new.m3009for(bArr2);
    }
}
