package android.support.v4;

import java.io.PrintStream;
import java.lang.reflect.Array;
import java.util.Vector;
import org.apache.commons.lang3.Cclass;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.encoders.Cfor;

/* loaded from: classes3.dex */
public class u82 {

    /* renamed from: break, reason: not valid java name */
    private boolean f6793break;

    /* renamed from: case, reason: not valid java name */
    private byte[] f6794case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f6795catch;

    /* renamed from: class, reason: not valid java name */
    private Digest f6796class;

    /* renamed from: do, reason: not valid java name */
    private int f6797do;

    /* renamed from: else, reason: not valid java name */
    private int f6798else;

    /* renamed from: for, reason: not valid java name */
    private Vector f6799for;

    /* renamed from: goto, reason: not valid java name */
    private int f6800goto;

    /* renamed from: if, reason: not valid java name */
    private Vector f6801if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f6802new;

    /* renamed from: this, reason: not valid java name */
    private boolean f6803this;

    /* renamed from: try, reason: not valid java name */
    private byte[] f6804try;

    public u82(Vector vector, int i, Digest digest) {
        this.f6801if = vector;
        this.f6797do = i;
        this.f6802new = null;
        this.f6803this = false;
        this.f6793break = false;
        this.f6795catch = false;
        this.f6796class = digest;
        this.f6794case = new byte[digest.getDigestSize()];
        this.f6804try = new byte[this.f6796class.getDigestSize()];
    }

