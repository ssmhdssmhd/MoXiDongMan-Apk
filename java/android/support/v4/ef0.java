package android.support.v4;

import java.lang.reflect.Array;
import java.util.Vector;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.gmss.Cdo;
import org.bouncycastle.pqc.crypto.gmss.Cif;
import org.bouncycastle.pqc.crypto.gmss.GMSSDigestProvider;

/* loaded from: classes3.dex */
public class ef0 extends bf0 {

    /* renamed from: abstract, reason: not valid java name */
    private Digest f1424abstract;

    /* renamed from: break, reason: not valid java name */
    private Vector[] f1425break;

    /* renamed from: case, reason: not valid java name */
    private byte[][][] f1426case;

    /* renamed from: catch, reason: not valid java name */
    private Vector[] f1427catch;

    /* renamed from: class, reason: not valid java name */
    private Vector[][] f1428class;

    /* renamed from: const, reason: not valid java name */
    private Vector[][] f1429const;

    /* renamed from: continue, reason: not valid java name */
    private int f1430continue;

    /* renamed from: default, reason: not valid java name */
    private boolean f1431default;

    /* renamed from: else, reason: not valid java name */
    private byte[][][] f1432else;

    /* renamed from: extends, reason: not valid java name */
    private int[] f1433extends;

    /* renamed from: final, reason: not valid java name */
    private byte[][][] f1434final;

    /* renamed from: finally, reason: not valid java name */
    private int[] f1435finally;

    /* renamed from: for, reason: not valid java name */
    private int[] f1436for;

    /* renamed from: goto, reason: not valid java name */
    private u82[][] f1437goto;

    /* renamed from: import, reason: not valid java name */
    private int[] f1438import;

    /* renamed from: native, reason: not valid java name */
    private Cdo f1439native;

    /* renamed from: new, reason: not valid java name */
    private byte[][] f1440new;

    /* renamed from: package, reason: not valid java name */
    private int[] f1441package;

    /* renamed from: private, reason: not valid java name */
    private int f1442private;

    /* renamed from: public, reason: not valid java name */
    private byte[][] f1443public;

    /* renamed from: return, reason: not valid java name */
    private Cif[] f1444return;

    /* renamed from: static, reason: not valid java name */
    private byte[][] f1445static;

    /* renamed from: strictfp, reason: not valid java name */
    private hf0 f1446strictfp;

    /* renamed from: super, reason: not valid java name */
    private cf0[] f1447super;

    /* renamed from: switch, reason: not valid java name */
    private if0[] f1448switch;

    /* renamed from: this, reason: not valid java name */
    private u82[][] f1449this;

    /* renamed from: throw, reason: not valid java name */
    private cf0[] f1450throw;

    /* renamed from: throws, reason: not valid java name */
    private GMSSDigestProvider f1451throws;

    /* renamed from: try, reason: not valid java name */
    private byte[][] f1452try;

    /* renamed from: volatile, reason: not valid java name */
    private int[] f1453volatile;

    /* renamed from: while, reason: not valid java name */
    private cf0[] f1454while;

    private ef0(ef0 ef0Var) {
        super(true, ef0Var.m527if());
        this.f1431default = false;
        this.f1436for = q3.m6398while(ef0Var.f1436for);
        this.f1440new = q3.m6387static(ef0Var.f1440new);
        this.f1452try = q3.m6387static(ef0Var.f1452try);
        this.f1426case = q3.m6390switch(ef0Var.f1426case);
        this.f1432else = q3.m6390switch(ef0Var.f1432else);
        this.f1437goto = ef0Var.f1437goto;
        this.f1449this = ef0Var.f1449this;
        this.f1425break = ef0Var.f1425break;
        this.f1427catch = ef0Var.f1427catch;
        this.f1428class = ef0Var.f1428class;
        this.f1429const = ef0Var.f1429const;
        this.f1434final = q3.m6390switch(ef0Var.f1434final);
        this.f1447super = ef0Var.f1447super;
        this.f1450throw = ef0Var.f1450throw;
        this.f1454while = ef0Var.f1454while;
        this.f1438import = ef0Var.f1438import;
        this.f1439native = ef0Var.f1439native;
        this.f1443public = q3.m6387static(ef0Var.f1443public);
        this.f1444return = ef0Var.f1444return;
        this.f1445static = ef0Var.f1445static;
        this.f1448switch = ef0Var.f1448switch;
        this.f1451throws = ef0Var.f1451throws;
        this.f1433extends = ef0Var.f1433extends;
        this.f1435finally = ef0Var.f1435finally;
        this.f1441package = ef0Var.f1441package;
        this.f1442private = ef0Var.f1442private;
        this.f1424abstract = ef0Var.f1424abstract;
        this.f1430continue = ef0Var.f1430continue;
        this.f1446strictfp = ef0Var.f1446strictfp;
        this.f1453volatile = ef0Var.f1453volatile;
    }

