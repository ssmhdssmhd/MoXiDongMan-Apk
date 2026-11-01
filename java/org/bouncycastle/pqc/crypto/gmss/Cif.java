package org.bouncycastle.pqc.crypto.gmss;

import android.support.v4.hn0;
import android.support.v4.q3;
import android.support.v4.u82;
import java.lang.reflect.Array;
import java.util.Enumeration;
import java.util.Vector;
import org.apache.commons.lang3.Cclass;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.pqc.crypto.gmss.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {

    /* renamed from: break, reason: not valid java name */
    private Digest f32179break;

    /* renamed from: case, reason: not valid java name */
    private byte[][] f32180case;

    /* renamed from: catch, reason: not valid java name */
    private GMSSDigestProvider f32181catch;

    /* renamed from: class, reason: not valid java name */
    private int[] f32182class;

    /* renamed from: const, reason: not valid java name */
    private boolean f32183const;

    /* renamed from: do, reason: not valid java name */
    private int f32184do;

    /* renamed from: else, reason: not valid java name */
    private int f32185else;

    /* renamed from: final, reason: not valid java name */
    private boolean f32186final;

    /* renamed from: for, reason: not valid java name */
    private u82[] f32187for;

    /* renamed from: goto, reason: not valid java name */
    private Vector f32188goto;

    /* renamed from: if, reason: not valid java name */
    private int f32189if;

    /* renamed from: new, reason: not valid java name */
    private Vector[] f32190new;

    /* renamed from: super, reason: not valid java name */
    private int f32191super;

    /* renamed from: this, reason: not valid java name */
    private Vector f32192this;

    /* renamed from: throw, reason: not valid java name */
    private int f32193throw;

    /* renamed from: try, reason: not valid java name */
    private byte[] f32194try;

    public Cif(int i, int i2, GMSSDigestProvider gMSSDigestProvider) {
        this.f32184do = i;
        this.f32181catch = gMSSDigestProvider;
        Digest digest = gMSSDigestProvider.get();
        this.f32179break = digest;
        int digestSize = digest.getDigestSize();
        this.f32189if = digestSize;
        this.f32185else = i2;
        this.f32182class = new int[i];
        int[] iArr = {i, digestSize};
        this.f32180case = (byte[][]) Array.newInstance((Class<?>) byte.class, iArr);
        this.f32194try = new byte[this.f32189if];
        this.f32190new = new Vector[this.f32185else - 1];
        for (int i3 = 0; i3 < i2 - 1; i3++) {
            this.f32190new[i3] = new Vector();
        }
    }

    /* renamed from: break, reason: not valid java name */
    public void m35594break(byte[] bArr) {
        if (this.f32186final) {
            System.out.print("Too much updates for Tree!!");
            return;
        }
        if (!this.f32183const) {
            System.err.println("GMSSRootCalc not initialized!");
            return;
        }
        int[] iArr = this.f32182class;
        iArr[0] = iArr[0] + 1;
        if (iArr[0] == 1) {
            System.arraycopy(bArr, 0, this.f32180case[0], 0, this.f32189if);
        } else if (iArr[0] == 3 && this.f32184do > this.f32185else) {
            this.f32187for[0].m8290catch(bArr);
        }
        int[] iArr2 = this.f32182class;
        if ((iArr2[0] - 3) % 2 == 0 && iArr2[0] >= 3 && this.f32184do == this.f32185else) {
            this.f32190new[0].insertElementAt(bArr, 0);
        }
        if (this.f32182class[0] == 0) {
            this.f32188goto.addElement(bArr);
            this.f32192this.addElement(hn0.m3072for(0));
            return;
        }
        int i = this.f32189if;
        byte[] bArr2 = new byte[i];
        int i2 = i << 1;
        byte[] bArr3 = new byte[i2];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        int i3 = 0;
        while (this.f32188goto.size() > 0 && i3 == ((Integer) this.f32192this.lastElement()).intValue()) {
            System.arraycopy(this.f32188goto.lastElement(), 0, bArr3, 0, this.f32189if);
            Vector vector = this.f32188goto;
            vector.removeElementAt(vector.size() - 1);
            Vector vector2 = this.f32192this;
            vector2.removeElementAt(vector2.size() - 1);
            int i4 = this.f32189if;
            System.arraycopy(bArr2, 0, bArr3, i4, i4);
            this.f32179break.update(bArr3, 0, i2);
            bArr2 = new byte[this.f32179break.getDigestSize()];
            this.f32179break.doFinal(bArr2, 0);
            i3++;
            if (i3 < this.f32184do) {
                int[] iArr3 = this.f32182class;
                iArr3[i3] = iArr3[i3] + 1;
                if (iArr3[i3] == 1) {
                    System.arraycopy(bArr2, 0, this.f32180case[i3], 0, this.f32189if);
                }
                if (i3 >= this.f32184do - this.f32185else) {
                    if (i3 == 0) {
                        System.out.println("M���P");
                    }
                    int[] iArr4 = this.f32182class;
                    if ((iArr4[i3] - 3) % 2 == 0 && iArr4[i3] >= 3) {
                        this.f32190new[i3 - (this.f32184do - this.f32185else)].insertElementAt(bArr2, 0);
                    }
                } else if (this.f32182class[i3] == 3) {
                    this.f32187for[i3].m8290catch(bArr2);
                }
            }
        }
        this.f32188goto.addElement(bArr2);
        this.f32192this.addElement(hn0.m3072for(i3));
        if (i3 == this.f32184do) {
            this.f32186final = true;
            this.f32183const = false;
            this.f32194try = (byte[]) this.f32188goto.lastElement();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public int[] m35595case() {
        Vector vector = this.f32188goto;
        int size = vector == null ? 0 : vector.size();
        int i = this.f32184do;
        int[] iArr = new int[i + 8 + size];
        iArr[0] = i;
        iArr[1] = this.f32189if;
        iArr[2] = this.f32185else;
        iArr[3] = this.f32191super;
        iArr[4] = this.f32193throw;
        if (this.f32186final) {
            iArr[5] = 1;
        } else {
            iArr[5] = 0;
        }
        if (this.f32183const) {
            iArr[6] = 1;
        } else {
            iArr[6] = 0;
        }
        iArr[7] = size;
        for (int i2 = 0; i2 < this.f32184do; i2++) {
            iArr[i2 + 8] = this.f32182class[i2];
        }
        for (int i3 = 0; i3 < size; i3++) {
            iArr[this.f32184do + 8 + i3] = ((Integer) this.f32192this.elementAt(i3)).intValue();
        }
        return iArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m35596catch(byte[] bArr, byte[] bArr2) {
        int i = this.f32193throw;
        if (i < this.f32184do - this.f32185else && this.f32191super - 2 == this.f32182class[0]) {
            m35605this(bArr, i);
            this.f32193throw++;
            this.f32191super *= 2;
        }
        m35594break(bArr2);
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m35597class() {
        return this.f32186final;
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m35598const() {
        return this.f32183const;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[][] m35599do() {
        return Cnew.m35607case(this.f32180case);
    }

    /* renamed from: else, reason: not valid java name */
    public u82[] m35600else() {
        return Cnew.m35610for(this.f32187for);
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m35601for() {
        return q3.m6371final(this.f32194try);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m35602goto(Vector vector) {
        int i;
        this.f32187for = new u82[this.f32184do - this.f32185else];
        int i2 = 0;
        while (true) {
            i = this.f32184do;
            if (i2 >= i - this.f32185else) {
                break;
            }
            this.f32187for[i2] = new u82(vector, i2, this.f32181catch.get());
            i2++;
        }
        this.f32182class = new int[i];
        this.f32180case = (byte[][]) Array.newInstance((Class<?>) byte.class, i, this.f32189if);
        this.f32194try = new byte[this.f32189if];
        this.f32188goto = new Vector();
        this.f32192this = new Vector();
        this.f32183const = true;
        this.f32186final = false;
        for (int i3 = 0; i3 < this.f32184do; i3++) {
            this.f32182class[i3] = -1;
        }
        this.f32190new = new Vector[this.f32185else - 1];
        for (int i4 = 0; i4 < this.f32185else - 1; i4++) {
            this.f32190new[i4] = new Vector();
        }
        this.f32191super = 3;
        this.f32193throw = 0;
    }

    /* renamed from: if, reason: not valid java name */
    public Vector[] m35603if() {
        return Cnew.m35613new(this.f32190new);
    }

    /* renamed from: new, reason: not valid java name */
    public Vector m35604new() {
        Vector vector = new Vector();
        Enumeration enumerationElements = this.f32188goto.elements();
        while (enumerationElements.hasMoreElements()) {
            vector.addElement(enumerationElements.nextElement());
        }
        return vector;
    }

    /* renamed from: this, reason: not valid java name */
    public void m35605this(byte[] bArr, int i) {
        this.f32187for[i].m8288break(bArr);
    }

    public String toString() {
        Vector vector = this.f32188goto;
        int size = vector == null ? 0 : vector.size();
        String str = "";
        for (int i = 0; i < this.f32184do + 8 + size; i++) {
            str = str + m35595case()[i] + Cclass.f28652do;
        }
        for (int i2 = 0; i2 < this.f32184do + 1 + size; i2++) {
            str = str + new String(Cfor.m36327case(m35606try()[i2])) + Cclass.f28652do;
        }
        return str + "  " + this.f32181catch.get().getDigestSize();
    }

    /* renamed from: try, reason: not valid java name */
    public byte[][] m35606try() {
        Vector vector = this.f32188goto;
        int size = vector == null ? 0 : vector.size();
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) byte.class, this.f32184do + 1 + size, 64);
        bArr[0] = this.f32194try;
        int i = 0;
        while (i < this.f32184do) {
            int i2 = i + 1;
            bArr[i2] = this.f32180case[i];
            i = i2;
        }
        for (int i3 = 0; i3 < size; i3++) {
            bArr[this.f32184do + 1 + i3] = (byte[]) this.f32188goto.elementAt(i3);
        }
        return bArr;
    }
}