    public u82(Digest digest, byte[][] bArr, int[] iArr) {
        this.f6796class = digest;
        this.f6797do = iArr[0];
        this.f6798else = iArr[1];
        this.f6800goto = iArr[2];
        if (iArr[3] == 1) {
            this.f6793break = true;
        } else {
            this.f6793break = false;
        }
        if (iArr[4] == 1) {
            this.f6803this = true;
        } else {
            this.f6803this = false;
        }
        if (iArr[5] == 1) {
            this.f6795catch = true;
        } else {
            this.f6795catch = false;
        }
        this.f6799for = new Vector();
        for (int i = 0; i < this.f6798else; i++) {
            this.f6799for.addElement(hn0.m3072for(iArr[i + 6]));
        }
        this.f6802new = bArr[0];
        this.f6804try = bArr[1];
        this.f6794case = bArr[2];
        this.f6801if = new Vector();
        for (int i2 = 0; i2 < this.f6798else; i2++) {
            this.f6801if.addElement(bArr[i2 + 3]);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public void m8288break(byte[] bArr) {
        System.arraycopy(bArr, 0, this.f6794case, 0, this.f6796class.getDigestSize());
        this.f6795catch = true;
    }

    /* renamed from: case, reason: not valid java name */
    public byte[][] m8289case() {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) byte.class, this.f6798else + 3, this.f6796class.getDigestSize());
        bArr[0] = this.f6802new;
        bArr[1] = this.f6804try;
        bArr[2] = this.f6794case;
        for (int i = 0; i < this.f6798else; i++) {
            bArr[i + 3] = (byte[]) this.f6801if.elementAt(i);
        }
        return bArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m8290catch(byte[] bArr) {
        if (!this.f6803this) {
            m8301this();
        }
        this.f6802new = bArr;
        this.f6800goto = this.f6797do;
        this.f6793break = true;
    }

    /* renamed from: class, reason: not valid java name */
    public void m8291class(hf0 hf0Var, byte[] bArr) {
        PrintStream printStream;
        String str;
        if (this.f6793break) {
            printStream = System.err;
            str = "No more update possible for treehash instance!";
        } else {
            if (this.f6803this) {
                byte[] bArr2 = new byte[this.f6796class.getDigestSize()];
                hf0Var.m3009for(this.f6804try);
                if (this.f6802new == null) {
                    this.f6802new = bArr;
                    this.f6800goto = 0;
                } else {
                    int i = 0;
                    while (this.f6798else > 0 && i == ((Integer) this.f6799for.lastElement()).intValue()) {
                        int digestSize = this.f6796class.getDigestSize() << 1;
                        byte[] bArr3 = new byte[digestSize];
                        System.arraycopy(this.f6801if.lastElement(), 0, bArr3, 0, this.f6796class.getDigestSize());
                        Vector vector = this.f6801if;
                        vector.removeElementAt(vector.size() - 1);
                        Vector vector2 = this.f6799for;
                        vector2.removeElementAt(vector2.size() - 1);
                        System.arraycopy(bArr, 0, bArr3, this.f6796class.getDigestSize(), this.f6796class.getDigestSize());
                        this.f6796class.update(bArr3, 0, digestSize);
                        bArr = new byte[this.f6796class.getDigestSize()];
                        this.f6796class.doFinal(bArr, 0);
                        i++;
                        this.f6798else--;
                    }
                    this.f6801if.addElement(bArr);
                    this.f6799for.addElement(hn0.m3072for(i));
                    this.f6798else++;
                    if (((Integer) this.f6799for.lastElement()).intValue() == this.f6800goto) {
                        int digestSize2 = this.f6796class.getDigestSize() << 1;
                        byte[] bArr4 = new byte[digestSize2];
                        System.arraycopy(this.f6802new, 0, bArr4, 0, this.f6796class.getDigestSize());
                        System.arraycopy(this.f6801if.lastElement(), 0, bArr4, this.f6796class.getDigestSize(), this.f6796class.getDigestSize());
                        Vector vector3 = this.f6801if;
                        vector3.removeElementAt(vector3.size() - 1);
                        Vector vector4 = this.f6799for;
                        vector4.removeElementAt(vector4.size() - 1);
                        this.f6796class.update(bArr4, 0, digestSize2);
                        byte[] bArr5 = new byte[this.f6796class.getDigestSize()];
                        this.f6802new = bArr5;
                        this.f6796class.doFinal(bArr5, 0);
                        this.f6800goto++;
                        this.f6798else = 0;
                    }
                }
                if (this.f6800goto == this.f6797do) {
                    this.f6793break = true;
                    return;
                }
                return;
            }
            printStream = System.err;
            str = "Treehash instance not initialized before update";
        }
        printStream.println(str);
    }

    /* renamed from: const, reason: not valid java name */
    public void m8292const(hf0 hf0Var) {
        hf0Var.m3009for(this.f6794case);
    }

    /* renamed from: do, reason: not valid java name */
    public void m8293do() {
        this.f6803this = false;
        this.f6793break = false;
        this.f6802new = null;
        this.f6798else = 0;
        this.f6800goto = -1;
    }

    /* renamed from: else, reason: not valid java name */
    public int[] m8294else() {
        int i = this.f6798else;
        int[] iArr = new int[i + 6];
        iArr[0] = this.f6797do;
        iArr[1] = i;
        iArr[2] = this.f6800goto;
        if (this.f6793break) {
            iArr[3] = 1;
        } else {
            iArr[3] = 0;
        }
        if (this.f6803this) {
            iArr[4] = 1;
        } else {
            iArr[4] = 0;
        }
        if (this.f6795catch) {
            iArr[5] = 1;
        } else {
            iArr[5] = 0;
        }
        for (int i2 = 0; i2 < this.f6798else; i2++) {
            iArr[i2 + 6] = ((Integer) this.f6799for.elementAt(i2)).intValue();
        }
        return iArr;
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m8295final() {
        return this.f6793break;
    }

    /* renamed from: for, reason: not valid java name */
    public int m8296for() {
        return this.f6802new == null ? this.f6797do : this.f6800goto;
    }

    /* renamed from: goto, reason: not valid java name */
    public Vector m8297goto() {
        return this.f6801if;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m8298if() {
        return this.f6802new;
    }

    /* renamed from: new, reason: not valid java name */
    public int m8299new() {
        return this.f6802new == null ? this.f6797do : this.f6798else == 0 ? this.f6800goto : Math.min(this.f6800goto, ((Integer) this.f6799for.lastElement()).intValue());
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m8300super() {
        return this.f6803this;
    }

    /* renamed from: this, reason: not valid java name */
    public void m8301this() {
        if (this.f6795catch) {
            this.f6799for = new Vector();
            this.f6798else = 0;
            this.f6802new = null;
            this.f6800goto = -1;
            this.f6803this = true;
            System.arraycopy(this.f6794case, 0, this.f6804try, 0, this.f6796class.getDigestSize());
            return;
        }
        System.err.println("Seed " + this.f6797do + " not initialized");
    }

    public String toString() {
        StringBuilder sb;
        String string = "Treehash    : ";
        for (int i = 0; i < this.f6798else + 6; i++) {
            string = string + m8294else()[i] + Cclass.f28652do;
        }
        for (int i2 = 0; i2 < this.f6798else + 3; i2++) {
            if (m8289case()[i2] != null) {
                sb = new StringBuilder();
                sb.append(string);
                sb.append(new String(Cfor.m36327case(m8289case()[i2])));
                sb.append(Cclass.f28652do);
            } else {
                sb = new StringBuilder();
                sb.append(string);
                sb.append("null ");
            }
            string = sb.toString();
        }
        return string + "  " + this.f6796class.getDigestSize();
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m8302try() {
        return this.f6804try;
    }
}
