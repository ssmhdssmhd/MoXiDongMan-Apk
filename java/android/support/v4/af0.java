package android.support.v4;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Vector;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.gmss.Cdo;
import org.bouncycastle.pqc.crypto.gmss.Cif;
import org.bouncycastle.pqc.crypto.gmss.GMSSDigestProvider;

/* loaded from: classes3.dex */
public class af0 implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: super, reason: not valid java name */
    public static final String f142super = "1.3.6.1.4.1.8301.3.1.3.3";

    /* renamed from: break, reason: not valid java name */
    private Cdo f143break;

    /* renamed from: case, reason: not valid java name */
    private GMSSDigestProvider f144case;

    /* renamed from: catch, reason: not valid java name */
    private int[] f145catch;

    /* renamed from: class, reason: not valid java name */
    private int[] f146class;

    /* renamed from: const, reason: not valid java name */
    private int[] f147const;

    /* renamed from: do, reason: not valid java name */
    private hf0 f148do;

    /* renamed from: else, reason: not valid java name */
    private int f149else;

    /* renamed from: final, reason: not valid java name */
    private ze0 f150final;

    /* renamed from: for, reason: not valid java name */
    private byte[][] f151for;

    /* renamed from: goto, reason: not valid java name */
    private int f152goto;

    /* renamed from: if, reason: not valid java name */
    private Digest f153if;

    /* renamed from: new, reason: not valid java name */
    private byte[][] f154new;

    /* renamed from: this, reason: not valid java name */
    private boolean f155this = false;

    /* renamed from: try, reason: not valid java name */
    private byte[][] f156try;

    public af0(GMSSDigestProvider gMSSDigestProvider) {
        this.f144case = gMSSDigestProvider;
        Digest digest = gMSSDigestProvider.get();
        this.f153if = digest;
        this.f149else = digest.getDigestSize();
        this.f148do = new hf0(this.f153if);
    }

    /* renamed from: case, reason: not valid java name */
    private void m193case() {
        m198try(new ze0(Cfor.m33599case(), new Cdo(4, new int[]{10, 10, 10, 10}, new int[]{3, 3, 3, 3}, new int[]{2, 2, 2, 2})));
    }

    /* renamed from: do, reason: not valid java name */
    private y3 m194do() {
        int i;
        int i2;
        if (!this.f155this) {
            m193case();
        }
        int i3 = this.f152goto;
        byte[][][] bArr = new byte[i3][][];
        byte[][][] bArr2 = new byte[i3 - 1][][];
        u82[][] u82VarArr = new u82[i3][];
        u82[][] u82VarArr2 = new u82[i3 - 1][];
        Vector[] vectorArr = new Vector[i3];
        Vector[] vectorArr2 = new Vector[i3 - 1];
        Vector[][] vectorArr3 = new Vector[i3][];
        int i4 = 1;
        Vector[][] vectorArr4 = new Vector[i3 - 1][];
        int i5 = 0;
        while (true) {
            i = this.f152goto;
            if (i5 >= i) {
                break;
            }
            Vector[][] vectorArr5 = vectorArr4;
            bArr[i5] = (byte[][]) Array.newInstance((Class<?>) byte.class, this.f145catch[i5], this.f149else);
            int[] iArr = this.f145catch;
            u82VarArr[i5] = new u82[iArr[i5] - this.f147const[i5]];
            if (i5 > 0) {
                int i6 = i5 - 1;
                bArr2[i6] = (byte[][]) Array.newInstance((Class<?>) byte.class, iArr[i5], this.f149else);
                u82VarArr2[i6] = new u82[this.f145catch[i5] - this.f147const[i5]];
            }
            vectorArr[i5] = new Vector();
            if (i5 > 0) {
                vectorArr2[i5 - 1] = new Vector();
            }
            i5++;
            vectorArr4 = vectorArr5;
        }
        Vector[][] vectorArr6 = vectorArr4;
        byte[][] bArr3 = (byte[][]) Array.newInstance((Class<?>) byte.class, i, this.f149else);
        byte[][] bArr4 = (byte[][]) Array.newInstance((Class<?>) byte.class, this.f152goto - 1, this.f149else);
        byte[][] bArr5 = (byte[][]) Array.newInstance((Class<?>) byte.class, this.f152goto, this.f149else);
        int i7 = 0;
        while (true) {
            i2 = this.f152goto;
            if (i7 >= i2) {
                break;
            }
            System.arraycopy(this.f151for[i7], 0, bArr5[i7], 0, this.f149else);
            i7++;
            i4 = 1;
        }
        int[] iArr2 = new int[2];
        iArr2[i4] = this.f149else;
        iArr2[0] = i2 - i4;
        this.f156try = (byte[][]) Array.newInstance((Class<?>) byte.class, iArr2);
        int i8 = this.f152goto - i4;
        while (i8 >= 0) {
            Cif cifM196if = i8 == this.f152goto - i4 ? m196if(null, vectorArr[i8], bArr5[i8], i8) : m196if(bArr3[i8 + 1], vectorArr[i8], bArr5[i8], i8);
            for (int i9 = 0; i9 < this.f145catch[i8]; i9++) {
                System.arraycopy(cifM196if.m35599do()[i9], 0, bArr[i8][i9], 0, this.f149else);
            }
            vectorArr3[i8] = cifM196if.m35603if();
            u82VarArr[i8] = cifM196if.m35600else();
            System.arraycopy(cifM196if.m35601for(), 0, bArr3[i8], 0, this.f149else);
            i8--;
            i4 = 1;
        }
        int i10 = this.f152goto - 2;
        while (i10 >= 0) {
            int i11 = i10 + 1;
            Cif cifM195for = m195for(vectorArr2[i10], bArr5[i11], i11);
            int i12 = 0;
            while (i12 < this.f145catch[i11]) {
                System.arraycopy(cifM195for.m35599do()[i12], 0, bArr2[i10][i12], 0, this.f149else);
                i12++;
                vectorArr3 = vectorArr3;
            }
            vectorArr6[i10] = cifM195for.m35603if();
            u82VarArr2[i10] = cifM195for.m35600else();
            System.arraycopy(cifM195for.m35601for(), 0, bArr4[i10], 0, this.f149else);
            System.arraycopy(bArr5[i11], 0, this.f154new[i10], 0, this.f149else);
            i10--;
            vectorArr3 = vectorArr3;
        }
        return new y3((a4) new gf0(bArr3[0], this.f143break), (a4) new ef0(this.f151for, this.f154new, bArr, bArr2, u82VarArr, u82VarArr2, vectorArr, vectorArr2, vectorArr3, vectorArr6, bArr4, this.f156try, this.f143break, this.f144case));
    }

    /* renamed from: for, reason: not valid java name */
    private Cif m195for(Vector vector, byte[] bArr, int i) {
        byte[] bArr2 = new byte[this.f152goto];
        Cif cif = new Cif(this.f145catch[i], this.f147const[i], this.f144case);
        cif.m35602goto(vector);
        int i2 = 0;
        int i3 = 0;
        int i4 = 3;
        while (true) {
            int[] iArr = this.f145catch;
            if (i2 >= (1 << iArr[i])) {
                break;
            }
            if (i2 == i4 && i3 < iArr[i] - this.f147const[i]) {
                cif.m35605this(bArr, i3);
                i4 *= 2;
                i3++;
            }
            cif.m35594break(new gg2(this.f148do.m3009for(bArr), this.f144case.get(), this.f146class[i]).m2666for());
            i2++;
        }
        if (cif.m35597class()) {
            return cif;
        }
        System.err.println("N�chster Baum noch nicht fertig konstruiert!!!");
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    private Cif m196if(byte[] bArr, Vector vector, byte[] bArr2, int i) {
        byte[] bArrM2278do;
        int i2 = this.f149else;
        byte[] bArr3 = new byte[i2];
        byte[] bArr4 = new byte[i2];
        byte[] bArrM3009for = this.f148do.m3009for(bArr2);
        Cif cif = new Cif(this.f145catch[i], this.f147const[i], this.f144case);
        cif.m35602goto(vector);
        if (i == this.f152goto - 1) {
            bArrM2278do = new gg2(bArrM3009for, this.f144case.get(), this.f146class[i]).m2666for();
        } else {
            this.f156try[i] = new gg2(bArrM3009for, this.f144case.get(), this.f146class[i]).m2668new(bArr);
            bArrM2278do = new fg2(this.f144case.get(), this.f146class[i]).m2278do(bArr, this.f156try[i]);
        }
        cif.m35594break(bArrM2278do);
        int i3 = 3;
        int i4 = 0;
        int i5 = 1;
        while (true) {
            int[] iArr = this.f145catch;
            if (i5 >= (1 << iArr[i])) {
                break;
            }
            if (i5 == i3 && i4 < iArr[i] - this.f147const[i]) {
                cif.m35605this(bArr2, i4);
                i3 *= 2;
                i4++;
            }
            cif.m35594break(new gg2(this.f148do.m3009for(bArr2), this.f144case.get(), this.f146class[i]).m2666for());
            i5++;
        }
        if (cif.m35597class()) {
            return cif;
        }
        System.err.println("Baum noch nicht fertig konstruiert!!!");
        return null;
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() {
        return m194do();
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        m198try(dr0Var);
    }

    /* renamed from: new, reason: not valid java name */
    public void m197new(int i, SecureRandom secureRandom) {
        ze0 ze0Var;
        if (i <= 10) {
            ze0Var = new ze0(secureRandom, new Cdo(1, new int[]{10}, new int[]{3}, new int[]{2}));
        } else {
            ze0Var = i <= 20 ? new ze0(secureRandom, new Cdo(2, new int[]{10, 10}, new int[]{5, 4}, new int[]{2, 2})) : new ze0(secureRandom, new Cdo(4, new int[]{10, 10, 10, 10}, new int[]{9, 9, 9, 3}, new int[]{2, 2, 2, 2}));
        }
        m198try(ze0Var);
    }

    /* renamed from: try, reason: not valid java name */
    public void m198try(dr0 dr0Var) {
        ze0 ze0Var = (ze0) dr0Var;
        this.f150final = ze0Var;
        Cdo cdo = new Cdo(ze0Var.m10163for().m35591for(), this.f150final.m10163for().m35590do(), this.f150final.m10163for().m35593new(), this.f150final.m10163for().m35592if());
        this.f143break = cdo;
        this.f152goto = cdo.m35591for();
        this.f145catch = this.f143break.m35590do();
        this.f146class = this.f143break.m35593new();
        this.f147const = this.f143break.m35592if();
        this.f151for = (byte[][]) Array.newInstance((Class<?>) byte.class, this.f152goto, this.f149else);
        this.f154new = (byte[][]) Array.newInstance((Class<?>) byte.class, this.f152goto - 1, this.f149else);
        SecureRandom secureRandomM33599case = Cfor.m33599case();
        for (int i = 0; i < this.f152goto; i++) {
            secureRandomM33599case.nextBytes(this.f151for[i]);
            this.f148do.m3009for(this.f151for[i]);
        }
        this.f155this = true;
    }
}