    public ef0(int[] iArr, byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, byte[][][] bArr5, u82[][] u82VarArr, u82[][] u82VarArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, cf0[] cf0VarArr, cf0[] cf0VarArr2, cf0[] cf0VarArr3, int[] iArr2, byte[][] bArr6, Cif[] cifArr, byte[][] bArr7, if0[] if0VarArr, Cdo cdo, GMSSDigestProvider gMSSDigestProvider) {
        super(true, cdo);
        this.f1431default = false;
        Digest digest = gMSSDigestProvider.get();
        this.f1424abstract = digest;
        this.f1430continue = digest.getDigestSize();
        this.f1439native = cdo;
        this.f1435finally = cdo.m35593new();
        this.f1441package = cdo.m35592if();
        this.f1433extends = cdo.m35590do();
        int iM35591for = this.f1439native.m35591for();
        this.f1442private = iM35591for;
        if (iArr == null) {
            this.f1436for = new int[iM35591for];
            for (int i = 0; i < this.f1442private; i++) {
                this.f1436for[i] = 0;
            }
        } else {
            this.f1436for = iArr;
        }
        this.f1440new = bArr;
        this.f1452try = bArr2;
        this.f1426case = q3.m6390switch(bArr3);
        this.f1432else = bArr4;
        int i2 = 2;
        if (bArr5 == null) {
            this.f1434final = new byte[this.f1442private][][];
            int i3 = 0;
            while (i3 < this.f1442private) {
                this.f1434final[i3] = (byte[][]) Array.newInstance((Class<?>) byte.class, (int) Math.floor(this.f1433extends[i3] / i2), this.f1430continue);
                i3++;
                i2 = 2;
            }
        } else {
            this.f1434final = bArr5;
        }
        if (vectorArr == null) {
            this.f1425break = new Vector[this.f1442private];
            for (int i4 = 0; i4 < this.f1442private; i4++) {
                this.f1425break[i4] = new Vector();
            }
        } else {
            this.f1425break = vectorArr;
        }
        if (vectorArr2 == null) {
            this.f1427catch = new Vector[this.f1442private - 1];
            int i5 = 0;
            for (int i6 = 1; i5 < this.f1442private - i6; i6 = 1) {
                this.f1427catch[i5] = new Vector();
                i5++;
            }
        } else {
            this.f1427catch = vectorArr2;
        }
        this.f1437goto = u82VarArr;
        this.f1449this = u82VarArr2;
        this.f1428class = vectorArr3;
        this.f1429const = vectorArr4;
        this.f1443public = bArr6;
        this.f1451throws = gMSSDigestProvider;
        if (cifArr == null) {
            this.f1444return = new Cif[this.f1442private - 1];
            int i7 = 0;
            for (int i8 = 1; i7 < this.f1442private - i8; i8 = 1) {
                int i9 = i7 + 1;
                this.f1444return[i7] = new Cif(this.f1433extends[i9], this.f1441package[i9], this.f1451throws);
                i7 = i9;
            }
        } else {
            this.f1444return = cifArr;
        }
        this.f1445static = bArr7;
        this.f1453volatile = new int[this.f1442private];
        for (int i10 = 0; i10 < this.f1442private; i10++) {
            this.f1453volatile[i10] = 1 << this.f1433extends[i10];
        }
        this.f1446strictfp = new hf0(this.f1424abstract);
        int i11 = this.f1442private;
        if (i11 <= 1) {
            this.f1447super = new cf0[0];
        } else if (cf0VarArr == null) {
            this.f1447super = new cf0[i11 - 2];
            int i12 = 0;
            while (i12 < this.f1442private - 2) {
                int i13 = i12 + 1;
                this.f1447super[i12] = new cf0(gMSSDigestProvider.get(), this.f1435finally[i13], this.f1453volatile[i12 + 2], this.f1452try[i12]);
                i12 = i13;
            }
        } else {
            this.f1447super = cf0VarArr;
        }
        if (cf0VarArr2 == null) {
            this.f1450throw = new cf0[this.f1442private - 1];
            int i14 = 0;
            for (int i15 = 1; i14 < this.f1442private - i15; i15 = 1) {
                int i16 = i14 + 1;
                this.f1450throw[i14] = new cf0(gMSSDigestProvider.get(), this.f1435finally[i14], this.f1453volatile[i16], this.f1440new[i14]);
                i14 = i16;
            }
        } else {
            this.f1450throw = cf0VarArr2;
        }
        if (cf0VarArr3 == null) {
            this.f1454while = new cf0[this.f1442private - 1];
            int i17 = 0;
            for (int i18 = 1; i17 < this.f1442private - i18; i18 = 1) {
                int i19 = i17 + 1;
                this.f1454while[i17] = new cf0(gMSSDigestProvider.get(), this.f1435finally[i17], this.f1453volatile[i19]);
                i17 = i19;
            }
        } else {
            this.f1454while = cf0VarArr3;
        }
        if (iArr2 == null) {
            this.f1438import = new int[this.f1442private - 1];
            int i20 = 0;
            for (int i21 = 1; i20 < this.f1442private - i21; i21 = 1) {
                this.f1438import[i20] = -1;
                i20++;
            }
        } else {
            this.f1438import = iArr2;
        }
        int i22 = this.f1430continue;
        byte[] bArr8 = new byte[i22];
        byte[] bArr9 = new byte[i22];
        if (if0VarArr != null) {
            this.f1448switch = if0VarArr;
            return;
        }
        this.f1448switch = new if0[this.f1442private - 1];
        int i23 = 0;
        while (i23 < this.f1442private - 1) {
            System.arraycopy(bArr[i23], 0, bArr8, 0, this.f1430continue);
            this.f1446strictfp.m3009for(bArr8);
            byte[] bArrM3009for = this.f1446strictfp.m3009for(bArr8);
            int i24 = i23 + 1;
            this.f1448switch[i23] = new if0(gMSSDigestProvider.get(), this.f1435finally[i23], this.f1433extends[i24]);
            this.f1448switch[i23].m3406case(bArrM3009for, bArr6[i23]);
            i23 = i24;
        }
    }

