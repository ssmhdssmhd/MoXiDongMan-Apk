package org.bouncycastle.crypto.params;

import android.support.v4.q3;
import org.bouncycastle.crypto.CharToByteConverter;
import org.bouncycastle.crypto.Cnew;

/* renamed from: org.bouncycastle.crypto.params.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: break, reason: not valid java name */
    public static final int f30212break = 0;

    /* renamed from: catch, reason: not valid java name */
    public static final int f30213catch = 1;

    /* renamed from: class, reason: not valid java name */
    public static final int f30214class = 2;

    /* renamed from: const, reason: not valid java name */
    public static final int f30215const = 16;

    /* renamed from: final, reason: not valid java name */
    public static final int f30216final = 19;

    /* renamed from: import, reason: not valid java name */
    private static final int f30217import = 1;

    /* renamed from: native, reason: not valid java name */
    private static final int f30218native = 19;

    /* renamed from: super, reason: not valid java name */
    private static final int f30219super = 3;

    /* renamed from: throw, reason: not valid java name */
    private static final int f30220throw = 12;

    /* renamed from: while, reason: not valid java name */
    private static final int f30221while = 1;

    /* renamed from: case, reason: not valid java name */
    private final int f30222case;

    /* renamed from: do, reason: not valid java name */
    private final byte[] f30223do;

    /* renamed from: else, reason: not valid java name */
    private final int f30224else;

    /* renamed from: for, reason: not valid java name */
    private final byte[] f30225for;

    /* renamed from: goto, reason: not valid java name */
    private final int f30226goto;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f30227if;

    /* renamed from: new, reason: not valid java name */
    private final int f30228new;

    /* renamed from: this, reason: not valid java name */
    private final CharToByteConverter f30229this;

    /* renamed from: try, reason: not valid java name */
    private final int f30230try;

    /* renamed from: org.bouncycastle.crypto.params.do$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: case, reason: not valid java name */
        private int f30231case;

        /* renamed from: do, reason: not valid java name */
        private byte[] f30232do;

        /* renamed from: else, reason: not valid java name */
        private int f30233else;

        /* renamed from: for, reason: not valid java name */
        private byte[] f30234for;

        /* renamed from: goto, reason: not valid java name */
        private final int f30235goto;

        /* renamed from: if, reason: not valid java name */
        private byte[] f30236if;

        /* renamed from: new, reason: not valid java name */
        private int f30237new;

        /* renamed from: this, reason: not valid java name */
        private CharToByteConverter f30238this;

        /* renamed from: try, reason: not valid java name */
        private int f30239try;

        public Cif() {
            this(1);
        }

        public Cif(int i) {
            this.f30238this = Cnew.UTF8;
            this.f30235goto = i;
            this.f30231case = 1;
            this.f30239try = 4096;
            this.f30237new = 3;
            this.f30233else = 19;
        }

        /* renamed from: break, reason: not valid java name */
        public Cif m33830break(byte[] bArr) {
            this.f30236if = q3.m6371final(bArr);
            return this;
        }

        /* renamed from: case, reason: not valid java name */
        public Cif m33831case(int i) {
            this.f30239try = i;
            return this;
        }

        /* renamed from: catch, reason: not valid java name */
        public Cif m33832catch(int i) {
            this.f30233else = i;
            return this;
        }

        /* renamed from: do, reason: not valid java name */
        public Cdo m33833do() {
            return new Cdo(this.f30235goto, this.f30232do, this.f30236if, this.f30234for, this.f30237new, this.f30239try, this.f30231case, this.f30233else, this.f30238this);
        }

        /* renamed from: else, reason: not valid java name */
        public Cif m33834else(int i) {
            this.f30239try = 1 << i;
            return this;
        }

        /* renamed from: for, reason: not valid java name */
        public Cif m33835for(byte[] bArr) {
            this.f30234for = q3.m6371final(bArr);
            return this;
        }

        /* renamed from: goto, reason: not valid java name */
        public Cif m33836goto(int i) {
            this.f30231case = i;
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public void m33837if() {
            q3.m6365const(this.f30232do);
            q3.m6365const(this.f30236if);
            q3.m6365const(this.f30234for);
        }

        /* renamed from: new, reason: not valid java name */
        public Cif m33838new(CharToByteConverter charToByteConverter) {
            this.f30238this = charToByteConverter;
            return this;
        }

        /* renamed from: this, reason: not valid java name */
        public Cif m33839this(byte[] bArr) {
            this.f30232do = q3.m6371final(bArr);
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Cif m33840try(int i) {
            this.f30237new = i;
            return this;
        }
    }

    private Cdo(int i, byte[] bArr, byte[] bArr2, byte[] bArr3, int i2, int i3, int i4, int i5, CharToByteConverter charToByteConverter) {
        this.f30223do = q3.m6371final(bArr);
        this.f30227if = q3.m6371final(bArr2);
        this.f30225for = q3.m6371final(bArr3);
        this.f30228new = i2;
        this.f30230try = i3;
        this.f30222case = i4;
        this.f30224else = i5;
        this.f30226goto = i;
        this.f30229this = charToByteConverter;
    }

    /* renamed from: break, reason: not valid java name */
    public int m33820break() {
        return this.f30224else;
    }

    /* renamed from: case, reason: not valid java name */
    public int m33821case() {
        return this.f30230try;
    }

    /* renamed from: do, reason: not valid java name */
    public void m33822do() {
        q3.m6365const(this.f30223do);
        q3.m6365const(this.f30227if);
        q3.m6365const(this.f30225for);
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m33823else() {
        return q3.m6371final(this.f30223do);
    }

    /* renamed from: for, reason: not valid java name */
    public CharToByteConverter m33824for() {
        return this.f30229this;
    }

    /* renamed from: goto, reason: not valid java name */
    public byte[] m33825goto() {
        return q3.m6371final(this.f30227if);
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m33826if() {
        return q3.m6371final(this.f30225for);
    }

    /* renamed from: new, reason: not valid java name */
    public int m33827new() {
        return this.f30228new;
    }

    /* renamed from: this, reason: not valid java name */
    public int m33828this() {
        return this.f30226goto;
    }

    /* renamed from: try, reason: not valid java name */
    public int m33829try() {
        return this.f30222case;
    }
}
