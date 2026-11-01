package org.mozilla.classfile;

import android.support.v4.ay0;
import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import org.apache.commons.lang3.Ctry;
import org.jsoup.nodes.Attributes;
import org.mozilla.javascript.ObjArray;
import org.mozilla.javascript.UintMap;

/* renamed from: org.mozilla.classfile.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {
    public static final short a = 256;
    public static final short b = 1024;
    private static final int c = 4;

    /* renamed from: continue, reason: not valid java name */
    public static final short f33819continue = 1;
    private static final int d = 16;
    private static final int e = 4;
    private static final int f;
    private static final int g;
    private static final boolean h;
    private static final int i = -889275714;

    /* renamed from: implements, reason: not valid java name */
    public static final short f33820implements = 32;

    /* renamed from: instanceof, reason: not valid java name */
    public static final short f33821instanceof = 64;

    /* renamed from: interface, reason: not valid java name */
    public static final short f33822interface = 8;
    private static final boolean j = false;
    private static final boolean k = false;
    private static final boolean l = false;
    private static final int m = 32;
    private static final int n = 40;

    /* renamed from: protected, reason: not valid java name */
    public static final short f33823protected = 16;

    /* renamed from: strictfp, reason: not valid java name */
    public static final short f33824strictfp = 2;

    /* renamed from: synchronized, reason: not valid java name */
    public static final short f33825synchronized = 128;

    /* renamed from: transient, reason: not valid java name */
    public static final short f33826transient = 32;

    /* renamed from: volatile, reason: not valid java name */
    public static final short f33827volatile = 4;

    /* renamed from: break, reason: not valid java name */
    private int f33829break;

    /* renamed from: case, reason: not valid java name */
    private int f33830case;

    /* renamed from: catch, reason: not valid java name */
    private Ctry f33831catch;

    /* renamed from: class, reason: not valid java name */
    private org.mozilla.classfile.Cif f33832class;

    /* renamed from: const, reason: not valid java name */
    private short f33833const;

    /* renamed from: default, reason: not valid java name */
    private long[] f33834default;

    /* renamed from: else, reason: not valid java name */
    private int[] f33836else;

    /* renamed from: extends, reason: not valid java name */
    private int f33837extends;

    /* renamed from: final, reason: not valid java name */
    private short f33838final;

    /* renamed from: finally, reason: not valid java name */
    private ObjArray f33839finally;

    /* renamed from: goto, reason: not valid java name */
    private int f33841goto;

    /* renamed from: native, reason: not valid java name */
    private short f33844native;

    /* renamed from: new, reason: not valid java name */
    private String f33845new;

    /* renamed from: package, reason: not valid java name */
    private ObjArray f33846package;

    /* renamed from: public, reason: not valid java name */
    private short f33848public;

    /* renamed from: return, reason: not valid java name */
    private short f33849return;

    /* renamed from: static, reason: not valid java name */
    private short f33850static;

    /* renamed from: super, reason: not valid java name */
    private short f33851super;

    /* renamed from: switch, reason: not valid java name */
    private int[] f33852switch;

    /* renamed from: throws, reason: not valid java name */
    private int f33855throws;

    /* renamed from: try, reason: not valid java name */
    private Ccase[] f33856try;

    /* renamed from: do, reason: not valid java name */
    private int[] f33835do = null;

    /* renamed from: if, reason: not valid java name */
    private int f33842if = 0;

    /* renamed from: for, reason: not valid java name */
    private UintMap f33840for = null;

    /* renamed from: this, reason: not valid java name */
    private byte[] f33853this = new byte[256];

    /* renamed from: throw, reason: not valid java name */
    private ObjArray f33854throw = new ObjArray();

    /* renamed from: while, reason: not valid java name */
    private ObjArray f33857while = new ObjArray();

    /* renamed from: import, reason: not valid java name */
    private ObjArray f33843import = new ObjArray();

    /* renamed from: private, reason: not valid java name */
    private int f33847private = 0;

    /* renamed from: abstract, reason: not valid java name */
    private char[] f33828abstract = new char[64];

    /* renamed from: org.mozilla.classfile.for$do, reason: invalid class name */
    public final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final byte[] f33858do;

        public Cdo(C0485for c0485for, Object... objArr) {
            byte[] bArr = new byte[(objArr.length * 2) + 4];
            this.f33858do = bArr;
            Cfor.V(Cfor.this.f33831catch.m37911catch(c0485for), bArr, 0);
            Cfor.V(objArr.length, bArr, 2);
            for (int i = 0; i < objArr.length; i++) {
                Cfor.V(Cfor.this.f33831catch.m37910case(objArr[i]), this.f33858do, (i * 2) + 4);
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof Cdo) && Arrays.equals(this.f33858do, ((Cdo) obj).f33858do);
        }

        public int hashCode() {
            return Arrays.hashCode(this.f33858do) ^ (-1);
        }
    }

    /* renamed from: org.mozilla.classfile.for$for, reason: invalid class name and collision with other inner class name */
    public static final class C0485for {

        /* renamed from: do, reason: not valid java name */
        public final byte f33860do;

        /* renamed from: for, reason: not valid java name */
        public final String f33861for;

        /* renamed from: if, reason: not valid java name */
        public final String f33862if;

        /* renamed from: new, reason: not valid java name */
        public final String f33863new;

        public C0485for(byte b, String str, String str2, String str3) {
            this.f33860do = b;
            this.f33862if = str;
            this.f33861for = str2;
            this.f33863new = str3;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0485for)) {
                return false;
            }
            C0485for c0485for = (C0485for) obj;
            return this.f33860do == c0485for.f33860do && this.f33862if.equals(c0485for.f33862if) && this.f33861for.equals(c0485for.f33861for) && this.f33863new.equals(c0485for.f33863new);
        }

        public int hashCode() {
            return this.f33860do + (this.f33862if.hashCode() * this.f33861for.hashCode() * this.f33863new.hashCode());
        }

        public String toString() {
            return this.f33862if + Ctry.f28883do + this.f33861for + this.f33863new + " (" + ((int) this.f33860do) + ')';
        }
    }

    /* renamed from: org.mozilla.classfile.for$if, reason: invalid class name */
    public static class Cif extends RuntimeException {
        private static final long serialVersionUID = 1263998431033790599L;

        public Cif(String str) {
            super(str);
        }
    }

    /* renamed from: org.mozilla.classfile.for$new, reason: invalid class name */
    public final class Cnew {

        /* renamed from: const, reason: not valid java name */
        public static final boolean f33864const = false;

        /* renamed from: goto, reason: not valid java name */
        private Cgoto[] f33872goto;

        /* renamed from: else, reason: not valid java name */
        private Cgoto[] f33870else = null;

        /* renamed from: for, reason: not valid java name */
        private int[] f33871for = null;

        /* renamed from: do, reason: not valid java name */
        private int[] f33869do = null;

        /* renamed from: try, reason: not valid java name */
        private Cgoto[] f33876try = null;

        /* renamed from: this, reason: not valid java name */
        private byte[] f33875this = null;

        /* renamed from: if, reason: not valid java name */
        private int f33873if = 0;

        /* renamed from: new, reason: not valid java name */
        private int f33874new = 0;

        /* renamed from: case, reason: not valid java name */
        private int f33866case = 0;

        /* renamed from: break, reason: not valid java name */
        private int f33865break = 0;

        /* renamed from: catch, reason: not valid java name */
        private boolean f33867catch = false;

        public Cnew() {
        }

        /* renamed from: abstract, reason: not valid java name */
        private void m37836abstract() {
            int[] iArrB = Cfor.this.B();
            int i = 0;
            this.f33870else[0].m37885this(iArrB, iArrB.length, new int[0], 0, Cfor.this.f33831catch);
            this.f33876try = new Cgoto[]{this.f33870else[0]};
            this.f33866case = 1;
            m37837break();
            while (true) {
                Cgoto[] cgotoArr = this.f33870else;
                if (i >= cgotoArr.length) {
                    m37837break();
                    return;
                }
                Cgoto cgoto = cgotoArr[i];
                if (!cgoto.m37882goto()) {
                    m37867throws(cgoto);
                }
                i++;
            }
        }

        /* renamed from: break, reason: not valid java name */
        private void m37837break() {
            while (true) {
                int i = this.f33866case;
                if (i <= 0) {
                    return;
                }
                Cgoto[] cgotoArr = this.f33876try;
                int i2 = i - 1;
                this.f33866case = i2;
                Cgoto cgoto = cgotoArr[i2];
                cgoto.m37877catch(false);
                this.f33869do = cgoto.m37881for();
                int[] iArrM37884new = cgoto.m37884new();
                this.f33871for = iArrM37884new;
                this.f33873if = this.f33869do.length;
                this.f33874new = iArrM37884new.length;
                m37848goto(cgoto);
            }
        }

        /* renamed from: case, reason: not valid java name */
        private void m37838case(int i) {
            int iM37845final = m37845final(i);
            int iM37902goto = Cthis.m37902goto(iM37845final);
            if (iM37902goto == 7 || iM37902goto == 6 || iM37902goto == 8 || iM37902goto == 5) {
                m37846finally(iM37845final);
                return;
            }
            throw new IllegalStateException("bad local variable type: " + iM37845final + " at index: " + i);
        }

        /* renamed from: catch, reason: not valid java name */
        private void m37839catch(Cgoto cgoto) {
            if (cgoto.m37885this(this.f33869do, this.f33873if, this.f33871for, this.f33874new, Cfor.this.f33831catch)) {
                m37842do(cgoto);
            }
        }

        /* renamed from: const, reason: not valid java name */
        private Cgoto m37840const(int i) {
            return m37851import(i + ((Cfor.this.f33853this[i] & 255) == 200 ? m37866throw(i + 1, 4) : (short) m37866throw(i + 1, 2)));
        }

        /* renamed from: default, reason: not valid java name */
        private int m37841default() {
            int[] iArr = this.f33871for;
            int i = this.f33874new - 1;
            this.f33874new = i;
            return iArr[i];
        }

        /* renamed from: do, reason: not valid java name */
        private void m37842do(Cgoto cgoto) {
            if (cgoto.m37880else()) {
                return;
            }
            cgoto.m37877catch(true);
            cgoto.m37878class(true);
            int i = this.f33866case;
            Cgoto[] cgotoArr = this.f33876try;
            if (i == cgotoArr.length) {
                Cgoto[] cgotoArr2 = new Cgoto[i * 2];
                System.arraycopy(cgotoArr, 0, cgotoArr2, 0, i);
                this.f33876try = cgotoArr2;
            }
            Cgoto[] cgotoArr3 = this.f33876try;
            int i2 = this.f33866case;
            this.f33866case = i2 + 1;
            cgotoArr3[i2] = cgoto;
        }

        /* renamed from: else, reason: not valid java name */
        private void m37843else(int i) {
            m37856private(i, m37841default());
        }

        /* renamed from: extends, reason: not valid java name */
        private long m37844extends() {
            long jM37841default = m37841default();
            return Cthis.m37905this((int) jM37841default) ? jM37841default : (jM37841default << 32) | (m37841default() & 16777215);
        }

        /* renamed from: final, reason: not valid java name */
        private int m37845final(int i) {
            if (i < this.f33873if) {
                return this.f33869do[i];
            }
            return 0;
        }

        /* renamed from: finally, reason: not valid java name */
        private void m37846finally(int i) {
            int i2 = this.f33874new;
            if (i2 == this.f33871for.length) {
                int[] iArr = new int[Math.max(i2 * 2, 4)];
                System.arraycopy(this.f33871for, 0, iArr, 0, this.f33874new);
                this.f33871for = iArr;
            }
            int[] iArr2 = this.f33871for;
            int i3 = this.f33874new;
            this.f33874new = i3 + 1;
            iArr2[i3] = i;
        }

        /* renamed from: for, reason: not valid java name */
        private void m37847for() {
            int[] iArrM37876case = this.f33870else[0].m37876case();
            int iM37886try = -1;
            int i = 1;
            while (true) {
                Cgoto[] cgotoArr = this.f33870else;
                if (i >= cgotoArr.length) {
                    return;
                }
                Cgoto cgoto = cgotoArr[i];
                int[] iArrM37876case2 = cgoto.m37876case();
                int[] iArrM37884new = cgoto.m37884new();
                int iM37886try2 = (cgoto.m37886try() - iM37886try) - 1;
                if (iArrM37884new.length == 0) {
                    int length = iArrM37876case.length > iArrM37876case2.length ? iArrM37876case2.length : iArrM37876case.length;
                    int iAbs = Math.abs(iArrM37876case.length - iArrM37876case2.length);
                    int i2 = 0;
                    while (i2 < length && iArrM37876case[i2] == iArrM37876case2[i2]) {
                        i2++;
                    }
                    if (i2 == iArrM37876case2.length && iAbs == 0) {
                        m37857protected(iM37886try2);
                    } else if (i2 == iArrM37876case2.length && iAbs <= 3) {
                        m37870volatile(iAbs, iM37886try2);
                    } else if (i2 != iArrM37876case.length || iAbs > 3) {
                        m37853interface(iArrM37876case2, iArrM37884new, iM37886try2);
                    } else {
                        m37861strictfp(iArrM37876case2, iAbs, iM37886try2);
                    }
                } else if (iArrM37884new.length != 1) {
                    m37853interface(iArrM37876case2, iArrM37884new, iM37886try2);
                } else if (Arrays.equals(iArrM37876case, iArrM37876case2)) {
                    m37868transient(iArrM37884new, iM37886try2);
                } else {
                    m37853interface(iArrM37876case2, iArrM37884new, iM37886try2);
                }
                iM37886try = cgoto.m37886try();
                i++;
                iArrM37876case = iArrM37876case2;
            }
        }

        /* renamed from: goto, reason: not valid java name */
        private void m37848goto(Cgoto cgoto) {
            int iM37886try = cgoto.m37886try();
            int i = 0;
            while (iM37886try < cgoto.m37879do()) {
                i = Cfor.this.f33853this[iM37886try] & 255;
                int iM37869try = m37869try(iM37886try);
                if (m37860static(i)) {
                    m37839catch(m37840const(iM37886try));
                } else if (i == 170) {
                    int i2 = iM37886try + 1 + ((iM37886try ^ (-1)) & 3);
                    m37839catch(m37851import(m37866throw(i2, 4) + iM37886try));
                    int iM37866throw = (m37866throw(i2 + 8, 4) - m37866throw(i2 + 4, 4)) + 1;
                    int i3 = i2 + 12;
                    for (int i4 = 0; i4 < iM37866throw; i4++) {
                        m37839catch(m37851import(m37866throw((i4 * 4) + i3, 4) + iM37886try));
                    }
                }
                for (int i5 = 0; i5 < Cfor.this.f33830case; i5++) {
                    Ccase ccase = Cfor.this.f33856try[i5];
                    short sI = (short) Cfor.this.I(ccase.f33803do);
                    short sI2 = (short) Cfor.this.I(ccase.f33805if);
                    if (iM37886try >= sI && iM37886try < sI2) {
                        Cgoto cgotoM37851import = m37851import((short) Cfor.this.I(ccase.f33804for));
                        short s = ccase.f33806new;
                        cgotoM37851import.m37885this(this.f33869do, this.f33873if, new int[]{s == 0 ? Cthis.m37898do(Cfor.this.f33831catch.m37913do("java/lang/Throwable")) : Cthis.m37898do(s)}, 1, Cfor.this.f33831catch);
                        m37842do(cgotoM37851import);
                    }
                }
                iM37886try += iM37869try;
            }
            if (m37863switch(i)) {
                return;
            }
            int iM37883if = cgoto.m37883if() + 1;
            Cgoto[] cgotoArr = this.f33870else;
            if (iM37883if < cgotoArr.length) {
                m37839catch(cgotoArr[iM37883if]);
            }
        }

        /* renamed from: if, reason: not valid java name */
        private void m37849if() {
            this.f33874new = 0;
        }

        /* renamed from: implements, reason: not valid java name */
        private int m37850implements(int i) {
            int i2 = i & 255;
            byte[] bArr = this.f33875this;
            int i3 = this.f33865break;
            int i4 = i3 + 1;
            this.f33865break = i4;
            bArr[i3] = (byte) i2;
            if (i2 == 7 || i2 == 8) {
                this.f33865break = Cfor.V(i >>> 8, bArr, i4);
            }
            return this.f33865break;
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
        
            throw new java.lang.IllegalArgumentException("bad offset: " + r4);
         */
        /* renamed from: import, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private Cgoto m37851import(int i) {
            Cgoto cgoto;
            int i2 = 0;
            while (true) {
                Cgoto[] cgotoArr = this.f33870else;
                if (i2 >= cgotoArr.length || (cgoto = cgotoArr[i2]) == null) {
                    break;
                }
                if (i >= cgoto.m37886try() && i < cgoto.m37879do()) {
                    return cgoto;
                }
                i2++;
            }
        }

        /* renamed from: instanceof, reason: not valid java name */
        private int m37852instanceof(int[] iArr) {
            return m37864synchronized(iArr, 0);
        }

        /* renamed from: interface, reason: not valid java name */
        private void m37853interface(int[] iArr, int[] iArr2, int i) {
            byte[] bArr = this.f33875this;
            int i2 = this.f33865break;
            int i3 = i2 + 1;
            this.f33865break = i3;
            bArr[i2] = -1;
            int iV = Cfor.V(i, bArr, i3);
            this.f33865break = iV;
            this.f33865break = Cfor.V(iArr.length, this.f33875this, iV);
            int iM37852instanceof = m37852instanceof(iArr);
            this.f33865break = iM37852instanceof;
            this.f33865break = Cfor.V(iArr2.length, this.f33875this, iM37852instanceof);
            this.f33865break = m37852instanceof(iArr2);
        }

        /* renamed from: native, reason: not valid java name */
        private int m37854native() {
            return (this.f33870else.length - 1) * ((Cfor.this.f33851super * 3) + 7 + (Cfor.this.f33838final * 3));
        }

        /* renamed from: package, reason: not valid java name */
        private void m37855package(long j) {
            m37846finally((int) (j & 16777215));
            long j2 = j >>> 32;
            if (j2 != 0) {
                m37846finally((int) (j2 & 16777215));
            }
        }

        /* renamed from: private, reason: not valid java name */
        private void m37856private(int i, int i2) {
            int i3 = this.f33873if;
            if (i >= i3) {
                int i4 = i + 1;
                int[] iArr = new int[i4];
                System.arraycopy(this.f33869do, 0, iArr, 0, i3);
                this.f33869do = iArr;
                this.f33873if = i4;
            }
            this.f33869do[i] = i2;
        }

        /* renamed from: protected, reason: not valid java name */
        private void m37857protected(int i) {
            if (i <= 63) {
                byte[] bArr = this.f33875this;
                int i2 = this.f33865break;
                this.f33865break = i2 + 1;
                bArr[i2] = (byte) i;
                return;
            }
            byte[] bArr2 = this.f33875this;
            int i3 = this.f33865break;
            int i4 = i3 + 1;
            this.f33865break = i4;
            bArr2[i3] = -5;
            this.f33865break = Cfor.V(i, bArr2, i4);
        }

        /* renamed from: public, reason: not valid java name */
        private void m37858public(int i, int i2) {
            m37859return(i, i2, this.f33869do, this.f33873if);
            m37859return(i, i2, this.f33871for, this.f33874new);
        }

        /* renamed from: return, reason: not valid java name */
        private void m37859return(int i, int i2, int[] iArr, int i3) {
            for (int i4 = 0; i4 < i3; i4++) {
                if (iArr[i4] == i) {
                    iArr[i4] = i2;
                }
            }
        }

        /* renamed from: static, reason: not valid java name */
        private boolean m37860static(int i) {
            switch (i) {
                case 153:
                case 154:
                case 155:
                case 156:
                case 157:
                case 158:
                case 159:
                case 160:
                case 161:
                case 162:
                case 163:
                case 164:
                case 165:
                case 166:
                case 167:
                    return true;
                default:
                    switch (i) {
                        case 198:
                        case 199:
                        case 200:
                            return true;
                        default:
                            return false;
                    }
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        private void m37861strictfp(int[] iArr, int i, int i2) {
            int length = iArr.length - i;
            byte[] bArr = this.f33875this;
            int i3 = this.f33865break;
            int i4 = i3 + 1;
            this.f33865break = i4;
            bArr[i3] = (byte) (i + 251);
            this.f33865break = Cfor.V(i2, bArr, i4);
            this.f33865break = m37864synchronized(iArr, length);
        }

        /* renamed from: super, reason: not valid java name */
        private int m37862super(int i) {
            return m37866throw(i, 1);
        }

        /* renamed from: switch, reason: not valid java name */
        private boolean m37863switch(int i) {
            if (i == 167 || i == 191 || i == 200 || i == 176 || i == 177) {
                return true;
            }
            switch (i) {
                case 170:
                case 171:
                case 172:
                case 173:
                case 174:
                    return true;
                default:
                    return false;
            }
        }

        /* renamed from: synchronized, reason: not valid java name */
        private int m37864synchronized(int[] iArr, int i) {
            while (i < iArr.length) {
                this.f33865break = m37850implements(iArr[i]);
                i++;
            }
            return this.f33865break;
        }

        /* renamed from: this, reason: not valid java name */
        private void m37865this(int i, int i2) {
            m37841default();
            m37856private(i, i2);
        }

        /* renamed from: throw, reason: not valid java name */
        private int m37866throw(int i, int i2) {
            if (i2 > 4) {
                throw new IllegalArgumentException("bad operand size");
            }
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                i3 = (i3 << 8) | (Cfor.this.f33853this[i + i4] & 255);
            }
            return i3;
        }

        /* renamed from: throws, reason: not valid java name */
        private void m37867throws(Cgoto cgoto) {
            int[] iArrM37881for = new int[0];
            int[] iArr = {Cthis.m37903if("java/lang/Throwable", Cfor.this.f33831catch)};
            for (int i = 0; i < Cfor.this.f33830case; i++) {
                Ccase ccase = Cfor.this.f33856try[i];
                int I = Cfor.this.I(ccase.f33803do);
                int I2 = Cfor.this.I(ccase.f33805if);
                Cgoto cgotoM37851import = m37851import(Cfor.this.I(ccase.f33804for));
                if ((cgoto.m37886try() > I && cgoto.m37886try() < I2) || (I > cgoto.m37886try() && I < cgoto.m37879do() && cgotoM37851import.m37882goto())) {
                    iArrM37881for = cgotoM37851import.m37881for();
                    break;
                }
            }
            int[] iArr2 = iArrM37881for;
            int i2 = 0;
            while (i2 < Cfor.this.f33830case) {
                if (Cfor.this.I(Cfor.this.f33856try[i2].f33803do) == cgoto.m37886try()) {
                    for (int i3 = i2 + 1; i3 < Cfor.this.f33830case; i3++) {
                        Cfor.this.f33856try[i3 - 1] = Cfor.this.f33856try[i3];
                    }
                    Cfor.m37800class(Cfor.this);
                    i2--;
                }
                i2++;
            }
            cgoto.m37885this(iArr2, iArr2.length, iArr, 1, Cfor.this.f33831catch);
            int iM37879do = cgoto.m37879do() - 1;
            Cfor.this.f33853this[iM37879do] = -65;
            for (int iM37886try = cgoto.m37886try(); iM37886try < iM37879do; iM37886try++) {
                Cfor.this.f33853this[iM37886try] = 0;
            }
        }

        /* renamed from: transient, reason: not valid java name */
        private void m37868transient(int[] iArr, int i) {
            if (i <= 63) {
                byte[] bArr = this.f33875this;
                int i2 = this.f33865break;
                this.f33865break = i2 + 1;
                bArr[i2] = (byte) (i + 64);
            } else {
                byte[] bArr2 = this.f33875this;
                int i3 = this.f33865break;
                int i4 = i3 + 1;
                this.f33865break = i4;
                bArr2[i3] = -9;
                this.f33865break = Cfor.V(i, bArr2, i4);
            }
            m37850implements(iArr[0]);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:121:0x03b0  */
        /* JADX WARN: Removed duplicated region for block: B:124:0x03ba  */
        /* renamed from: try, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private int m37869try(int i) {
            int iU;
            int iM37841default;
            int iM37902goto;
            int i2 = Cfor.this.f33853this[i] & 255;
            switch (i2) {
                case 0:
                case 132:
                case 167:
                case 200:
                    iU = 0;
                    if (iU == 0) {
                        iU = Cfor.U(i2, this.f33867catch);
                    }
                    if (this.f33867catch && i2 != 196) {
                        this.f33867catch = false;
                    }
                    return iU;
                case 1:
                    m37846finally(5);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                        this.f33867catch = false;
                        break;
                    }
                    return iU;
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 16:
                case 17:
                case 21:
                case 26:
                case 27:
                case 28:
                case 29:
                    m37846finally(1);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 9:
                case 10:
                case 22:
                case 30:
                case 31:
                case 32:
                case 33:
                    m37846finally(4);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 11:
                case 12:
                case 13:
                case 23:
                case 34:
                case 35:
                case 36:
                case 37:
                    m37846finally(2);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 14:
                case 15:
                case 24:
                case 38:
                case 39:
                case 40:
                case 41:
                    m37846finally(3);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 18:
                case 19:
                case 20:
                    byte bM37928while = Cfor.this.f33831catch.m37928while(i2 == 18 ? m37862super(i + 1) : m37866throw(i + 1, 2));
                    if (bM37928while == 3) {
                        m37846finally(1);
                    } else if (bM37928while == 4) {
                        m37846finally(2);
                    } else if (bM37928while == 5) {
                        m37846finally(4);
                    } else if (bM37928while == 6) {
                        m37846finally(3);
                    } else {
                        if (bM37928while != 8) {
                            throw new IllegalArgumentException("bad const type " + ((int) bM37928while));
                        }
                        m37846finally(Cthis.m37903if("java/lang/String", Cfor.this.f33831catch));
                    }
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 25:
                    m37838case(m37866throw(i + 1, this.f33867catch ? 2 : 1));
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 42:
                case 43:
                case 44:
                case 45:
                    m37838case(i2 - 42);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 46:
                case 51:
                case 52:
                case 53:
                case 96:
                case 100:
                case 104:
                case 108:
                case 112:
                case 120:
                case 122:
                case 124:
                case 126:
                case 128:
                case 130:
                case 148:
                case 149:
                case 150:
                case 151:
                case 152:
                    m37841default();
                    m37841default();
                    m37846finally(1);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 47:
                case 97:
                case 101:
                case 105:
                case 109:
                case 113:
                case 121:
                case 123:
                case 125:
                case 127:
                case 129:
                case 131:
                    m37841default();
                    m37841default();
                    m37846finally(4);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 48:
                case 98:
                case 102:
                case 106:
                case 110:
                case 114:
                    m37841default();
                    m37841default();
                    m37846finally(2);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 49:
                case 99:
                case 103:
                case 107:
                case 111:
                case 115:
                    m37841default();
                    m37841default();
                    m37846finally(3);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 50:
                    m37841default();
                    String str = (String) Cfor.this.f33831catch.m37926throw(m37841default() >>> 8);
                    if (str.charAt(0) != '[') {
                        throw new IllegalStateException("bad array type");
                    }
                    m37846finally(Cthis.m37898do(Cfor.this.f33831catch.m37913do(Cfor.C(str.substring(1)))));
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 54:
                    m37865this(m37866throw(i + 1, this.f33867catch ? 2 : 1), 1);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 55:
                    m37865this(m37866throw(i + 1, this.f33867catch ? 2 : 1), 4);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 56:
                    m37865this(m37866throw(i + 1, this.f33867catch ? 2 : 1), 2);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 57:
                    m37865this(m37866throw(i + 1, this.f33867catch ? 2 : 1), 3);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 58:
                    m37843else(m37866throw(i + 1, this.f33867catch ? 2 : 1));
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 59:
                case 60:
                case 61:
                case 62:
                    m37865this(i2 - 59, 1);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 63:
                case 64:
                case 65:
                case 66:
                    m37865this(i2 - 63, 4);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 67:
                case 68:
                case 69:
                case 70:
                    m37865this(i2 - 67, 2);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 71:
                case 72:
                case 73:
                case 74:
                    m37865this(i2 - 71, 3);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 75:
                case 76:
                case 77:
                case 78:
                    m37843else(i2 - 75);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 79:
                case 80:
                case 81:
                case 82:
                case 83:
                case 84:
                case 85:
                case 86:
                    m37841default();
                    m37841default();
                    m37841default();
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 87:
                case 153:
                case 154:
                case 155:
                case 156:
                case 157:
                case 158:
                case 179:
                case 194:
                case 195:
                case 198:
                case 199:
                    m37841default();
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 88:
                    m37844extends();
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 89:
                    int iM37841default2 = m37841default();
                    m37846finally(iM37841default2);
                    m37846finally(iM37841default2);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 90:
                    int iM37841default3 = m37841default();
                    int iM37841default4 = m37841default();
                    m37846finally(iM37841default3);
                    m37846finally(iM37841default4);
                    m37846finally(iM37841default3);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 91:
                    int iM37841default5 = m37841default();
                    long jM37844extends = m37844extends();
                    m37846finally(iM37841default5);
                    m37855package(jM37844extends);
                    m37846finally(iM37841default5);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 92:
                    long jM37844extends2 = m37844extends();
                    m37855package(jM37844extends2);
                    m37855package(jM37844extends2);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 93:
                    long jM37844extends3 = m37844extends();
                    int iM37841default6 = m37841default();
                    m37855package(jM37844extends3);
                    m37846finally(iM37841default6);
                    m37855package(jM37844extends3);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 94:
                    long jM37844extends4 = m37844extends();
                    long jM37844extends5 = m37844extends();
                    m37855package(jM37844extends4);
                    m37855package(jM37844extends5);
                    m37855package(jM37844extends4);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 95:
                    int iM37841default7 = m37841default();
                    int iM37841default8 = m37841default();
                    m37846finally(iM37841default7);
                    m37846finally(iM37841default8);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 116:
                case 136:
                case 139:
                case 142:
                case 145:
                case 146:
                case 147:
                case 190:
                case 193:
                    m37841default();
                    m37846finally(1);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 117:
                case 133:
                case 140:
                case 143:
                    m37841default();
                    m37846finally(4);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 118:
                case 134:
                case 137:
                case 144:
                    m37841default();
                    m37846finally(2);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 119:
                case 135:
                case 138:
                case 141:
                    m37841default();
                    m37846finally(3);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 159:
                case 160:
                case 161:
                case 162:
                case 163:
                case 164:
                case 165:
                case 166:
                case 181:
                    m37841default();
                    m37841default();
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 168:
                case 169:
                case 171:
                case 197:
                default:
                    throw new IllegalArgumentException("bad opcode: " + i2);
                case 170:
                    int i3 = i + 1 + ((i ^ (-1)) & 3);
                    iU = ((((m37866throw(i3 + 8, 4) - m37866throw(i3 + 4, 4)) + 4) * 4) + i3) - i;
                    m37841default();
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 172:
                case 173:
                case 174:
                case 175:
                case 176:
                case 177:
                    m37849if();
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 178:
                    m37846finally(Cthis.m37904new(Cfor.C(((Celse) Cfor.this.f33831catch.m37926throw(m37866throw(i + 1, 2))).m37795for()), Cfor.this.f33831catch));
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 180:
                    m37841default();
                    m37846finally(Cthis.m37904new(Cfor.C(((Celse) Cfor.this.f33831catch.m37926throw(m37866throw(i + 1, 2))).m37795for()), Cfor.this.f33831catch));
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 182:
                case 183:
                case 184:
                case 185:
                    Celse celse = (Celse) Cfor.this.f33831catch.m37926throw(m37866throw(i + 1, 2));
                    String strM37795for = celse.m37795for();
                    String strM37796if = celse.m37796if();
                    int iB0 = Cfor.b0(strM37795for) >>> 16;
                    for (int i4 = 0; i4 < iB0; i4++) {
                        m37841default();
                    }
                    if (i2 != 184 && ((iM37902goto = Cthis.m37902goto((iM37841default = m37841default()))) == Cthis.m37901for(0) || iM37902goto == 6)) {
                        if (!"<init>".equals(strM37796if)) {
                            throw new IllegalStateException("bad instance");
                        }
                        m37858public(iM37841default, Cthis.m37898do(Cfor.this.f33848public));
                    }
                    String strC = Cfor.C(strM37795for.substring(strM37795for.indexOf(41) + 1));
                    if (!strC.equals(ExifInterface.GPS_MEASUREMENT_INTERRUPTED)) {
                        m37846finally(Cthis.m37904new(strC, Cfor.this.f33831catch));
                    }
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 186:
                    String str2 = (String) Cfor.this.f33831catch.m37926throw(m37866throw(i + 1, 2));
                    int iB02 = Cfor.b0(str2) >>> 16;
                    for (int i5 = 0; i5 < iB02; i5++) {
                        m37841default();
                    }
                    String strC2 = Cfor.C(str2.substring(str2.indexOf(41) + 1));
                    if (!strC2.equals(ExifInterface.GPS_MEASUREMENT_INTERRUPTED)) {
                        m37846finally(Cthis.m37904new(strC2, Cfor.this.f33831catch));
                    }
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 187:
                    m37846finally(Cthis.m37901for(i));
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 188:
                    m37841default();
                    char cW = Cfor.w(Cfor.this.f33853this[i + 1]);
                    Ctry ctry = Cfor.this.f33831catch;
                    m37846finally(Cthis.m37898do(ctry.m37913do("[" + cW)));
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 189:
                    String str3 = (String) Cfor.this.f33831catch.m37926throw(m37866throw(i + 1, 2));
                    m37841default();
                    m37846finally(Cthis.m37903if("[L" + str3 + ';', Cfor.this.f33831catch));
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 191:
                    int iM37841default9 = m37841default();
                    m37849if();
                    m37846finally(iM37841default9);
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 192:
                    m37841default();
                    m37846finally(Cthis.m37898do(m37866throw(i + 1, 2)));
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
                case 196:
                    this.f33867catch = true;
                    iU = 0;
                    if (iU == 0) {
                    }
                    if (this.f33867catch) {
                    }
                    return iU;
            }
        }

        /* renamed from: volatile, reason: not valid java name */
        private void m37870volatile(int i, int i2) {
            byte[] bArr = this.f33875this;
            int i3 = this.f33865break;
            int i4 = i3 + 1;
            this.f33865break = i4;
            bArr[i3] = (byte) (251 - i);
            this.f33865break = Cfor.V(i2, bArr, i4);
        }

        /* renamed from: while, reason: not valid java name */
        private Cgoto[] m37871while() {
            Cgoto[] cgotoArr = new Cgoto[this.f33870else.length];
            for (int i = 0; i < Cfor.this.f33830case; i++) {
                Ccase ccase = Cfor.this.f33856try[i];
                short sI = (short) Cfor.this.I(ccase.f33803do);
                cgotoArr[m37851import((short) Cfor.this.I(ccase.f33804for)).m37883if()] = m37851import(sI);
            }
            for (int i2 : Cfor.this.f33840for.getKeys()) {
                cgotoArr[m37851import(i2).m37883if()] = m37851import(Cfor.this.f33840for.getInt(i2, -1));
            }
            return cgotoArr;
        }

        /* renamed from: class, reason: not valid java name */
        public void m37872class() {
            this.f33870else = new Cgoto[Cfor.this.f33842if];
            int[] iArrB = Cfor.this.B();
            int i = 0;
            while (i < Cfor.this.f33842if) {
                this.f33870else[i] = new Cgoto(i, Cfor.this.f33835do[i], i == Cfor.this.f33842if + (-1) ? Cfor.this.f33829break : Cfor.this.f33835do[i + 1], iArrB);
                i++;
            }
            this.f33872goto = m37871while();
            m37836abstract();
        }

        /* renamed from: continue, reason: not valid java name */
        public int m37873continue(byte[] bArr, int i) {
            int iV = Cfor.V(this.f33870else.length - 1, bArr, Cfor.W(this.f33865break + 2, bArr, i));
            System.arraycopy(this.f33875this, 0, bArr, iV, this.f33865break);
            return iV + this.f33865break;
        }

        /* renamed from: new, reason: not valid java name */
        public int m37874new() {
            this.f33875this = new byte[m37854native()];
            m37847for();
            return this.f33865break + 2;
        }
    }

    static {
        int i2;
        InputStream resourceAsStream = null;
        try {
            resourceAsStream = Cfor.class.getResourceAsStream("ClassFileWriter.class");
            if (resourceAsStream == null) {
                resourceAsStream = ClassLoader.getSystemResourceAsStream("org/mozilla/classfile/ClassFileWriter.class");
            }
            byte[] bArr = new byte[8];
            int i3 = 0;
            while (i3 < 8) {
                int i4 = resourceAsStream.read(bArr, i3, 8 - i3);
                if (i4 < 0) {
                    throw new IOException();
                }
                i3 += i4;
            }
            i2 = (bArr[4] << 8) | (bArr[5] & 255);
            try {
                int i5 = (bArr[7] & 255) | (bArr[6] << 8);
                g = i2;
                f = i5;
                h = i5 >= 50;
                if (resourceAsStream == null) {
                    return;
                }
            } catch (Exception unused) {
                g = i2;
                f = 48;
                h = false;
                if (resourceAsStream == null) {
                    return;
                }
                resourceAsStream.close();
            } catch (Throwable th) {
                th = th;
                g = i2;
                f = 48;
                h = false;
                if (resourceAsStream != null) {
                    try {
                        resourceAsStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Exception unused3) {
            i2 = 0;
        } catch (Throwable th2) {
            th = th2;
            i2 = 0;
        }
        try {
            resourceAsStream.close();
        } catch (IOException unused4) {
        }
    }

    public Cfor(String str, String str2, String str3) {
        this.f33845new = str;
        Ctry ctry = new Ctry(this);
        this.f33831catch = ctry;
        this.f33848public = ctry.m37913do(str);
        this.f33849return = this.f33831catch.m37913do(str2);
        if (str3 != null) {
            this.f33850static = this.f33831catch.m37915final(str3);
        }
        this.f33844native = (short) 33;
    }

    public static String A(String str) {
        int length = str.length();
        int i2 = length + 1;
        int i3 = i2 + 1;
        char[] cArr = new char[i3];
        cArr[0] = ay0.f288try;
        cArr[i2] = ';';
        str.getChars(0, length, cArr, 1);
        for (int i4 = 1; i4 != i2; i4++) {
            if (cArr[i4] == '.') {
                cArr[i4] = Attributes.InternalPrefix;
            }
        }
        return new String(cArr, 0, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int[] B() {
        int i2;
        int iM37904new;
        int[] iArr = new int[this.f33851super];
        if ((this.f33832class.m37888do() & 8) == 0) {
            if ("<init>".equals(this.f33832class.m37890if())) {
                iArr[0] = 6;
            } else {
                iArr[0] = Cthis.m37898do(this.f33848public);
            }
            i2 = 1;
        } else {
            i2 = 0;
        }
        String strM37889for = this.f33832class.m37889for();
        int iIndexOf = strM37889for.indexOf(40);
        int iIndexOf2 = strM37889for.indexOf(41);
        if (iIndexOf != 0 || iIndexOf2 < 0) {
            throw new IllegalArgumentException("bad method type");
        }
        int i3 = iIndexOf + 1;
        StringBuilder sb = new StringBuilder();
        while (i3 < iIndexOf2) {
            char cCharAt = strM37889for.charAt(i3);
            if (cCharAt != 'F') {
                if (cCharAt == 'L') {
                    int iIndexOf3 = strM37889for.indexOf(59, i3) + 1;
                    sb.append(strM37889for.substring(i3, iIndexOf3));
                    i3 = iIndexOf3;
                } else if (cCharAt != 'S' && cCharAt != 'I' && cCharAt != 'J' && cCharAt != 'Z') {
                    if (cCharAt != '[') {
                        switch (cCharAt) {
                        }
                    } else {
                        sb.append('[');
                        i3++;
                    }
                }
                iM37904new = Cthis.m37904new(C(sb.toString()), this.f33831catch);
                int i4 = i2 + 1;
                iArr[i2] = iM37904new;
                if (Cthis.m37905this(iM37904new)) {
                    i4++;
                }
                i2 = i4;
                sb.setLength(0);
            }
            sb.append(strM37889for.charAt(i3));
            i3++;
            iM37904new = Cthis.m37904new(C(sb.toString()), this.f33831catch);
            int i42 = i2 + 1;
            iArr[i2] = iM37904new;
            if (Cthis.m37905this(iM37904new)) {
            }
            i2 = i42;
            sb.setLength(0);
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String C(String str) {
        char cCharAt = str.charAt(0);
        if (cCharAt == 'F') {
            return str;
        }
        if (cCharAt == 'L') {
            return z(str);
        }
        if (cCharAt == 'S' || cCharAt == 'V' || cCharAt == 'I' || cCharAt == 'J' || cCharAt == 'Z' || cCharAt == '[') {
            return str;
        }
        switch (cCharAt) {
            case 'B':
            case 'C':
            case 'D':
                return str;
            default:
                throw new IllegalArgumentException("bad descriptor:" + str);
        }
    }

    private void D() {
        if (h) {
            for (int i2 = 0; i2 < this.f33830case; i2++) {
                q(I(this.f33856try[i2].f33804for));
            }
            Arrays.sort(this.f33835do, 0, this.f33842if);
            int i3 = this.f33835do[0];
            int i4 = 1;
            for (int i5 = 1; i5 < this.f33842if; i5++) {
                int[] iArr = this.f33835do;
                int i6 = iArr[i5];
                if (i3 != i6) {
                    if (i4 != i5) {
                        iArr[i4] = i6;
                    }
                    i4++;
                    i3 = i6;
                }
            }
            this.f33842if = i4;
            if (this.f33835do[i4 - 1] == this.f33829break) {
                this.f33842if = i4 - 1;
            }
        }
    }

    private void E() throws RuntimeException {
        byte[] bArr = this.f33853this;
        for (int i2 = 0; i2 < this.f33837extends; i2++) {
            long j2 = this.f33834default[i2];
            int i3 = (int) j2;
            int i4 = this.f33852switch[(int) (j2 >> 32)];
            if (i4 == -1) {
                throw new RuntimeException("unlocated label");
            }
            q(i4);
            int i5 = i3 - 1;
            this.f33840for.put(i4, i5);
            int i6 = i4 - i5;
            if (((short) i6) != i6) {
                throw new Cif("Program too complex: too big jump offset");
            }
            bArr[i3] = (byte) (i6 >> 8);
            bArr[i3 + 1] = (byte) i6;
        }
        this.f33837extends = 0;
    }

    public static String J(String str) {
        return str.replace(Ctry.f28883do, Attributes.InternalPrefix);
    }

    private int L() {
        if (this.f33850static != 0) {
            this.f33831catch.m37915final("SourceFile");
        }
        int iM37920native = 8 + this.f33831catch.m37920native() + 2 + 2 + 2 + 2 + (this.f33843import.size() * 2) + 2;
        for (int i2 = 0; i2 < this.f33857while.size(); i2++) {
            iM37920native += ((org.mozilla.classfile.Cdo) this.f33857while.get(i2)).m37791do();
        }
        int iM37891new = iM37920native + 2;
        for (int i3 = 0; i3 < this.f33854throw.size(); i3++) {
            iM37891new += ((org.mozilla.classfile.Cif) this.f33854throw.get(i3)).m37891new();
        }
        int i4 = iM37891new + 2;
        if (this.f33850static != 0) {
            i4 = i4 + 2 + 4 + 2;
        }
        return this.f33846package != null ? i4 + 2 + 4 + 2 + this.f33847private : i4;
    }

    private static int T(int i2) {
        if (i2 == 254 || i2 == 255) {
            return 0;
        }
        switch (i2) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
            case 102:
            case 103:
            case 104:
            case 105:
            case 106:
            case 107:
            case 108:
            case 109:
            case 110:
            case 111:
            case 112:
            case 113:
            case 114:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case 127:
            case 128:
            case 129:
            case 130:
            case 131:
            case 133:
            case 134:
            case 135:
            case 136:
            case 137:
            case 138:
            case 139:
            case 140:
            case 141:
            case 142:
            case 143:
            case 144:
            case 145:
            case 146:
            case 147:
            case 148:
            case 149:
            case 150:
            case 151:
            case 152:
            case 172:
            case 173:
            case 174:
            case 175:
            case 176:
            case 177:
                return 0;
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
            case 160:
            case 161:
            case 162:
            case 163:
            case 164:
            case 165:
            case 166:
            case 167:
            case 168:
            case 169:
            case 178:
            case 179:
            case 180:
            case 181:
            case 182:
            case 183:
            case 184:
            case 185:
                return 1;
            case 132:
                return 2;
            case 170:
            case 171:
                return -1;
            default:
                switch (i2) {
                    case 187:
                    case 188:
                    case 189:
                    case 192:
                    case 193:
                    case 198:
                    case 199:
                    case 200:
                    case 201:
                        return 1;
                    case 190:
                    case 191:
                    case 194:
                    case 195:
                    case 196:
                    case 202:
                        return 0;
                    case 197:
                        return 2;
                    default:
                        throw new IllegalArgumentException("Bad opcode: " + i2);
                }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0034 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0035 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int U(int i2, boolean z) {
        if (i2 == 254 || i2 == 255) {
            return 1;
        }
        switch (i2) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
            case 102:
            case 103:
            case 104:
            case 105:
            case 106:
            case 107:
            case 108:
            case 109:
            case 110:
            case 111:
            case 112:
            case 113:
            case 114:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case 127:
            case 128:
            case 129:
            case 130:
            case 131:
            case 133:
            case 134:
            case 135:
            case 136:
            case 137:
            case 138:
            case 139:
            case 140:
            case 141:
            case 142:
            case 143:
            case 144:
            case 145:
            case 146:
            case 147:
            case 148:
            case 149:
            case 150:
            case 151:
            case 152:
                return 1;
            case 16:
            case 18:
                return 2;
            case 17:
            case 19:
            case 20:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
            case 160:
            case 161:
            case 162:
            case 163:
            case 164:
            case 165:
            case 166:
            case 167:
            case 168:
                return 3;
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 169:
                return z ? 3 : 2;
            case 132:
                return z ? 5 : 3;
            default:
                switch (i2) {
                    case 172:
                    case 173:
                    case 174:
                    case 175:
                    case 176:
                    case 177:
                    case 190:
                    case 191:
                    case 194:
                    case 195:
                    case 196:
                    case 202:
                        return 1;
                    case 178:
                    case 179:
                    case 180:
                    case 181:
                    case 182:
                    case 183:
                    case 184:
                    case 187:
                    case 189:
                    case 192:
                    case 193:
                    case 198:
                    case 199:
                        break;
                    case 185:
                    case 186:
                    case 200:
                    case 201:
                        return 5;
                    case 188:
                        break;
                    case 197:
                        return 4;
                    default:
                        throw new IllegalArgumentException("Bad opcode: " + i2);
                }
        }
    }

    public static int V(int i2, byte[] bArr, int i3) {
        bArr[i3 + 0] = (byte) (i2 >>> 8);
        bArr[i3 + 1] = (byte) i2;
        return i3 + 2;
    }

    public static int W(int i2, byte[] bArr, int i3) {
        bArr[i3 + 0] = (byte) (i2 >>> 24);
        bArr[i3 + 1] = (byte) (i2 >>> 16);
        bArr[i3 + 2] = (byte) (i2 >>> 8);
        bArr[i3 + 3] = (byte) i2;
        return i3 + 4;
    }

    public static int X(long j2, byte[] bArr, int i2) {
        return W((int) j2, bArr, W((int) (j2 >>> 32), bArr, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0042. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:53:0x009d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00a6 A[FALL_THROUGH, PHI: r5
      0x00a6: PHI (r5v3 int) = (r5v2 int), (r5v2 int), (r5v2 int), (r5v2 int), (r5v7 int), (r5v2 int), (r5v2 int), (r5v2 int) binds: [B:44:0x008b, B:45:0x008d, B:46:0x008f, B:49:0x0095, B:55:0x00a1, B:51:0x0099, B:52:0x009b, B:53:0x009d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int b0(String str) {
        int i2;
        boolean z;
        int length = str.length();
        int iLastIndexOf = str.lastIndexOf(41);
        if (3 <= length) {
            boolean z2 = false;
            if (str.charAt(0) == '(' && 1 <= iLastIndexOf && (i2 = iLastIndexOf + 1) < length) {
                int i3 = 1;
                int i4 = 0;
                int i5 = 0;
                while (i3 != iLastIndexOf) {
                    char cCharAt = str.charAt(i3);
                    if (cCharAt != 'F') {
                        if (cCharAt != 'L') {
                            if (cCharAt != 'S' && cCharAt != 'I') {
                                if (cCharAt != 'J') {
                                    if (cCharAt != 'Z') {
                                        if (cCharAt != '[') {
                                            switch (cCharAt) {
                                                case 'D':
                                                    break;
                                                case 'B':
                                                case 'C':
                                                    break;
                                                default:
                                                    z = false;
                                                    break;
                                            }
                                            if (z) {
                                                char cCharAt2 = str.charAt(i2);
                                                if (cCharAt2 == 'F' || cCharAt2 == 'L' || cCharAt2 == 'S') {
                                                    i4++;
                                                    z2 = z;
                                                    if (z2) {
                                                        return (i5 << 16) | (65535 & i4);
                                                    }
                                                } else {
                                                    if (cCharAt2 == 'V') {
                                                        z2 = z;
                                                    } else {
                                                        if (cCharAt2 != 'I') {
                                                            if (cCharAt2 == 'J') {
                                                                i4++;
                                                            } else if (cCharAt2 != 'Z' && cCharAt2 != '[') {
                                                                switch (cCharAt2) {
                                                                }
                                                            }
                                                        }
                                                        i4++;
                                                        z2 = z;
                                                    }
                                                    if (z2) {
                                                    }
                                                }
                                            }
                                        } else {
                                            i3++;
                                            char cCharAt3 = str.charAt(i3);
                                            while (cCharAt3 == '[') {
                                                i3++;
                                                cCharAt3 = str.charAt(i3);
                                            }
                                            if (cCharAt3 != 'F') {
                                                if (cCharAt3 != 'L') {
                                                    if (cCharAt3 != 'S' && cCharAt3 != 'Z' && cCharAt3 != 'I' && cCharAt3 != 'J') {
                                                        switch (cCharAt3) {
                                                        }
                                                        z = false;
                                                        if (z) {
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                i4--;
                            }
                        }
                        i4--;
                        i5++;
                        int i6 = i3 + 1;
                        int iIndexOf = str.indexOf(59, i6);
                        if (i6 + 1 > iIndexOf || iIndexOf >= iLastIndexOf) {
                            z = false;
                            if (z) {
                            }
                        } else {
                            i3 = iIndexOf + 1;
                        }
                    }
                    i4--;
                    i5++;
                    i3++;
                    continue;
                }
                z = true;
                if (z) {
                }
            }
        }
        throw new IllegalArgumentException("Bad parameter signature: " + str);
    }

    private void c(int i2, int i3) {
        if (i2 >= 0) {
            throw new IllegalArgumentException("Bad label, no biscuit");
        }
        int i4 = i2 & Integer.MAX_VALUE;
        if (i4 >= this.f33855throws) {
            throw new IllegalArgumentException("Bad label");
        }
        int i5 = this.f33837extends;
        long[] jArr = this.f33834default;
        if (jArr == null || i5 == jArr.length) {
            if (jArr == null) {
                this.f33834default = new long[40];
            } else {
                long[] jArr2 = new long[jArr.length * 2];
                System.arraycopy(jArr, 0, jArr2, 0, i5);
                this.f33834default = jArr2;
            }
        }
        this.f33837extends = i5 + 1;
        this.f33834default[i5] = i3 | (i4 << 32);
    }

    private static int c0(int i2) {
        if (i2 == 254 || i2 == 255) {
            return 0;
        }
        switch (i2) {
            case 0:
            case 47:
            case 49:
            case 95:
            case 116:
            case 117:
            case 118:
            case 119:
            case 132:
            case 134:
            case 138:
            case 139:
            case 143:
            case 145:
            case 146:
            case 147:
            case 167:
            case 169:
            case 177:
            case 178:
            case 179:
            case 184:
            case 186:
            case 188:
            case 189:
            case 190:
            case 192:
            case 193:
            case 196:
            case 200:
            case 202:
                return 0;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 12:
            case 13:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 23:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 34:
            case 35:
            case 36:
            case 37:
            case 42:
            case 43:
            case 44:
            case 45:
            case 89:
            case 90:
            case 91:
            case 133:
            case 135:
            case 140:
            case 141:
            case 168:
            case 187:
            case 197:
            case 201:
                return 1;
            case 9:
            case 10:
            case 14:
            case 15:
            case 20:
            case 22:
            case 24:
            case 30:
            case 31:
            case 32:
            case 33:
            case 38:
            case 39:
            case 40:
            case 41:
            case 92:
            case 93:
            case 94:
                return 2;
            case 46:
            case 48:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 56:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 67:
            case 68:
            case 69:
            case 70:
            case 75:
            case 76:
            case 77:
            case 78:
            case 87:
            case 96:
            case 98:
            case 100:
            case 102:
            case 104:
            case 106:
            case 108:
            case 110:
            case 112:
            case 114:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case 128:
            case 130:
            case 136:
            case 137:
            case 142:
            case 144:
            case 149:
            case 150:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 170:
            case 171:
            case 172:
            case 174:
            case 176:
            case 180:
            case 181:
            case 182:
            case 183:
            case 185:
            case 191:
            case 194:
            case 195:
            case 198:
            case 199:
                return -1;
            case 55:
            case 57:
            case 63:
            case 64:
            case 65:
            case 66:
            case 71:
            case 72:
            case 73:
            case 74:
            case 88:
            case 97:
            case 99:
            case 101:
            case 103:
            case 105:
            case 107:
            case 109:
            case 111:
            case 113:
            case 115:
            case 127:
            case 129:
            case 131:
            case 159:
            case 160:
            case 161:
            case 162:
            case 163:
            case 164:
            case 165:
            case 166:
            case 173:
            case 175:
                return -2;
            case 79:
            case 81:
            case 83:
            case 84:
            case 85:
            case 86:
            case 148:
            case 151:
            case 152:
                return -3;
            case 80:
            case 82:
                return -4;
            default:
                throw new IllegalArgumentException("Bad opcode: " + i2);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static /* synthetic */ int m37800class(Cfor cfor) {
        int i2 = cfor.f33830case;
        cfor.f33830case = i2 - 1;
        return i2;
    }

    private void h0(int i2, int i3, int i4) throws RuntimeException {
        if (i4 == 0) {
            m37823native(i2);
            return;
        }
        if (i4 == 1) {
            m37823native(i2 + 1);
            return;
        }
        if (i4 == 2) {
            m37823native(i2 + 2);
        } else if (i4 != 3) {
            m37827public(i3, i4);
        } else {
            m37823native(i2 + 3);
        }
    }

    private int p(int i2) {
        if (this.f33832class == null) {
            throw new IllegalArgumentException("No method to add to");
        }
        int i3 = this.f33829break;
        int i4 = i2 + i3;
        byte[] bArr = this.f33853this;
        if (i4 > bArr.length) {
            int length = bArr.length * 2;
            if (i4 > length) {
                length = i4;
            }
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, i3);
            this.f33853this = bArr2;
        }
        this.f33829break = i4;
        return i3;
    }

    private void q(int i2) {
        if (h) {
            int[] iArr = this.f33835do;
            if (iArr == null) {
                this.f33835do = new int[4];
            } else {
                int length = iArr.length;
                int i3 = this.f33842if;
                if (length == i3) {
                    int[] iArr2 = new int[i3 * 2];
                    System.arraycopy(iArr, 0, iArr2, 0, i3);
                    this.f33835do = iArr2;
                }
            }
            int[] iArr3 = this.f33835do;
            int i4 = this.f33842if;
            this.f33842if = i4 + 1;
            iArr3[i4] = i2;
        }
    }

    private void s(int i2) {
        this.f33853this[p(1)] = (byte) i2;
    }

    private void t(int i2) {
        V(i2, this.f33853this, p(2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static char w(int i2) {
        switch (i2) {
            case 4:
                return ay0.f286for;
            case 5:
                return 'C';
            case 6:
                return 'F';
            case 7:
                return 'D';
            case 8:
                return 'B';
            case 9:
                return 'S';
            case 10:
                return 'I';
            case 11:
                return 'J';
            default:
                throw new IllegalArgumentException("bad operand");
        }
    }

    private static void x(int i2) {
        String str;
        if (i2 < 0) {
            str = "Stack underflow: " + i2;
        } else {
            str = "Too big stack: " + i2;
        }
        throw new IllegalStateException(str);
    }

    private static String y(int i2) {
        return "";
    }

    private static String z(String str) {
        return str.substring(1, str.length() - 1);
    }

    public final char[] F(int i2) {
        char[] cArr = this.f33828abstract;
        if (i2 > cArr.length) {
            int length = cArr.length * 2;
            if (i2 <= length) {
                i2 = length;
            }
            this.f33828abstract = new char[i2];
        }
        return this.f33828abstract;
    }

    public final String G() {
        return this.f33845new;
    }

    public int H() {
        return this.f33829break;
    }

    public int I(int i2) {
        if (i2 >= 0) {
            throw new IllegalArgumentException("Bad label, no biscuit");
        }
        int i3 = i2 & Integer.MAX_VALUE;
        if (i3 < this.f33855throws) {
            return this.f33852switch[i3];
        }
        throw new IllegalArgumentException("Bad label");
    }

    public short K() {
        return this.f33833const;
    }

    public boolean M(String str) {
        return this.f33831catch.m37922public(str);
    }

    public void N(int i2) {
        this.f33833const = (short) 1;
        O(i2);
    }

    public void O(int i2) {
        if (i2 >= 0) {
            throw new IllegalArgumentException("Bad label, no biscuit");
        }
        int i3 = i2 & Integer.MAX_VALUE;
        if (i3 > this.f33855throws) {
            throw new IllegalArgumentException("Bad label");
        }
        int[] iArr = this.f33852switch;
        if (iArr[i3] != -1) {
            throw new IllegalStateException("Can only mark label once");
        }
        iArr[i3] = this.f33829break;
    }

    public void P(int i2, short s) {
        O(i2);
        this.f33833const = s;
    }

    public final void Q(int i2, int i3) throws RuntimeException {
        q(this.f33829break);
        this.f33840for.put(this.f33829break, i2);
        a0(i2, i3, this.f33829break);
    }

    public final void R(int i2, int i3, int i4) throws RuntimeException {
        if (i4 < 0 || i4 > this.f33838final) {
            throw new IllegalArgumentException("Bad stack index: " + i4);
        }
        this.f33833const = (short) i4;
        q(this.f33829break);
        this.f33840for.put(this.f33829break, i2);
        a0(i2, i3, this.f33829break);
    }

    public final void S(int i2) throws RuntimeException {
        q(this.f33829break);
        this.f33840for.put(this.f33829break, i2);
        a0(i2, -1, this.f33829break);
    }

    public void Y(short s) {
        this.f33844native = s;
    }

    public void Z(short s) {
        this.f33833const = s;
    }

    public void a(int i2) throws RuntimeException {
        h0(30, 22, i2);
    }

    public void a0(int i2, int i3, int i4) {
        int i5;
        if (i4 < 0 || (i5 = this.f33829break) < i4) {
            throw new IllegalArgumentException("Bad jump target: " + i4);
        }
        if (i3 < -1) {
            throw new IllegalArgumentException("Bad case index: " + i3);
        }
        int i6 = (i2 ^ (-1)) & 3;
        int i7 = i3 < 0 ? i2 + 1 + i6 : i2 + 1 + i6 + ((i3 + 3) * 4);
        if (i2 < 0 || ((i5 - 16) - i6) - 1 < i2) {
            throw new IllegalArgumentException(i2 + " is outside a possible range of tableswitch in already generated code");
        }
        byte[] bArr = this.f33853this;
        if ((bArr[i2] & 255) != 170) {
            throw new IllegalArgumentException(i2 + " is not offset of tableswitch statement");
        }
        if (i7 >= 0 && i5 >= i7 + 4) {
            W(i4 - i2, bArr, i7);
            return;
        }
        throw new Cif("Too big case index: " + i3);
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m37814abstract(int i2) throws RuntimeException {
        h0(67, 56, i2);
    }

    public void b(int i2) throws RuntimeException {
        h0(63, 55, i2);
    }

    /* renamed from: continue, reason: not valid java name */
    public void m37815continue(String str, String str2, short s) {
        this.f33857while.add(new org.mozilla.classfile.Cdo(this.f33831catch.m37915final(str), this.f33831catch.m37915final(str2), s));
    }

    public void d(short s) {
        if (this.f33832class == null) {
            throw new IllegalArgumentException("No method to stop");
        }
        int i2 = this.f33841goto;
        if (i2 == 0) {
            this.f33836else = new int[16];
        } else {
            int[] iArr = this.f33836else;
            if (i2 == iArr.length) {
                int[] iArr2 = new int[i2 * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i2);
                this.f33836else = iArr2;
            }
        }
        this.f33836else[i2] = (this.f33829break << 16) + s;
        this.f33841goto = i2 + 1;
    }

    public void d0(String str, String str2, short s) {
        this.f33832class = new org.mozilla.classfile.Cif(str, this.f33831catch.m37915final(str), str2, this.f33831catch.m37915final(str2), s);
        this.f33840for = new UintMap();
        this.f33854throw.add(this.f33832class);
        q(0);
    }

    /* renamed from: default, reason: not valid java name */
    public void m37816default(int i2) throws RuntimeException {
        h0(75, 58, i2);
    }

    public void e(double d2) throws RuntimeException {
        m37827public(20, this.f33831catch.m37918if(d2));
    }

    public void e0(short s) throws RuntimeException {
        Cnew cnew;
        int iV;
        int iM37874new;
        if (this.f33832class == null) {
            throw new IllegalStateException("No method to stop");
        }
        E();
        this.f33851super = s;
        if (h) {
            D();
            cnew = new Cnew();
            cnew.m37872class();
        } else {
            cnew = null;
        }
        int i2 = this.f33836else != null ? (this.f33841goto * 4) + 8 : 0;
        ObjArray objArray = this.f33839finally;
        int size = objArray != null ? (objArray.size() * 10) + 8 : 0;
        int i3 = (cnew == null || (iM37874new = cnew.m37874new()) <= 0) ? 0 : iM37874new + 6;
        int i4 = this.f33829break + 14 + 2 + (this.f33830case * 8) + 2 + i2 + size + i3;
        if (i4 > 65536) {
            throw new Cif("generated bytecode for method exceeds 64K limit.");
        }
        byte[] bArr = new byte[i4];
        int iW = W(this.f33829break, bArr, V(this.f33851super, bArr, V(this.f33838final, bArr, W(i4 - 6, bArr, V(this.f33831catch.m37915final("Code"), bArr, 0)))));
        System.arraycopy(this.f33853this, 0, bArr, iW, this.f33829break);
        int i5 = iW + this.f33829break;
        int i6 = this.f33830case;
        if (i6 > 0) {
            iV = V(i6, bArr, i5);
            for (int i7 = 0; i7 < this.f33830case; i7++) {
                Ccase ccase = this.f33856try[i7];
                short sI = (short) I(ccase.f33803do);
                short sI2 = (short) I(ccase.f33805if);
                short sI3 = (short) I(ccase.f33804for);
                short s2 = ccase.f33806new;
                if (sI == -1) {
                    throw new IllegalStateException("start label not defined");
                }
                if (sI2 == -1) {
                    throw new IllegalStateException("end label not defined");
                }
                if (sI3 == -1) {
                    throw new IllegalStateException("handler label not defined");
                }
                iV = V(s2, bArr, V(sI3, bArr, V(sI2, bArr, V(sI, bArr, iV))));
            }
        } else {
            iV = V(0, bArr, i5);
        }
        int i8 = this.f33836else != null ? 1 : 0;
        if (this.f33839finally != null) {
            i8++;
        }
        if (i3 > 0) {
            i8++;
        }
        int iV2 = V(i8, bArr, iV);
        if (this.f33836else != null) {
            iV2 = V(this.f33841goto, bArr, W((this.f33841goto * 4) + 2, bArr, V(this.f33831catch.m37915final("LineNumberTable"), bArr, iV2)));
            for (int i9 = 0; i9 < this.f33841goto; i9++) {
                iV2 = W(this.f33836else[i9], bArr, iV2);
            }
        }
        if (this.f33839finally != null) {
            int iV3 = V(this.f33831catch.m37915final("LocalVariableTable"), bArr, iV2);
            int size2 = this.f33839finally.size();
            iV2 = V(size2, bArr, W((size2 * 10) + 2, bArr, iV3));
            for (int i10 = 0; i10 < size2; i10++) {
                int[] iArr = (int[]) this.f33839finally.get(i10);
                int i11 = iArr[0];
                int i12 = iArr[1];
                int i13 = iArr[2];
                iV2 = V(iArr[3], bArr, V(i12, bArr, V(i11, bArr, V(this.f33829break - i13, bArr, V(i13, bArr, iV2)))));
            }
        }
        if (i3 > 0) {
            cnew.m37873continue(bArr, V(this.f33831catch.m37915final("StackMapTable"), bArr, iV2));
        }
        this.f33832class.m37892try(bArr);
        this.f33856try = null;
        this.f33830case = 0;
        this.f33841goto = 0;
        this.f33829break = 0;
        this.f33832class = null;
        this.f33838final = (short) 0;
        this.f33833const = (short) 0;
        this.f33855throws = 0;
        this.f33837extends = 0;
        this.f33839finally = null;
        this.f33835do = null;
        this.f33842if = 0;
        this.f33840for = null;
    }

    /* renamed from: extends, reason: not valid java name */
    public void m37817extends(int i2) throws RuntimeException {
        h0(38, 24, i2);
    }

    public void f(float f2) throws RuntimeException {
        m37827public(18, this.f33831catch.m37916for(f2));
    }

    public byte[] f0() {
        short sM37915final;
        int i2;
        short sM37915final2;
        if (this.f33846package != null) {
            sM37915final = this.f33831catch.m37915final("BootstrapMethods");
            i2 = 1;
        } else {
            sM37915final = 0;
            i2 = 0;
        }
        if (this.f33850static != 0) {
            i2++;
            sM37915final2 = this.f33831catch.m37915final("SourceFile");
        } else {
            sM37915final2 = 0;
        }
        int iL = L();
        byte[] bArr = new byte[iL];
        int iV = V(this.f33843import.size(), bArr, V(this.f33849return, bArr, V(this.f33848public, bArr, V(this.f33844native, bArr, this.f33831catch.m37924static(bArr, V(f, bArr, V(g, bArr, W(i, bArr, 0))))))));
        for (int i3 = 0; i3 < this.f33843import.size(); i3++) {
            iV = V(((Short) this.f33843import.get(i3)).shortValue(), bArr, iV);
        }
        int iV2 = V(this.f33857while.size(), bArr, iV);
        for (int i4 = 0; i4 < this.f33857while.size(); i4++) {
            iV2 = ((org.mozilla.classfile.Cdo) this.f33857while.get(i4)).m37792for(bArr, iV2);
        }
        int iV3 = V(this.f33854throw.size(), bArr, iV2);
        for (int i5 = 0; i5 < this.f33854throw.size(); i5++) {
            iV3 = ((org.mozilla.classfile.Cif) this.f33854throw.get(i5)).m37887case(bArr, iV3);
        }
        int iV4 = V(i2, bArr, iV3);
        if (this.f33846package != null) {
            iV4 = V(this.f33846package.size(), bArr, W(this.f33847private + 2, bArr, V(sM37915final, bArr, iV4)));
            for (int i6 = 0; i6 < this.f33846package.size(); i6++) {
                Cdo cdo = (Cdo) this.f33846package.get(i6);
                byte[] bArr2 = cdo.f33858do;
                System.arraycopy(bArr2, 0, bArr, iV4, bArr2.length);
                iV4 += cdo.f33858do.length;
            }
        }
        if (this.f33850static != 0) {
            iV4 = V(this.f33850static, bArr, W(2, bArr, V(sM37915final2, bArr, iV4)));
        }
        if (iV4 == iL) {
            return bArr;
        }
        throw new RuntimeException();
    }

    /* renamed from: finally, reason: not valid java name */
    public void m37818finally(int i2) throws RuntimeException {
        h0(71, 57, i2);
    }

    public void g(int i2) throws RuntimeException {
        if (i2 == 0) {
            m37823native(3);
            return;
        }
        if (i2 == 1) {
            m37823native(4);
            return;
        }
        if (i2 == 2) {
            m37823native(5);
            return;
        }
        if (i2 == 3) {
            m37823native(6);
            return;
        }
        if (i2 == 4) {
            m37823native(7);
        } else if (i2 != 5) {
            m37827public(18, this.f33831catch.m37921new(i2));
        } else {
            m37823native(8);
        }
    }

    public void g0(OutputStream outputStream) throws IOException {
        outputStream.write(f0());
    }

    public void h(long j2) throws RuntimeException {
        m37827public(20, this.f33831catch.m37927try(j2));
    }

    public void i(String str) throws RuntimeException {
        m37827public(18, this.f33831catch.m37914else(str));
    }

    /* renamed from: implements, reason: not valid java name */
    public void m37819implements(String str) {
        this.f33843import.add(Short.valueOf(this.f33831catch.m37913do(str)));
    }

    /* renamed from: import, reason: not valid java name */
    public int m37820import() {
        int i2 = this.f33855throws;
        int[] iArr = this.f33852switch;
        if (iArr == null || i2 == iArr.length) {
            if (iArr == null) {
                this.f33852switch = new int[32];
            } else {
                int[] iArr2 = new int[iArr.length * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i2);
                this.f33852switch = iArr2;
            }
        }
        this.f33855throws = i2 + 1;
        this.f33852switch[i2] = -1;
        return i2 | Integer.MIN_VALUE;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m37821instanceof(int i2, String str, String str2, String str3) {
        int iB0 = b0(str3);
        int i3 = iB0 >>> 16;
        int iC0 = this.f33833const + ((short) iB0) + c0(i2);
        if (iC0 < 0 || 32767 < iC0) {
            x(iC0);
        }
        switch (i2) {
            case 182:
            case 183:
            case 184:
            case 185:
                s(i2);
                if (i2 == 185) {
                    t(this.f33831catch.m37925this(str, str2, str3));
                    s(i3 + 1);
                    s(0);
                } else {
                    t(this.f33831catch.m37912class(str, str2, str3));
                }
                short s = (short) iC0;
                this.f33833const = s;
                if (iC0 > this.f33838final) {
                    this.f33838final = s;
                    return;
                }
                return;
            default:
                throw new IllegalArgumentException("bad opcode for method reference");
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public void m37822interface(String str, String str2, short s, long j2) {
        org.mozilla.classfile.Cdo cdo = new org.mozilla.classfile.Cdo(this.f33831catch.m37915final(str), this.f33831catch.m37915final(str2), s);
        cdo.m37793if(this.f33831catch.m37915final("ConstantValue"), (short) 0, (short) 2, this.f33831catch.m37927try(j2));
        this.f33857while.add(cdo);
    }

    public void j() {
        m37823native(42);
    }

    public void k(double d2) throws RuntimeException {
        if (d2 == 0.0d) {
            m37823native(14);
            if (1.0d / d2 < 0.0d) {
                m37823native(119);
                return;
            }
            return;
        }
        if (d2 != 1.0d && d2 != -1.0d) {
            e(d2);
            return;
        }
        m37823native(15);
        if (d2 < 0.0d) {
            m37823native(119);
        }
    }

    public void l(int i2) throws RuntimeException {
        byte b2 = (byte) i2;
        if (b2 != i2) {
            short s = (short) i2;
            if (s == i2) {
                m37827public(17, s);
                return;
            } else {
                g(i2);
                return;
            }
        }
        if (i2 == -1) {
            m37823native(2);
        } else if (i2 < 0 || i2 > 5) {
            m37827public(16, b2);
        } else {
            m37823native((byte) (i2 + 3));
        }
    }

    public void m(long j2) throws RuntimeException {
        int i2 = (int) j2;
        if (i2 != j2) {
            h(j2);
        } else {
            l(i2);
            m37823native(133);
        }
    }

    public void n(String str) throws RuntimeException {
        int length = str.length();
        int i2 = 0;
        int iM37919import = this.f33831catch.m37919import(str, 0, length);
        if (iM37919import == length) {
            i(str);
            return;
        }
        m37829static(187, "java/lang/StringBuilder");
        m37823native(89);
        l(length);
        m37821instanceof(183, "java/lang/StringBuilder", "<init>", "(I)V");
        while (true) {
            m37823native(89);
            i(str.substring(i2, iM37919import));
            m37821instanceof(182, "java/lang/StringBuilder", "append", "(Ljava/lang/String;)Ljava/lang/StringBuilder;");
            m37823native(87);
            if (iM37919import == length) {
                m37821instanceof(182, "java/lang/StringBuilder", "toString", "()Ljava/lang/String;");
                return;
            } else {
                i2 = iM37919import;
                iM37919import = this.f33831catch.m37919import(str, iM37919import, length);
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public void m37823native(int i2) {
        if (T(i2) != 0) {
            throw new IllegalArgumentException("Unexpected operands");
        }
        int iC0 = this.f33833const + c0(i2);
        if (iC0 < 0 || 32767 < iC0) {
            x(iC0);
        }
        s(i2);
        short s = (short) iC0;
        this.f33833const = s;
        if (iC0 > this.f33838final) {
            this.f33838final = s;
        }
        if (i2 == 191) {
            q(this.f33829break);
        }
    }

    public void o(boolean z) {
        m37823native(z ? 4 : 3);
    }

    /* renamed from: package, reason: not valid java name */
    public void m37824package(int i2, int i3, int i4, String str) {
        if ((i2 & Integer.MIN_VALUE) != Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Bad startLabel");
        }
        if ((i3 & Integer.MIN_VALUE) != Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Bad endLabel");
        }
        if ((i4 & Integer.MIN_VALUE) != Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Bad handlerLabel");
        }
        Ccase ccase = new Ccase(i2, i3, i4, str == null ? (short) 0 : this.f33831catch.m37913do(str));
        int i5 = this.f33830case;
        if (i5 == 0) {
            this.f33856try = new Ccase[4];
        } else {
            Ccase[] ccaseArr = this.f33856try;
            if (i5 == ccaseArr.length) {
                Ccase[] ccaseArr2 = new Ccase[i5 * 2];
                System.arraycopy(ccaseArr, 0, ccaseArr2, 0, i5);
                this.f33856try = ccaseArr2;
            }
        }
        this.f33856try[i5] = ccase;
        this.f33830case = i5 + 1;
    }

    /* renamed from: private, reason: not valid java name */
    public void m37825private(int i2) throws RuntimeException {
        h0(34, 23, i2);
    }

    /* renamed from: protected, reason: not valid java name */
    public void m37826protected(int i2) throws RuntimeException {
        h0(26, 21, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0044 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ba A[FALL_THROUGH] */
    /* renamed from: public, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m37827public(int i2, int i3) throws RuntimeException {
        int iC0 = this.f33833const + c0(i2);
        if (iC0 < 0 || 32767 < iC0) {
            x(iC0);
        }
        if (i2 == 180 || i2 == 181) {
            if (i3 < 0 || i3 >= 65536) {
                throw new IllegalArgumentException("out of range field");
            }
            s(i2);
            t(i3);
        } else if (i2 != 188) {
            if (i2 != 198 && i2 != 199) {
                switch (i2) {
                    case 16:
                        byte b2 = (byte) i3;
                        if (b2 != i3) {
                            throw new IllegalArgumentException("out of range byte");
                        }
                        s(i2);
                        s(b2);
                        break;
                    case 17:
                        if (((short) i3) != i3) {
                            throw new IllegalArgumentException("out of range short");
                        }
                        s(i2);
                        t(i3);
                        break;
                    case 18:
                    case 19:
                    case 20:
                        if (i3 >= 0 && i3 < 65536) {
                            if (i3 < 256 && i2 != 19 && i2 != 20) {
                                s(i2);
                                s(i3);
                                break;
                            } else {
                                if (i2 == 18) {
                                    s(19);
                                } else {
                                    s(i2);
                                }
                                t(i3);
                                break;
                            }
                        } else {
                            throw new Cif("out of range index");
                        }
                    default:
                        switch (i2) {
                            default:
                                switch (i2) {
                                    case 167:
                                        q(this.f33829break + 3);
                                    case 153:
                                    case 154:
                                    case 155:
                                    case 156:
                                    case 157:
                                    case 158:
                                    case 159:
                                    case 160:
                                    case 161:
                                    case 162:
                                    case 163:
                                    case 164:
                                    case 165:
                                    case 166:
                                    case 168:
                                        break;
                                    case 169:
                                        break;
                                    default:
                                        throw new IllegalArgumentException("Unexpected opcode for 1 operand");
                                }
                            case 54:
                            case 55:
                            case 56:
                            case 57:
                            case 58:
                                if (i3 >= 0 && 65536 > i3) {
                                    if (i3 < 256) {
                                        s(i2);
                                        s(i3);
                                        break;
                                    } else {
                                        s(196);
                                        s(i2);
                                        t(i3);
                                        break;
                                    }
                                } else {
                                    throw new Cif("out of range variable");
                                }
                        }
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                        break;
                }
            } else {
                int i4 = i3 & Integer.MIN_VALUE;
                if (i4 != Integer.MIN_VALUE && (i3 < 0 || i3 > 65535)) {
                    throw new IllegalArgumentException("Bad label for branch");
                }
                int i5 = this.f33829break;
                s(i2);
                if (i4 != Integer.MIN_VALUE) {
                    t(i3);
                    int i6 = i3 + i5;
                    q(i6);
                    this.f33840for.put(i6, i5);
                } else {
                    int I = I(i3);
                    if (I != -1) {
                        t(I - i5);
                        q(I);
                        this.f33840for.put(I, i5);
                    } else {
                        c(i3, i5 + 1);
                        t(0);
                    }
                }
            }
        } else {
            if (i3 < 0 || i3 >= 256) {
                throw new IllegalArgumentException("out of range index");
            }
            s(i2);
            s(i3);
        }
        short s = (short) iC0;
        this.f33833const = s;
        if (iC0 > this.f33838final) {
            this.f33838final = s;
        }
    }

    public int r(int i2, int i3) {
        if (i2 > i3) {
            throw new Cif("Bad bounds: " + i2 + ' ' + i3);
        }
        int iC0 = this.f33833const + c0(170);
        if (iC0 < 0 || 32767 < iC0) {
            x(iC0);
        }
        int i4 = (this.f33829break ^ (-1)) & 3;
        int iP = p(i4 + 1 + (((i3 - i2) + 1 + 3) * 4));
        int i5 = iP + 1;
        this.f33853this[iP] = -86;
        while (i4 != 0) {
            this.f33853this[i5] = 0;
            i4--;
            i5++;
        }
        W(i3, this.f33853this, W(i2, this.f33853this, i5 + 4));
        short s = (short) iC0;
        this.f33833const = s;
        if (iC0 > this.f33838final) {
            this.f33838final = s;
        }
        return iP;
    }

    /* renamed from: return, reason: not valid java name */
    public void m37828return(int i2, int i3, int i4) {
        int iC0 = this.f33833const + c0(i2);
        if (iC0 < 0 || 32767 < iC0) {
            x(iC0);
        }
        if (i2 == 132) {
            if (i3 < 0 || 65536 <= i3) {
                throw new Cif("out of range variable");
            }
            if (i4 < 0 || 65536 <= i4) {
                throw new Cif("out of range increment");
            }
            if (i3 > 255 || i4 < -128 || i4 > 127) {
                s(196);
                s(132);
                t(i3);
                t(i4);
            } else {
                s(132);
                s(i3);
                s(i4);
            }
        } else {
            if (i2 != 197) {
                throw new IllegalArgumentException("Unexpected opcode for 2 operands");
            }
            if (i3 < 0 || i3 >= 65536) {
                throw new IllegalArgumentException("out of range index");
            }
            if (i4 < 0 || i4 >= 256) {
                throw new IllegalArgumentException("out of range dimensions");
            }
            s(197);
            t(i3);
            s(i4);
        }
        short s = (short) iC0;
        this.f33833const = s;
        if (iC0 > this.f33838final) {
            this.f33838final = s;
        }
    }

    /* renamed from: static, reason: not valid java name */
    public void m37829static(int i2, String str) {
        int iC0 = this.f33833const + c0(i2);
        if (iC0 < 0 || 32767 < iC0) {
            x(iC0);
        }
        if (i2 != 187 && i2 != 189 && i2 != 192 && i2 != 193) {
            throw new IllegalArgumentException("bad opcode for class reference");
        }
        short sM37913do = this.f33831catch.m37913do(str);
        s(i2);
        t(sM37913do);
        short s = (short) iC0;
        this.f33833const = s;
        if (iC0 > this.f33838final) {
            this.f33838final = s;
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m37830strictfp(String str, String str2, short s, double d2) {
        org.mozilla.classfile.Cdo cdo = new org.mozilla.classfile.Cdo(this.f33831catch.m37915final(str), this.f33831catch.m37915final(str2), s);
        cdo.m37793if(this.f33831catch.m37915final("ConstantValue"), (short) 0, (short) 2, this.f33831catch.m37918if(d2));
        this.f33857while.add(cdo);
    }

    /* renamed from: switch, reason: not valid java name */
    public void m37831switch(int i2, String str, String str2, String str3) {
        int i3;
        int iC0 = this.f33833const + c0(i2);
        char cCharAt = str3.charAt(0);
        int i4 = (cCharAt == 'J' || cCharAt == 'D') ? 2 : 1;
        switch (i2) {
            case 178:
            case 180:
                i3 = iC0 + i4;
                break;
            case 179:
            case 181:
                i3 = iC0 - i4;
                break;
            default:
                throw new IllegalArgumentException("bad opcode for field reference");
        }
        if (i3 < 0 || 32767 < i3) {
            x(i3);
        }
        short sM37917goto = this.f33831catch.m37917goto(str, str2, str3);
        s(i2);
        t(sM37917goto);
        short s = (short) i3;
        this.f33833const = s;
        if (i3 > this.f33838final) {
            this.f33838final = s;
        }
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m37832synchronized(String str, String str2, C0485for c0485for, Object... objArr) {
        if (f < 51) {
            throw new RuntimeException("Please build and run with JDK 1.7 for invokedynamic support");
        }
        int iB0 = this.f33833const + ((short) b0(str2));
        if (iB0 < 0 || 32767 < iB0) {
            x(iB0);
        }
        Cdo cdo = new Cdo(c0485for, objArr);
        if (this.f33846package == null) {
            this.f33846package = new ObjArray();
        }
        int iIndexOf = this.f33846package.indexOf(cdo);
        if (iIndexOf == -1) {
            iIndexOf = this.f33846package.size();
            this.f33846package.add(cdo);
            this.f33847private += cdo.f33858do.length;
        }
        short sM37909break = this.f33831catch.m37909break(str, str2, iIndexOf);
        s(186);
        t(sM37909break);
        t(0);
        short s = (short) iB0;
        this.f33833const = s;
        if (iB0 > this.f33838final) {
            this.f33838final = s;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public void m37833throws(int i2) throws RuntimeException {
        h0(42, 25, i2);
    }

    /* renamed from: transient, reason: not valid java name */
    public void m37834transient(int i2) throws RuntimeException {
        h0(59, 54, i2);
    }

    public void u(String str, String str2, int i2, int i3) {
        int[] iArr = {this.f33831catch.m37915final(str), this.f33831catch.m37915final(str2), i2, i3};
        if (this.f33839finally == null) {
            this.f33839finally = new ObjArray();
        }
        this.f33839finally.add(iArr);
    }

    public void v(int i2) {
        int i3 = this.f33833const + i2;
        if (i3 < 0 || 32767 < i3) {
            x(i3);
        }
        short s = (short) i3;
        this.f33833const = s;
        if (i3 > this.f33838final) {
            this.f33838final = s;
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m37835volatile(String str, String str2, short s, int i2) {
        org.mozilla.classfile.Cdo cdo = new org.mozilla.classfile.Cdo(this.f33831catch.m37915final(str), this.f33831catch.m37915final(str2), s);
        cdo.m37793if(this.f33831catch.m37915final("ConstantValue"), (short) 0, (short) 0, this.f33831catch.m37921new(i2));
        this.f33857while.add(cdo);
    }
}