    public ef0(byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, u82[][] u82VarArr, u82[][] u82VarArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, byte[][] bArr5, byte[][] bArr6, Cdo cdo, GMSSDigestProvider gMSSDigestProvider) {
        this(null, bArr, bArr2, bArr3, bArr4, null, u82VarArr, u82VarArr2, vectorArr, vectorArr2, vectorArr3, vectorArr4, null, null, null, null, bArr5, null, bArr6, null, cdo, gMSSDigestProvider);
    }

    /* renamed from: class, reason: not valid java name */
    private int m1853class(int i) {
        if (i == 0) {
            return -1;
        }
        int i2 = 0;
        int i3 = 1;
        while (i % i3 == 0) {
            i3 *= 2;
            i2++;
        }
        return i2 - 1;
    }

    /* renamed from: for, reason: not valid java name */
    private void m1854for(int i) {
        int i2;
        byte[] bArrM2666for;
        int i3 = this.f1436for[i];
        int i4 = this.f1433extends[i];
        int i5 = this.f1441package[i];
        int i6 = 0;
        while (true) {
            i2 = i4 - i5;
            if (i6 >= i2) {
                break;
            }
            this.f1437goto[i][i6].m8292const(this.f1446strictfp);
            i6++;
        }
        int iM1853class = m1853class(i3);
        byte[] bArr = new byte[this.f1430continue];
        byte[] bArrM3009for = this.f1446strictfp.m3009for(this.f1440new[i]);
        int i7 = (i3 >>> (iM1853class + 1)) & 1;
        int i8 = this.f1430continue;
        byte[] bArr2 = new byte[i8];
        int i9 = i4 - 1;
        if (iM1853class < i9 && i7 == 0) {
            System.arraycopy(this.f1426case[i][iM1853class], 0, bArr2, 0, i8);
        }
        int i10 = this.f1430continue;
        byte[] bArr3 = new byte[i10];
        if (iM1853class == 0) {
            if (i == this.f1442private - 1) {
                bArrM2666for = new gg2(bArrM3009for, this.f1451throws.get(), this.f1435finally[i]).m2666for();
            } else {
                byte[] bArr4 = new byte[i10];
                System.arraycopy(this.f1440new[i], 0, bArr4, 0, i10);
                this.f1446strictfp.m3009for(bArr4);
                byte[] bArrM893do = this.f1450throw[i].m893do();
                this.f1450throw[i].m896try(bArr4);
                bArrM2666for = bArrM893do;
            }
            System.arraycopy(bArrM2666for, 0, this.f1426case[i][0], 0, this.f1430continue);
        } else {
            int i11 = i10 << 1;
            byte[] bArr5 = new byte[i11];
            System.arraycopy(this.f1426case[i][iM1853class - 1], 0, bArr5, 0, i10);
            byte[] bArr6 = this.f1434final[i][(int) Math.floor(r12 / 2)];
            int i12 = this.f1430continue;
            System.arraycopy(bArr6, 0, bArr5, i12, i12);
            this.f1424abstract.update(bArr5, 0, i11);
            this.f1426case[i][iM1853class] = new byte[this.f1424abstract.getDigestSize()];
            this.f1424abstract.doFinal(this.f1426case[i][iM1853class], 0);
            for (int i13 = 0; i13 < iM1853class; i13++) {
                if (i13 < i2) {
                    if (this.f1437goto[i][i13].m8295final()) {
                        System.arraycopy(this.f1437goto[i][i13].m8298if(), 0, this.f1426case[i][i13], 0, this.f1430continue);
                        this.f1437goto[i][i13].m8293do();
                    } else {
                        System.err.println("Treehash (" + i + "," + i13 + ") not finished when needed in AuthPathComputation");
                    }
                }
                if (i13 < i9 && i13 >= i2) {
                    int i14 = i13 - i2;
                    if (this.f1428class[i][i14].size() > 0) {
                        System.arraycopy(this.f1428class[i][i14].lastElement(), 0, this.f1426case[i][i13], 0, this.f1430continue);
                        Vector[][] vectorArr = this.f1428class;
                        vectorArr[i][i14].removeElementAt(vectorArr[i][i14].size() - 1);
                    }
                }
                if (i13 < i2 && ((1 << i13) * 3) + i3 < this.f1453volatile[i]) {
                    this.f1437goto[i][i13].m8301this();
                }
            }
        }
        if (iM1853class < i9 && i7 == 0) {
            System.arraycopy(bArr2, 0, this.f1434final[i][(int) Math.floor(iM1853class / 2)], 0, this.f1430continue);
        }
        if (i != this.f1442private - 1) {
            this.f1438import[i] = m1855goto(i);
            return;
        }
        for (int i15 = 1; i15 <= i2 / 2; i15++) {
            int iM1855goto = m1855goto(i);
            if (iM1855goto >= 0) {
                try {
                    byte[] bArr7 = new byte[this.f1430continue];
                    System.arraycopy(this.f1437goto[i][iM1855goto].m8302try(), 0, bArr7, 0, this.f1430continue);
                    this.f1437goto[i][iM1855goto].m8291class(this.f1446strictfp, new gg2(this.f1446strictfp.m3009for(bArr7), this.f1451throws.get(), this.f1435finally[i]).m2666for());
                } catch (Exception e) {
                    System.out.println(e);
                }
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private int m1855goto(int i) {
        int i2 = -1;
        for (int i3 = 0; i3 < this.f1433extends[i] - this.f1441package[i]; i3++) {
            if (this.f1437goto[i][i3].m8300super() && !this.f1437goto[i][i3].m8295final() && (i2 == -1 || this.f1437goto[i][i3].m8299new() < this.f1437goto[i][i2].m8299new())) {
                i2 = i3;
            }
        }
        return i2;
    }

    /* renamed from: import, reason: not valid java name */
    private void m1856import(int i) {
        m1854for(i);
        if (i > 0) {
            if (i > 1) {
                cf0[] cf0VarArr = this.f1447super;
                int i2 = (i - 1) - 1;
                cf0VarArr[i2] = cf0VarArr[i2].m892case();
            }
            cf0[] cf0VarArr2 = this.f1450throw;
            int i3 = i - 1;
            cf0VarArr2[i3] = cf0VarArr2[i3].m892case();
            double dM1860break = m1860break(i) * 2;
            double d = this.f1433extends[i3] - this.f1441package[i3];
            Double.isNaN(dM1860break);
            Double.isNaN(d);
            int iFloor = (int) Math.floor(dM1860break / d);
            int[] iArr = this.f1436for;
            if (iArr[i] % iFloor == 1) {
                if (iArr[i] > 1 && this.f1438import[i3] >= 0) {
                    try {
                        this.f1437goto[i3][this.f1438import[i3]].m8291class(this.f1446strictfp, this.f1454while[i3].m893do());
                        this.f1437goto[i3][this.f1438import[i3]].m8295final();
                    } catch (Exception e) {
                        System.out.println(e);
                    }
                }
                this.f1438import[i3] = m1855goto(i3);
                int[] iArr2 = this.f1438import;
                if (iArr2[i3] >= 0) {
                    this.f1454while[i3] = new cf0(this.f1451throws.get(), this.f1435finally[i3], iFloor, this.f1437goto[i3][iArr2[i3]].m8302try());
                    cf0[] cf0VarArr3 = this.f1454while;
                    cf0VarArr3[i3] = cf0VarArr3[i3].m892case();
                }
            } else if (this.f1438import[i3] >= 0) {
                cf0[] cf0VarArr4 = this.f1454while;
                cf0VarArr4[i3] = cf0VarArr4[i3].m892case();
            }
            this.f1448switch[i3].m3409goto();
            if (this.f1436for[i] == 1) {
                this.f1444return[i3].m35602goto(new Vector());
            }
            m1857native(i);
        }
    }

    /* renamed from: native, reason: not valid java name */
    private void m1857native(int i) {
        byte[] bArr = new byte[this.f1430continue];
        int i2 = i - 1;
        byte[] bArrM3009for = this.f1446strictfp.m3009for(this.f1452try[i2]);
        if (i == this.f1442private - 1) {
            this.f1444return[i2].m35596catch(this.f1452try[i2], new gg2(bArrM3009for, this.f1451throws.get(), this.f1435finally[i]).m2666for());
        } else {
            this.f1444return[i2].m35596catch(this.f1452try[i2], this.f1447super[i2].m893do());
            this.f1447super[i2].m896try(this.f1452try[i2]);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private void m1858throw(int i) {
        int i2 = this.f1442private;
        if (i == i2 - 1) {
            int[] iArr = this.f1436for;
            iArr[i] = iArr[i] + 1;
        }
        if (this.f1436for[i] != this.f1453volatile[i]) {
            m1856import(i);
        } else if (i2 != 1) {
            m1859while(i);
            this.f1436for[i] = 0;
        }
    }

    /* renamed from: while, reason: not valid java name */
    private void m1859while(int i) {
        if (i > 0) {
            int[] iArr = this.f1436for;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
            int i3 = i;
            boolean z = true;
            do {
                i3--;
                if (this.f1436for[i3] < this.f1453volatile[i3]) {
                    z = false;
                }
                if (!z) {
                    break;
                }
            } while (i3 > 0);
            if (z) {
                return;
            }
            this.f1446strictfp.m3009for(this.f1440new[i]);
            this.f1448switch[i2].m3409goto();
            if (i > 1) {
                cf0[] cf0VarArr = this.f1447super;
                int i4 = i2 - 1;
                cf0VarArr[i4] = cf0VarArr[i4].m892case();
            }
            cf0[] cf0VarArr2 = this.f1450throw;
            cf0VarArr2[i2] = cf0VarArr2[i2].m892case();
            if (this.f1438import[i2] >= 0) {
                cf0[] cf0VarArr3 = this.f1454while;
                cf0VarArr3[i2] = cf0VarArr3[i2].m892case();
                try {
                    this.f1437goto[i2][this.f1438import[i2]].m8291class(this.f1446strictfp, this.f1454while[i2].m893do());
                    this.f1437goto[i2][this.f1438import[i2]].m8295final();
                } catch (Exception e) {
                    System.out.println(e);
                }
            }
            m1857native(i);
            this.f1445static[i2] = this.f1448switch[i2].m3410if();
            for (int i5 = 0; i5 < this.f1433extends[i] - this.f1441package[i]; i5++) {
                u82[] u82VarArr = this.f1437goto[i];
                u82[][] u82VarArr2 = this.f1449this;
                u82VarArr[i5] = u82VarArr2[i2][i5];
                u82VarArr2[i2][i5] = this.f1444return[i2].m35600else()[i5];
            }
            for (int i6 = 0; i6 < this.f1433extends[i]; i6++) {
                System.arraycopy(this.f1432else[i2][i6], 0, this.f1426case[i][i6], 0, this.f1430continue);
                System.arraycopy(this.f1444return[i2].m35599do()[i6], 0, this.f1432else[i2][i6], 0, this.f1430continue);
            }
            for (int i7 = 0; i7 < this.f1441package[i] - 1; i7++) {
                Vector[] vectorArr = this.f1428class[i];
                Vector[][] vectorArr2 = this.f1429const;
                vectorArr[i7] = vectorArr2[i2][i7];
                vectorArr2[i2][i7] = this.f1444return[i2].m35603if()[i7];
            }
            Vector[] vectorArr3 = this.f1425break;
            Vector[] vectorArr4 = this.f1427catch;
            vectorArr3[i] = vectorArr4[i2];
            vectorArr4[i2] = this.f1444return[i2].m35604new();
            this.f1443public[i2] = this.f1444return[i2].m35601for();
            int i8 = this.f1430continue;
            byte[] bArr = new byte[i8];
            byte[] bArr2 = new byte[i8];
            System.arraycopy(this.f1440new[i2], 0, bArr2, 0, i8);
            this.f1446strictfp.m3009for(bArr2);
            this.f1446strictfp.m3009for(bArr2);
            this.f1448switch[i2].m3406case(this.f1446strictfp.m3009for(bArr2), this.f1443public[i2]);
            m1858throw(i2);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public int m1860break(int i) {
        return this.f1453volatile[i];
    }

    /* renamed from: case, reason: not valid java name */
    public int m1861case(int i) {
        return this.f1436for[i];
    }

    /* renamed from: catch, reason: not valid java name */
    public byte[] m1862catch(int i) {
        return this.f1445static[i];
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m1863const() {
        return this.f1431default;
    }

    /* renamed from: else, reason: not valid java name */
    public int[] m1864else() {
        return this.f1436for;
    }

    /* renamed from: final, reason: not valid java name */
    public void m1865final() {
        this.f1431default = true;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[][][] m1866new() {
        return q3.m6390switch(this.f1426case);
    }

    /* renamed from: super, reason: not valid java name */
    public ef0 m1867super() {
        ef0 ef0Var = new ef0(this);
        ef0Var.m1858throw(this.f1439native.m35591for() - 1);
        return ef0Var;
    }

    /* renamed from: this, reason: not valid java name */
    public GMSSDigestProvider m1868this() {
        return this.f1451throws;
    }

    /* renamed from: try, reason: not valid java name */
    public byte[][] m1869try() {
        return q3.m6387static(this.f1440new);
    }
}
