package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class vk1 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private byte[] f7234case;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f7235do;

    /* renamed from: else, reason: not valid java name */
    private byte[] f7236else;

    /* renamed from: for, reason: not valid java name */
    private byte[][] f7237for;

    /* renamed from: goto, reason: not valid java name */
    private ds0[] f7238goto;

    /* renamed from: if, reason: not valid java name */
    private Ccatch f7239if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f7240new;

    /* renamed from: try, reason: not valid java name */
    private byte[][] f7241try;

    private vk1(Csuper csuper) {
        int i = 0;
        if (csuper.mo33075final(0) instanceof Cgoto) {
            this.f7235do = Cgoto.m33040catch(csuper.mo33075final(0));
        } else {
            this.f7239if = Ccatch.m32790throw(csuper.mo33075final(0));
        }
        Csuper csuper2 = (Csuper) csuper.mo33075final(1);
        this.f7237for = new byte[csuper2.size()][];
        for (int i2 = 0; i2 < csuper2.size(); i2++) {
            this.f7237for[i2] = ((Cclass) csuper2.mo33075final(i2)).mo5490const();
        }
        this.f7240new = ((Cclass) ((Csuper) csuper.mo33075final(2)).mo33075final(0)).mo5490const();
        Csuper csuper3 = (Csuper) csuper.mo33075final(3);
        this.f7241try = new byte[csuper3.size()][];
        for (int i3 = 0; i3 < csuper3.size(); i3++) {
            this.f7241try[i3] = ((Cclass) csuper3.mo33075final(i3)).mo5490const();
        }
        this.f7234case = ((Cclass) ((Csuper) csuper.mo33075final(4)).mo33075final(0)).mo5490const();
        this.f7236else = ((Cclass) ((Csuper) csuper.mo33075final(5)).mo33075final(0)).mo5490const();
        Csuper csuper4 = (Csuper) csuper.mo33075final(6);
        byte[][][][] bArr = new byte[csuper4.size()][][][];
        byte[][][][] bArr2 = new byte[csuper4.size()][][][];
        byte[][][] bArr3 = new byte[csuper4.size()][][];
        byte[][] bArr4 = new byte[csuper4.size()][];
        int i4 = 0;
        while (i4 < csuper4.size()) {
            Csuper csuper5 = (Csuper) csuper4.mo33075final(i4);
            Csuper csuper6 = (Csuper) csuper5.mo33075final(i);
            bArr[i4] = new byte[csuper6.size()][][];
            for (int i5 = 0; i5 < csuper6.size(); i5++) {
                Csuper csuper7 = (Csuper) csuper6.mo33075final(i5);
                bArr[i4][i5] = new byte[csuper7.size()][];
                for (int i6 = 0; i6 < csuper7.size(); i6++) {
                    bArr[i4][i5][i6] = ((Cclass) csuper7.mo33075final(i6)).mo5490const();
                }
            }
            Csuper csuper8 = (Csuper) csuper5.mo33075final(1);
            bArr2[i4] = new byte[csuper8.size()][][];
            for (int i7 = 0; i7 < csuper8.size(); i7++) {
                Csuper csuper9 = (Csuper) csuper8.mo33075final(i7);
                bArr2[i4][i7] = new byte[csuper9.size()][];
                for (int i8 = 0; i8 < csuper9.size(); i8++) {
                    bArr2[i4][i7][i8] = ((Cclass) csuper9.mo33075final(i8)).mo5490const();
                }
            }
            Csuper csuper10 = (Csuper) csuper5.mo33075final(2);
            bArr3[i4] = new byte[csuper10.size()][];
            for (int i9 = 0; i9 < csuper10.size(); i9++) {
                bArr3[i4][i9] = ((Cclass) csuper10.mo33075final(i9)).mo5490const();
            }
            bArr4[i4] = ((Cclass) csuper5.mo33075final(3)).mo5490const();
            i4++;
            i = 0;
        }
        int length = this.f7236else.length - 1;
        this.f7238goto = new ds0[length];
        int i10 = 0;
        while (i10 < length) {
            byte[] bArr5 = this.f7236else;
            int i11 = i10 + 1;
            this.f7238goto[i10] = new ds0(bArr5[i10], bArr5[i11], cl1.m959case(bArr[i10]), cl1.m959case(bArr2[i10]), cl1.m966new(bArr3[i10]), cl1.m965if(bArr4[i10]));
            i10 = i11;
        }
    }

    public vk1(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, ds0[] ds0VarArr) {
        this.f7235do = new Cgoto(1L);
        this.f7237for = cl1.m963for(sArr);
        this.f7240new = cl1.m961do(sArr2);
        this.f7241try = cl1.m963for(sArr3);
        this.f7234case = cl1.m961do(sArr4);
        this.f7236else = cl1.m964goto(iArr);
        this.f7238goto = ds0VarArr;
    }

    /* renamed from: case, reason: not valid java name */
    public static vk1 m8889case(Object obj) {
        if (obj instanceof vk1) {
            return (vk1) obj;
        }
        if (obj != null) {
            return new vk1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public Cgoto m8890break() {
        return this.f7235do;
    }

    /* renamed from: catch, reason: not valid java name */
    public int[] m8891catch() {
        return cl1.m962else(this.f7236else);
    }

    /* renamed from: else, reason: not valid java name */
    public short[][] m8892else() {
        return cl1.m966new(this.f7237for);
    }

    /* renamed from: goto, reason: not valid java name */
    public short[][] m8893goto() {
        return cl1.m966new(this.f7241try);
    }

    /* renamed from: new, reason: not valid java name */
    public short[] m8894new() {
        return cl1.m965if(this.f7240new);
    }

    /* renamed from: this, reason: not valid java name */
    public ds0[] m8895this() {
        return this.f7238goto;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        ASN1Encodable aSN1Encodable = this.f7235do;
        if (aSN1Encodable == null) {
            aSN1Encodable = this.f7239if;
        }
        cimport.m3516do(aSN1Encodable);
        Cimport cimport2 = new Cimport();
        int i = 0;
        while (true) {
            byte[][] bArr = this.f7237for;
            if (i >= bArr.length) {
                break;
            }
            cimport2.m3516do(new org.bouncycastle.asn1.j(bArr[i]));
            i++;
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
        Cimport cimport3 = new Cimport();
        cimport3.m3516do(new org.bouncycastle.asn1.j(this.f7240new));
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport3));
        Cimport cimport4 = new Cimport();
        int i2 = 0;
        while (true) {
            byte[][] bArr2 = this.f7241try;
            if (i2 >= bArr2.length) {
                break;
            }
            cimport4.m3516do(new org.bouncycastle.asn1.j(bArr2[i2]));
            i2++;
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport4));
        Cimport cimport5 = new Cimport();
        cimport5.m3516do(new org.bouncycastle.asn1.j(this.f7234case));
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport5));
        Cimport cimport6 = new Cimport();
        cimport6.m3516do(new org.bouncycastle.asn1.j(this.f7236else));
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport6));
        Cimport cimport7 = new Cimport();
        for (int i3 = 0; i3 < this.f7238goto.length; i3++) {
            Cimport cimport8 = new Cimport();
            byte[][][] bArrM968try = cl1.m968try(this.f7238goto[i3].m1506do());
            Cimport cimport9 = new Cimport();
            for (int i4 = 0; i4 < bArrM968try.length; i4++) {
                Cimport cimport10 = new Cimport();
                for (int i5 = 0; i5 < bArrM968try[i4].length; i5++) {
                    cimport10.m3516do(new org.bouncycastle.asn1.j(bArrM968try[i4][i5]));
                }
                cimport9.m3516do(new org.bouncycastle.asn1.n(cimport10));
            }
            cimport8.m3516do(new org.bouncycastle.asn1.n(cimport9));
            byte[][][] bArrM968try2 = cl1.m968try(this.f7238goto[i3].m1510if());
            Cimport cimport11 = new Cimport();
            for (int i6 = 0; i6 < bArrM968try2.length; i6++) {
                Cimport cimport12 = new Cimport();
                for (int i7 = 0; i7 < bArrM968try2[i6].length; i7++) {
                    cimport12.m3516do(new org.bouncycastle.asn1.j(bArrM968try2[i6][i7]));
                }
                cimport11.m3516do(new org.bouncycastle.asn1.n(cimport12));
            }
            cimport8.m3516do(new org.bouncycastle.asn1.n(cimport11));
            byte[][] bArrM963for = cl1.m963for(this.f7238goto[i3].m1511new());
            Cimport cimport13 = new Cimport();
            for (byte[] bArr3 : bArrM963for) {
                cimport13.m3516do(new org.bouncycastle.asn1.j(bArr3));
            }
            cimport8.m3516do(new org.bouncycastle.asn1.n(cimport13));
            cimport8.m3516do(new org.bouncycastle.asn1.j(cl1.m961do(this.f7238goto[i3].m1508for())));
            cimport7.m3516do(new org.bouncycastle.asn1.n(cimport8));
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport7));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public short[] m8896try() {
        return cl1.m965if(this.f7234case);
    }
}
