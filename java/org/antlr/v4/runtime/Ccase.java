package org.antlr.v4.runtime;

import android.support.v4.rn0;
import java.nio.charset.StandardCharsets;
import org.antlr.v4.runtime.Ctry;

/* renamed from: org.antlr.v4.runtime.case, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ccase implements CharStream {

    /* renamed from: new, reason: not valid java name */
    public static final /* synthetic */ boolean f28515new = false;

    /* renamed from: do, reason: not valid java name */
    public final int f28516do;

    /* renamed from: for, reason: not valid java name */
    public int f28517for;

    /* renamed from: if, reason: not valid java name */
    public final String f28518if;

    /* renamed from: org.antlr.v4.runtime.case$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f28519do;

        static {
            int[] iArr = new int[Ctry.Cfor.values().length];
            f28519do = iArr;
            try {
                iArr[Ctry.Cfor.BYTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f28519do[Ctry.Cfor.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f28519do[Ctry.Cfor.INT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: org.antlr.v4.runtime.case$for, reason: invalid class name */
    public static final class Cfor extends Ccase {

        /* renamed from: case, reason: not valid java name */
        public static final /* synthetic */ boolean f28520case = false;

        /* renamed from: try, reason: not valid java name */
        private final int[] f28521try;

        public /* synthetic */ Cfor(int i, int i2, String str, int[] iArr, int i3, Cdo cdo) {
            this(i, i2, str, iArr, i3);
        }

        @Override // org.antlr.v4.runtime.IntStream
        public int LA(int i) {
            int iSignum = Integer.signum(i);
            if (iSignum == -1) {
                int i2 = this.f28517for + i;
                if (i2 < 0) {
                    return -1;
                }
                return this.f28521try[i2];
            }
            if (iSignum == 0) {
                return 0;
            }
            if (iSignum != 1) {
                throw new UnsupportedOperationException("Not reached");
            }
            int i3 = (this.f28517for + i) - 1;
            if (i3 >= this.f28516do) {
                return -1;
            }
            return this.f28521try[i3];
        }

        @Override // org.antlr.v4.runtime.Ccase
        /* renamed from: for */
        public Object mo31962for() {
            return this.f28521try;
        }

        @Override // org.antlr.v4.runtime.CharStream
        public String getText(rn0 rn0Var) {
            return new String(this.f28521try, Math.min(rn0Var.f5888do, this.f28516do - 1), Math.min((rn0Var.f5889if - rn0Var.f5888do) + 1, this.f28516do));
        }

        private Cfor(int i, int i2, String str, int[] iArr, int i3) {
            super(i, i2, str, null);
            this.f28521try = iArr;
        }
    }

    /* renamed from: org.antlr.v4.runtime.case$if, reason: invalid class name */
    public static final class Cif extends Ccase {

        /* renamed from: case, reason: not valid java name */
        public static final /* synthetic */ boolean f28522case = false;

        /* renamed from: try, reason: not valid java name */
        private final char[] f28523try;

        public /* synthetic */ Cif(int i, int i2, String str, char[] cArr, int i3, Cdo cdo) {
            this(i, i2, str, cArr, i3);
        }

        @Override // org.antlr.v4.runtime.IntStream
        public int LA(int i) {
            char c;
            int iSignum = Integer.signum(i);
            if (iSignum == -1) {
                int i2 = this.f28517for + i;
                if (i2 < 0) {
                    return -1;
                }
                c = this.f28523try[i2];
            } else {
                if (iSignum == 0) {
                    return 0;
                }
                if (iSignum != 1) {
                    throw new UnsupportedOperationException("Not reached");
                }
                int i3 = (this.f28517for + i) - 1;
                if (i3 >= this.f28516do) {
                    return -1;
                }
                c = this.f28523try[i3];
            }
            return c & 65535;
        }

        @Override // org.antlr.v4.runtime.Ccase
        /* renamed from: for */
        public Object mo31962for() {
            return this.f28523try;
        }

        @Override // org.antlr.v4.runtime.CharStream
        public String getText(rn0 rn0Var) {
            return new String(this.f28523try, Math.min(rn0Var.f5888do, this.f28516do - 1), Math.min((rn0Var.f5889if - rn0Var.f5888do) + 1, this.f28516do));
        }

        private Cif(int i, int i2, String str, char[] cArr, int i3) {
            super(i, i2, str, null);
            this.f28523try = cArr;
        }
    }

    /* renamed from: org.antlr.v4.runtime.case$new, reason: invalid class name */
    public static final class Cnew extends Ccase {

        /* renamed from: case, reason: not valid java name */
        public static final /* synthetic */ boolean f28524case = false;

        /* renamed from: try, reason: not valid java name */
        private final byte[] f28525try;

        public /* synthetic */ Cnew(int i, int i2, String str, byte[] bArr, int i3, Cdo cdo) {
            this(i, i2, str, bArr, i3);
        }

        @Override // org.antlr.v4.runtime.IntStream
        public int LA(int i) {
            byte b;
            int iSignum = Integer.signum(i);
            if (iSignum == -1) {
                int i2 = this.f28517for + i;
                if (i2 < 0) {
                    return -1;
                }
                b = this.f28525try[i2];
            } else {
                if (iSignum == 0) {
                    return 0;
                }
                if (iSignum != 1) {
                    throw new UnsupportedOperationException("Not reached");
                }
                int i3 = (this.f28517for + i) - 1;
                if (i3 >= this.f28516do) {
                    return -1;
                }
                b = this.f28525try[i3];
            }
            return b & 255;
        }

        @Override // org.antlr.v4.runtime.Ccase
        /* renamed from: for */
        public Object mo31962for() {
            return this.f28525try;
        }

        @Override // org.antlr.v4.runtime.CharStream
        public String getText(rn0 rn0Var) {
            return new String(this.f28525try, Math.min(rn0Var.f5888do, this.f28516do - 1), Math.min((rn0Var.f5889if - rn0Var.f5888do) + 1, this.f28516do), StandardCharsets.ISO_8859_1);
        }

        private Cnew(int i, int i2, String str, byte[] bArr, int i3) {
            super(i, i2, str, null);
            this.f28525try = bArr;
        }
    }

    public /* synthetic */ Ccase(int i, int i2, String str, Cdo cdo) {
        this(i, i2, str);
    }

    /* renamed from: do, reason: not valid java name */
    public static Ccase m31960do(Ctry ctry) {
        return m31961if(ctry, IntStream.UNKNOWN_SOURCE_NAME);
    }

    /* renamed from: if, reason: not valid java name */
    public static Ccase m31961if(Ctry ctry, String str) {
        int i = Cdo.f28519do[ctry.m32109case().ordinal()];
        if (i == 1) {
            return new Cnew(ctry.m32113goto(), ctry.m32108break(), str, ctry.m32112for(), ctry.m32110do(), null);
        }
        if (i == 2) {
            return new Cif(ctry.m32113goto(), ctry.m32108break(), str, ctry.m32114new(), ctry.m32110do(), null);
        }
        if (i == 3) {
            return new Cfor(ctry.m32113goto(), ctry.m32108break(), str, ctry.m32111else(), ctry.m32110do(), null);
        }
        throw new UnsupportedOperationException("Not reached");
    }

    @Override // org.antlr.v4.runtime.IntStream
    public final void consume() {
        int i = this.f28516do;
        int i2 = this.f28517for;
        if (i - i2 == 0) {
            throw new IllegalStateException("cannot consume EOF");
        }
        this.f28517for = i2 + 1;
    }

    /* renamed from: for, reason: not valid java name */
    public abstract Object mo31962for();

    @Override // org.antlr.v4.runtime.IntStream
    public final String getSourceName() {
        String str = this.f28518if;
        return (str == null || str.isEmpty()) ? IntStream.UNKNOWN_SOURCE_NAME : this.f28518if;
    }

    @Override // org.antlr.v4.runtime.IntStream
    public final int index() {
        return this.f28517for;
    }

    @Override // org.antlr.v4.runtime.IntStream
    public final int mark() {
        return -1;
    }

    @Override // org.antlr.v4.runtime.IntStream
    public final void release(int i) {
    }

    @Override // org.antlr.v4.runtime.IntStream
    public final void seek(int i) {
        this.f28517for = i;
    }

    @Override // org.antlr.v4.runtime.IntStream
    public final int size() {
        return this.f28516do;
    }

    public final String toString() {
        return getText(rn0.m7059case(0, this.f28516do - 1));
    }

    private Ccase(int i, int i2, String str) {
        this.f28516do = i2;
        this.f28518if = str;
        this.f28517for = 0;
    }
}
