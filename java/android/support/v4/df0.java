package android.support.v4;

import java.math.BigInteger;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.pqc.crypto.gmss.Cdo;
import org.bouncycastle.pqc.crypto.gmss.Cif;

/* loaded from: classes3.dex */
public class df0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cfinal f1035do;

    private df0(Csuper csuper) {
        Csuper csuper2 = (Csuper) csuper.mo33075final(0);
        int[] iArr = new int[csuper2.size()];
        for (int i = 0; i < csuper2.size(); i++) {
            iArr[i] = m1328new(csuper2.mo33075final(i));
        }
        Csuper csuper3 = (Csuper) csuper.mo33075final(1);
        int size = csuper3.size();
        byte[][] bArr = new byte[size][];
        for (int i2 = 0; i2 < size; i2++) {
            bArr[i2] = ((org.bouncycastle.asn1.j) csuper3.mo33075final(i2)).mo5490const();
        }
        Csuper csuper4 = (Csuper) csuper.mo33075final(2);
        int size2 = csuper4.size();
        byte[][] bArr2 = new byte[size2][];
        for (int i3 = 0; i3 < size2; i3++) {
            bArr2[i3] = ((org.bouncycastle.asn1.j) csuper4.mo33075final(i3)).mo5490const();
        }
        Csuper csuper5 = (Csuper) csuper.mo33075final(3);
        int size3 = csuper5.size();
        byte[][][] bArr3 = new byte[size3][][];
        for (int i4 = 0; i4 < size3; i4++) {
            Csuper csuper6 = (Csuper) csuper5.mo33075final(i4);
            bArr3[i4] = new byte[csuper6.size()][];
            for (int i5 = 0; i5 < bArr3[i4].length; i5++) {
                bArr3[i4][i5] = ((org.bouncycastle.asn1.j) csuper6.mo33075final(i5)).mo5490const();
            }
        }
        Csuper csuper7 = (Csuper) csuper.mo33075final(4);
        int size4 = csuper7.size();
        byte[][][] bArr4 = new byte[size4][][];
        for (int i6 = 0; i6 < size4; i6++) {
            Csuper csuper8 = (Csuper) csuper7.mo33075final(i6);
            bArr4[i6] = new byte[csuper8.size()][];
            for (int i7 = 0; i7 < bArr4[i6].length; i7++) {
                bArr4[i6][i7] = ((org.bouncycastle.asn1.j) csuper8.mo33075final(i7)).mo5490const();
            }
        }
        u82[][] u82VarArr = new u82[((Csuper) csuper.mo33075final(5)).size()][];
    }

    public df0(int[] iArr, byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, u82[][] u82VarArr, u82[][] u82VarArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, byte[][][] bArr5, cf0[] cf0VarArr, cf0[] cf0VarArr2, cf0[] cf0VarArr3, int[] iArr2, byte[][] bArr6, Cif[] cifArr, byte[][] bArr7, if0[] if0VarArr, Cdo cdo, b1 b1Var) {
        this.f1035do = m1329try(iArr, bArr, bArr2, bArr3, bArr4, bArr5, u82VarArr, u82VarArr2, vectorArr, vectorArr2, vectorArr3, vectorArr4, cf0VarArr, cf0VarArr2, cf0VarArr3, iArr2, bArr6, cifArr, bArr7, if0VarArr, cdo, new b1[]{b1Var});
    }

    /* renamed from: new, reason: not valid java name */
    private static int m1328new(ASN1Encodable aSN1Encodable) {
        BigInteger bigIntegerM33044final = ((Cgoto) aSN1Encodable).m33044final();
        if (bigIntegerM33044final.compareTo(BigInteger.valueOf(2147483647L)) <= 0 && bigIntegerM33044final.compareTo(BigInteger.valueOf(-2147483648L)) >= 0) {
            return bigIntegerM33044final.intValue();
        }
        throw new IllegalArgumentException("BigInteger not in Range: " + bigIntegerM33044final.toString());
    }

    /* renamed from: try, reason: not valid java name */
    private Cfinal m1329try(int[] iArr, byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, byte[][][] bArr5, u82[][] u82VarArr, u82[][] u82VarArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, cf0[] cf0VarArr, cf0[] cf0VarArr2, cf0[] cf0VarArr3, int[] iArr2, byte[][] bArr6, Cif[] cifArr, byte[][] bArr7, if0[] if0VarArr, Cdo cdo, b1[] b1VarArr) {
        u82[][] u82VarArr3 = u82VarArr;
        Cimport cimport = new Cimport();
        Cimport cimport2 = new Cimport();
        for (int i : iArr) {
            cimport2.m3516do(new Cgoto(i));
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
        Cimport cimport3 = new Cimport();
        for (byte[] bArr8 : bArr) {
            cimport3.m3516do(new org.bouncycastle.asn1.j(bArr8));
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport3));
        Cimport cimport4 = new Cimport();
        for (byte[] bArr9 : bArr2) {
            cimport4.m3516do(new org.bouncycastle.asn1.j(bArr9));
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport4));
        Cimport cimport5 = new Cimport();
        Cimport cimport6 = new Cimport();
        for (int i2 = 0; i2 < bArr3.length; i2++) {
            for (int i3 = 0; i3 < bArr3[i2].length; i3++) {
                cimport5.m3516do(new org.bouncycastle.asn1.j(bArr3[i2][i3]));
            }
            cimport6.m3516do(new org.bouncycastle.asn1.n(cimport5));
            cimport5 = new Cimport();
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport6));
        Cimport cimport7 = new Cimport();
        Cimport cimport8 = new Cimport();
        for (int i4 = 0; i4 < bArr4.length; i4++) {
            for (int i5 = 0; i5 < bArr4[i4].length; i5++) {
                cimport7.m3516do(new org.bouncycastle.asn1.j(bArr4[i4][i5]));
            }
            cimport8.m3516do(new org.bouncycastle.asn1.n(cimport7));
            cimport7 = new Cimport();
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport8));
        Cimport cimport9 = new Cimport();
        Cimport cimport10 = new Cimport();
        Cimport cimport11 = new Cimport();
        Cimport cimport12 = new Cimport();
        Cimport cimport13 = new Cimport();
        int i6 = 0;
        while (i6 < u82VarArr3.length) {
            int i7 = 0;
            while (i7 < u82VarArr3[i6].length) {
                cimport11.m3516do(new org.bouncycastle.asn1.n(b1VarArr[0]));
                int i8 = u82VarArr3[i6][i7].m8294else()[1];
                cimport12.m3516do(new org.bouncycastle.asn1.j(u82VarArr3[i6][i7].m8289case()[0]));
                cimport12.m3516do(new org.bouncycastle.asn1.j(u82VarArr3[i6][i7].m8289case()[1]));
                cimport12.m3516do(new org.bouncycastle.asn1.j(u82VarArr3[i6][i7].m8289case()[2]));
                for (int i9 = 0; i9 < i8; i9++) {
                    cimport12.m3516do(new org.bouncycastle.asn1.j(u82VarArr3[i6][i7].m8289case()[i9 + 3]));
                }
                cimport11.m3516do(new org.bouncycastle.asn1.n(cimport12));
                cimport12 = new Cimport();
                cimport13.m3516do(new Cgoto(u82VarArr3[i6][i7].m8294else()[0]));
                cimport13.m3516do(new Cgoto(i8));
                cimport13.m3516do(new Cgoto(u82VarArr3[i6][i7].m8294else()[2]));
                cimport13.m3516do(new Cgoto(u82VarArr3[i6][i7].m8294else()[3]));
                cimport13.m3516do(new Cgoto(u82VarArr3[i6][i7].m8294else()[4]));
                cimport13.m3516do(new Cgoto(u82VarArr3[i6][i7].m8294else()[5]));
                int i10 = 0;
                while (i10 < i8) {
                    cimport13.m3516do(new Cgoto(u82VarArr3[i6][i7].m8294else()[i10 + 6]));
                    i10++;
                    u82VarArr3 = u82VarArr;
                }
                cimport11.m3516do(new org.bouncycastle.asn1.n(cimport13));
                cimport13 = new Cimport();
                cimport10.m3516do(new org.bouncycastle.asn1.n(cimport11));
                cimport11 = new Cimport();
                i7++;
                u82VarArr3 = u82VarArr;
            }
            cimport9.m3516do(new org.bouncycastle.asn1.n(cimport10));
            cimport10 = new Cimport();
            i6++;
            u82VarArr3 = u82VarArr;
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport9));
        Cimport cimport14 = new Cimport();
        Cimport cimport15 = new Cimport();
        Cimport cimport16 = new Cimport();
        Cimport cimport17 = new Cimport();
        Cimport cimport18 = new Cimport();
        for (int i11 = 0; i11 < u82VarArr2.length; i11++) {
            for (int i12 = 0; i12 < u82VarArr2[i11].length; i12++) {
                cimport16.m3516do(new org.bouncycastle.asn1.n(b1VarArr[0]));
                int i13 = u82VarArr2[i11][i12].m8294else()[1];
                cimport17.m3516do(new org.bouncycastle.asn1.j(u82VarArr2[i11][i12].m8289case()[0]));
                cimport17.m3516do(new org.bouncycastle.asn1.j(u82VarArr2[i11][i12].m8289case()[1]));
                cimport17.m3516do(new org.bouncycastle.asn1.j(u82VarArr2[i11][i12].m8289case()[2]));
                for (int i14 = 0; i14 < i13; i14++) {
                    cimport17.m3516do(new org.bouncycastle.asn1.j(u82VarArr2[i11][i12].m8289case()[i14 + 3]));
                }
                cimport16.m3516do(new org.bouncycastle.asn1.n(cimport17));
                cimport17 = new Cimport();
                cimport18.m3516do(new Cgoto(u82VarArr2[i11][i12].m8294else()[0]));
                cimport18.m3516do(new Cgoto(i13));
                cimport18.m3516do(new Cgoto(u82VarArr2[i11][i12].m8294else()[2]));
                cimport18.m3516do(new Cgoto(u82VarArr2[i11][i12].m8294else()[3]));
                cimport18.m3516do(new Cgoto(u82VarArr2[i11][i12].m8294else()[4]));
                cimport18.m3516do(new Cgoto(u82VarArr2[i11][i12].m8294else()[5]));
                for (int i15 = 0; i15 < i13; i15++) {
                    cimport18.m3516do(new Cgoto(u82VarArr2[i11][i12].m8294else()[i15 + 6]));
                }
                cimport16.m3516do(new org.bouncycastle.asn1.n(cimport18));
                cimport18 = new Cimport();
                cimport15.m3516do(new org.bouncycastle.asn1.n(cimport16));
                cimport16 = new Cimport();
            }
            cimport14.m3516do(new org.bouncycastle.asn1.n(new org.bouncycastle.asn1.n(cimport15)));
            cimport15 = new Cimport();
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport14));
        Cimport cimport19 = new Cimport();
        Cimport cimport20 = new Cimport();
        for (int i16 = 0; i16 < bArr5.length; i16++) {
            for (int i17 = 0; i17 < bArr5[i16].length; i17++) {
                cimport19.m3516do(new org.bouncycastle.asn1.j(bArr5[i16][i17]));
            }
            cimport20.m3516do(new org.bouncycastle.asn1.n(cimport19));
            cimport19 = new Cimport();
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport20));
        Cimport cimport21 = new Cimport();
        Cimport cimport22 = new Cimport();
        for (int i18 = 0; i18 < vectorArr.length; i18++) {
            for (int i19 = 0; i19 < vectorArr[i18].size(); i19++) {
                cimport21.m3516do(new org.bouncycastle.asn1.j((byte[]) vectorArr[i18].elementAt(i19)));
            }
            cimport22.m3516do(new org.bouncycastle.asn1.n(cimport21));
            cimport21 = new Cimport();
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport22));
        Cimport cimport23 = new Cimport();
        Cimport cimport24 = new Cimport();
        for (int i20 = 0; i20 < vectorArr2.length; i20++) {
            for (int i21 = 0; i21 < vectorArr2[i20].size(); i21++) {
                cimport23.m3516do(new org.bouncycastle.asn1.j((byte[]) vectorArr2[i20].elementAt(i21)));
            }
            cimport24.m3516do(new org.bouncycastle.asn1.n(cimport23));
            cimport23 = new Cimport();
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport24));
        Cimport cimport25 = new Cimport();
        Cimport cimport26 = new Cimport();
        Cimport cimport27 = new Cimport();
        for (int i22 = 0; i22 < vectorArr3.length; i22++) {
            for (int i23 = 0; i23 < vectorArr3[i22].length; i23++) {
                for (int i24 = 0; i24 < vectorArr3[i22][i23].size(); i24++) {
                    cimport25.m3516do(new org.bouncycastle.asn1.j((byte[]) vectorArr3[i22][i23].elementAt(i24)));
                }
                cimport26.m3516do(new org.bouncycastle.asn1.n(cimport25));
                cimport25 = new Cimport();
            }
            cimport27.m3516do(new org.bouncycastle.asn1.n(cimport26));
            cimport26 = new Cimport();
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport27));
        Cimport cimport28 = new Cimport();
        Cimport cimport29 = new Cimport();
        Cimport cimport30 = new Cimport();
        for (int i25 = 0; i25 < vectorArr4.length; i25++) {
            for (int i26 = 0; i26 < vectorArr4[i25].length; i26++) {
                for (int i27 = 0; i27 < vectorArr4[i25][i26].size(); i27++) {
                    cimport28.m3516do(new org.bouncycastle.asn1.j((byte[]) vectorArr4[i25][i26].elementAt(i27)));
                }
                cimport29.m3516do(new org.bouncycastle.asn1.n(cimport28));
                cimport28 = new Cimport();
            }
            cimport30.m3516do(new org.bouncycastle.asn1.n(cimport29));
            cimport29 = new Cimport();
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport30));
        Cimport cimport31 = new Cimport();
        Cimport cimport32 = new Cimport();
        Cimport cimport33 = new Cimport();
        Cimport cimport34 = new Cimport();
        for (int i28 = 0; i28 < cf0VarArr.length; i28++) {
            cimport32.m3516do(new org.bouncycastle.asn1.n(b1VarArr[0]));
            byte[][] bArrM894for = cf0VarArr[i28].m894for();
            cimport33.m3516do(new org.bouncycastle.asn1.j(bArrM894for[0]));
            cimport33.m3516do(new org.bouncycastle.asn1.j(bArrM894for[1]));
            cimport33.m3516do(new org.bouncycastle.asn1.j(bArrM894for[2]));
            cimport33.m3516do(new org.bouncycastle.asn1.j(bArrM894for[3]));
            cimport32.m3516do(new org.bouncycastle.asn1.n(cimport33));
            cimport33 = new Cimport();
            int[] iArrM895new = cf0VarArr[i28].m895new();
            cimport34.m3516do(new Cgoto(iArrM895new[0]));
            cimport34.m3516do(new Cgoto(iArrM895new[1]));
            cimport34.m3516do(new Cgoto(iArrM895new[2]));
            cimport34.m3516do(new Cgoto(iArrM895new[3]));
            cimport32.m3516do(new org.bouncycastle.asn1.n(cimport34));
            cimport34 = new Cimport();
            cimport31.m3516do(new org.bouncycastle.asn1.n(cimport32));
            cimport32 = new Cimport();
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport31));
        Cimport cimport35 = new Cimport();
        Cimport cimport36 = new Cimport();
        Cimport cimport37 = new Cimport();
        Cimport cimport38 = new Cimport();
        for (int i29 = 0; i29 < cf0VarArr2.length; i29++) {
            cimport36.m3516do(new org.bouncycastle.asn1.n(b1VarArr[0]));
            byte[][] bArrM894for2 = cf0VarArr2[i29].m894for();
            cimport37.m3516do(new org.bouncycastle.asn1.j(bArrM894for2[0]));
            cimport37.m3516do(new org.bouncycastle.asn1.j(bArrM894for2[1]));
            cimport37.m3516do(new org.bouncycastle.asn1.j(bArrM894for2[2]));
            cimport37.m3516do(new org.bouncycastle.asn1.j(bArrM894for2[3]));
            cimport36.m3516do(new org.bouncycastle.asn1.n(cimport37));
            cimport37 = new Cimport();
            int[] iArrM895new2 = cf0VarArr2[i29].m895new();
            cimport38.m3516do(new Cgoto(iArrM895new2[0]));
            cimport38.m3516do(new Cgoto(iArrM895new2[1]));
            cimport38.m3516do(new Cgoto(iArrM895new2[2]));
            cimport38.m3516do(new Cgoto(iArrM895new2[3]));
            cimport36.m3516do(new org.bouncycastle.asn1.n(cimport38));
            cimport38 = new Cimport();
            cimport35.m3516do(new org.bouncycastle.asn1.n(cimport36));
            cimport36 = new Cimport();
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport35));
        Cimport cimport39 = new Cimport();
        Cimport cimport40 = new Cimport();
        Cimport cimport41 = new Cimport();
        Cimport cimport42 = new Cimport();
        Cimport cimport43 = cimport;
        for (int i30 = 0; i30 < cf0VarArr3.length; i30++) {
            cimport40.m3516do(new org.bouncycastle.asn1.n(b1VarArr[0]));
            byte[][] bArrM894for3 = cf0VarArr3[i30].m894for();
            cimport41.m3516do(new org.bouncycastle.asn1.j(bArrM894for3[0]));
            cimport41.m3516do(new org.bouncycastle.asn1.j(bArrM894for3[1]));
            cimport41.m3516do(new org.bouncycastle.asn1.j(bArrM894for3[2]));
            cimport41.m3516do(new org.bouncycastle.asn1.j(bArrM894for3[3]));
            cimport40.m3516do(new org.bouncycastle.asn1.n(cimport41));
            cimport41 = new Cimport();
            int[] iArrM895new3 = cf0VarArr3[i30].m895new();
            cimport42.m3516do(new Cgoto(iArrM895new3[0]));
            cimport42.m3516do(new Cgoto(iArrM895new3[1]));
            cimport42.m3516do(new Cgoto(iArrM895new3[2]));
            cimport42.m3516do(new Cgoto(iArrM895new3[3]));
            cimport40.m3516do(new org.bouncycastle.asn1.n(cimport42));
            cimport42 = new Cimport();
            cimport39.m3516do(new org.bouncycastle.asn1.n(cimport40));
            cimport40 = new Cimport();
        }
        cimport43.m3516do(new org.bouncycastle.asn1.n(cimport39));
        Cimport cimport44 = new Cimport();
        for (int i31 : iArr2) {
            cimport44.m3516do(new Cgoto(i31));
        }
        cimport43.m3516do(new org.bouncycastle.asn1.n(cimport44));
        Cimport cimport45 = new Cimport();
        for (byte[] bArr10 : bArr6) {
            cimport45.m3516do(new org.bouncycastle.asn1.j(bArr10));
        }
        cimport43.m3516do(new org.bouncycastle.asn1.n(cimport45));
        Cimport cimport46 = new Cimport();
        Cimport cimport47 = new Cimport();
        new Cimport();
        Cimport cimport48 = new Cimport();
        Cimport cimport49 = new Cimport();
        Cimport cimport50 = new Cimport();
        Cimport cimport51 = new Cimport();
        int i32 = 0;
        while (i32 < cifArr.length) {
            cimport47.m3516do(new org.bouncycastle.asn1.n(b1VarArr[0]));
            new Cimport();
            int i33 = cifArr[i32].m35595case()[0];
            int i34 = cifArr[i32].m35595case()[7];
            cimport48.m3516do(new org.bouncycastle.asn1.j(cifArr[i32].m35606try()[0]));
            int i35 = 0;
            while (i35 < i33) {
                i35++;
                cimport48.m3516do(new org.bouncycastle.asn1.j(cifArr[i32].m35606try()[i35]));
            }
            for (int i36 = 0; i36 < i34; i36++) {
                cimport48.m3516do(new org.bouncycastle.asn1.j(cifArr[i32].m35606try()[i33 + 1 + i36]));
            }
            cimport47.m3516do(new org.bouncycastle.asn1.n(cimport48));
            Cimport cimport52 = new Cimport();
            cimport49.m3516do(new Cgoto(i33));
            cimport49.m3516do(new Cgoto(cifArr[i32].m35595case()[1]));
            cimport49.m3516do(new Cgoto(cifArr[i32].m35595case()[2]));
            cimport49.m3516do(new Cgoto(cifArr[i32].m35595case()[3]));
            cimport49.m3516do(new Cgoto(cifArr[i32].m35595case()[4]));
            cimport49.m3516do(new Cgoto(cifArr[i32].m35595case()[5]));
            cimport49.m3516do(new Cgoto(cifArr[i32].m35595case()[6]));
            cimport49.m3516do(new Cgoto(i34));
            for (int i37 = 0; i37 < i33; i37++) {
                cimport49.m3516do(new Cgoto(cifArr[i32].m35595case()[i37 + 8]));
            }
            for (int i38 = 0; i38 < i34; i38++) {
                cimport49.m3516do(new Cgoto(cifArr[i32].m35595case()[i33 + 8 + i38]));
            }
            cimport47.m3516do(new org.bouncycastle.asn1.n(cimport49));
            Cimport cimport53 = new Cimport();
            Cimport cimport54 = new Cimport();
            Cimport cimport55 = new Cimport();
            Cimport cimport56 = new Cimport();
            if (cifArr[i32].m35600else() != null) {
                int i39 = 0;
                while (i39 < cifArr[i32].m35600else().length) {
                    cimport54.m3516do(new org.bouncycastle.asn1.n(b1VarArr[0]));
                    int i40 = cifArr[i32].m35600else()[i39].m8294else()[1];
                    Cimport cimport57 = cimport52;
                    cimport55.m3516do(new org.bouncycastle.asn1.j(cifArr[i32].m35600else()[i39].m8289case()[0]));
                    cimport55.m3516do(new org.bouncycastle.asn1.j(cifArr[i32].m35600else()[i39].m8289case()[1]));
                    cimport55.m3516do(new org.bouncycastle.asn1.j(cifArr[i32].m35600else()[i39].m8289case()[2]));
                    int i41 = 0;
                    while (i41 < i40) {
                        cimport55.m3516do(new org.bouncycastle.asn1.j(cifArr[i32].m35600else()[i39].m8289case()[i41 + 3]));
                        i41++;
                        cimport53 = cimport53;
                    }
                    Cimport cimport58 = cimport53;
                    cimport54.m3516do(new org.bouncycastle.asn1.n(cimport55));
                    cimport55 = new Cimport();
                    Cimport cimport59 = cimport43;
                    cimport56.m3516do(new Cgoto(cifArr[i32].m35600else()[i39].m8294else()[0]));
                    cimport56.m3516do(new Cgoto(i40));
                    cimport56.m3516do(new Cgoto(cifArr[i32].m35600else()[i39].m8294else()[2]));
                    cimport56.m3516do(new Cgoto(cifArr[i32].m35600else()[i39].m8294else()[3]));
                    cimport56.m3516do(new Cgoto(cifArr[i32].m35600else()[i39].m8294else()[4]));
                    cimport56.m3516do(new Cgoto(cifArr[i32].m35600else()[i39].m8294else()[5]));
                    int i42 = 0;
                    while (i42 < i40) {
                        cimport56.m3516do(new Cgoto(cifArr[i32].m35600else()[i39].m8294else()[i42 + 6]));
                        i42++;
                        i40 = i40;
                        cimport59 = cimport59;
                    }
                    cimport54.m3516do(new org.bouncycastle.asn1.n(cimport56));
                    cimport56 = new Cimport();
                    cimport50.m3516do(new org.bouncycastle.asn1.n(cimport54));
                    cimport54 = new Cimport();
                    i39++;
                    cimport52 = cimport57;
                    cimport53 = cimport58;
                    cimport43 = cimport59;
                }
            }
            Cimport cimport60 = cimport52;
            Cimport cimport61 = cimport53;
            Cimport cimport62 = cimport43;
            cimport47.m3516do(new org.bouncycastle.asn1.n(cimport50));
            cimport50 = new Cimport();
            Cimport cimport63 = new Cimport();
            if (cifArr[i32].m35603if() != null) {
                for (int i43 = 0; i43 < cifArr[i32].m35603if().length; i43++) {
                    for (int i44 = 0; i44 < cifArr[i32].m35603if()[i43].size(); i44++) {
                        cimport63.m3516do(new org.bouncycastle.asn1.j((byte[]) cifArr[i32].m35603if()[i43].elementAt(i44)));
                    }
                    cimport51.m3516do(new org.bouncycastle.asn1.n(cimport63));
                    cimport63 = new Cimport();
                }
            }
            cimport47.m3516do(new org.bouncycastle.asn1.n(cimport51));
            cimport51 = new Cimport();
            cimport46.m3516do(new org.bouncycastle.asn1.n(cimport47));
            cimport47 = new Cimport();
            i32++;
            cimport48 = cimport60;
            cimport49 = cimport61;
            cimport43 = cimport62;
        }
        Cimport cimport64 = cimport43;
        cimport64.m3516do(new org.bouncycastle.asn1.n(cimport46));
        Cimport cimport65 = new Cimport();
        for (byte[] bArr11 : bArr7) {
            cimport65.m3516do(new org.bouncycastle.asn1.j(bArr11));
        }
        cimport64.m3516do(new org.bouncycastle.asn1.n(cimport65));
        Cimport cimport66 = new Cimport();
        Cimport cimport67 = new Cimport();
        new Cimport();
        Cimport cimport68 = new Cimport();
        Cimport cimport69 = new Cimport();
        for (int i45 = 0; i45 < if0VarArr.length; i45++) {
            cimport67.m3516do(new org.bouncycastle.asn1.n(b1VarArr[0]));
            new Cimport();
            cimport68.m3516do(new org.bouncycastle.asn1.j(if0VarArr[i45].m3408for()[0]));
            cimport68.m3516do(new org.bouncycastle.asn1.j(if0VarArr[i45].m3408for()[1]));
            cimport68.m3516do(new org.bouncycastle.asn1.j(if0VarArr[i45].m3408for()[2]));
            cimport68.m3516do(new org.bouncycastle.asn1.j(if0VarArr[i45].m3408for()[3]));
            cimport68.m3516do(new org.bouncycastle.asn1.j(if0VarArr[i45].m3408for()[4]));
            cimport67.m3516do(new org.bouncycastle.asn1.n(cimport68));
            cimport68 = new Cimport();
            cimport69.m3516do(new Cgoto(if0VarArr[i45].m3411new()[0]));
            cimport69.m3516do(new Cgoto(if0VarArr[i45].m3411new()[1]));
            cimport69.m3516do(new Cgoto(if0VarArr[i45].m3411new()[2]));
            cimport69.m3516do(new Cgoto(if0VarArr[i45].m3411new()[3]));
            cimport69.m3516do(new Cgoto(if0VarArr[i45].m3411new()[4]));
            cimport69.m3516do(new Cgoto(if0VarArr[i45].m3411new()[5]));
            cimport69.m3516do(new Cgoto(if0VarArr[i45].m3411new()[6]));
            cimport69.m3516do(new Cgoto(if0VarArr[i45].m3411new()[7]));
            cimport69.m3516do(new Cgoto(if0VarArr[i45].m3411new()[8]));
            cimport67.m3516do(new org.bouncycastle.asn1.n(cimport69));
            cimport69 = new Cimport();
            cimport66.m3516do(new org.bouncycastle.asn1.n(cimport67));
            cimport67 = new Cimport();
        }
        cimport64.m3516do(new org.bouncycastle.asn1.n(cimport66));
        Cimport cimport70 = new Cimport();
        Cimport cimport71 = new Cimport();
        Cimport cimport72 = new Cimport();
        Cimport cimport73 = new Cimport();
        for (int i46 = 0; i46 < cdo.m35590do().length; i46++) {
            cimport71.m3516do(new Cgoto(cdo.m35590do()[i46]));
            cimport72.m3516do(new Cgoto(cdo.m35593new()[i46]));
            cimport73.m3516do(new Cgoto(cdo.m35592if()[i46]));
        }
        cimport70.m3516do(new Cgoto(cdo.m35591for()));
        cimport70.m3516do(new org.bouncycastle.asn1.n(cimport71));
        cimport70.m3516do(new org.bouncycastle.asn1.n(cimport72));
        cimport70.m3516do(new org.bouncycastle.asn1.n(cimport73));
        cimport64.m3516do(new org.bouncycastle.asn1.n(cimport70));
        Cimport cimport74 = new Cimport();
        for (b1 b1Var : b1VarArr) {
            cimport74.m3516do(b1Var);
        }
        cimport64.m3516do(new org.bouncycastle.asn1.n(cimport74));
        return new org.bouncycastle.asn1.n(cimport64);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f1035do;
    }
}
