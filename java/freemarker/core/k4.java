package freemarker.core;

import android.support.v4.vm;
import freemarker.template.utility.Csuper;
import java.io.IOException;

/* loaded from: classes.dex */
public final class k4 extends b4 {

    /* renamed from: class, reason: not valid java name */
    private char[] f24001class;

    /* renamed from: const, reason: not valid java name */
    private final boolean f24002const;

    public k4(String str) {
        this(str, false);
    }

    private static char[] A(char[] cArr, int i) {
        return B(cArr, i, cArr.length);
    }

    private static char[] B(char[] cArr, int i, int i2) {
        int i3 = i2 - i;
        char[] cArr2 = new char[i3];
        System.arraycopy(cArr, i, cArr2, 0, i3);
        return cArr2;
    }

    private int C() {
        int iW = w();
        if (iW == -1 && this.f23823if != 1) {
            return 0;
        }
        int i = iW + 1;
        if (!Csuper.m29323protected(this.f24001class, i)) {
            return 0;
        }
        for (b4 b4VarJ = j(); b4VarJ != null && b4VarJ.f23822for == this.f23825try; b4VarJ = b4VarJ.j()) {
            if (b4VarJ.b()) {
                return 0;
            }
        }
        return this.f24001class.length - i;
    }

    private static char[] r(char[] cArr, char[] cArr2) {
        char[] cArr3 = new char[cArr.length + cArr2.length];
        System.arraycopy(cArr, 0, cArr3, 0, cArr.length);
        System.arraycopy(cArr2, 0, cArr3, cArr.length, cArr2.length);
        return cArr3;
    }

    private boolean s() {
        boolean z = false;
        for (b4 b4VarJ = j(); b4VarJ != null && b4VarJ.f23822for == this.f23825try; b4VarJ = b4VarJ.j()) {
            if (b4VarJ instanceof o4) {
                o4 o4Var = (o4) b4VarJ;
                boolean z2 = o4Var.f24044class;
                if (!z2 && !o4Var.f24045const) {
                    z = true;
                }
                if (z2) {
                    int iW = w();
                    if (iW >= 0 || this.f23823if == 1) {
                        int i = iW + 1;
                        char[] cArrB = B(this.f24001class, 0, i);
                        char[] cArrA = A(this.f24001class, i);
                        if (Csuper.m29318interface(cArrA)) {
                            this.f24001class = cArrB;
                            this.f23824new = 0;
                        } else {
                            int i2 = 0;
                            while (Character.isWhitespace(cArrA[i2])) {
                                i2++;
                            }
                            this.f24001class = r(cArrB, A(cArrA, i2));
                        }
                    }
                    z = true;
                }
            }
        }
        return z;
    }

    private boolean t() {
        boolean z = false;
        for (b4 b4VarL = l(); b4VarL != null && b4VarL.f23825try == this.f23822for; b4VarL = b4VarL.l()) {
            if (b4VarL instanceof o4) {
                o4 o4Var = (o4) b4VarL;
                if (!o4Var.f24044class && !o4Var.f24045const) {
                    z = true;
                }
                if (o4Var.f24045const) {
                    int iU = u() + 1;
                    if (iU == 0) {
                        return false;
                    }
                    char[] cArr = this.f24001class;
                    if (cArr.length > iU && cArr[iU - 1] == '\r' && cArr[iU] == '\n') {
                        iU++;
                    }
                    char[] cArrA = A(cArr, iU);
                    char[] cArrB = B(this.f24001class, 0, iU);
                    if (Csuper.m29318interface(cArrB)) {
                        this.f24001class = cArrA;
                        this.f23822for++;
                        this.f23823if = 1;
                    } else {
                        int length = cArrB.length - 1;
                        while (Character.isWhitespace(this.f24001class[length])) {
                            length--;
                        }
                        char[] cArrB2 = B(this.f24001class, 0, length + 1);
                        if (Csuper.m29318interface(cArrA)) {
                            b4 b4VarJ = j();
                            boolean z2 = true;
                            while (true) {
                                if (b4VarJ == null || b4VarJ.f23822for != this.f23825try) {
                                    break;
                                }
                                if (b4VarJ.a()) {
                                    z2 = false;
                                }
                                if ((b4VarJ instanceof o4) && ((o4) b4VarJ).f24044class) {
                                    z2 = true;
                                    break;
                                }
                                b4VarJ = b4VarJ.j();
                            }
                            if (z2) {
                                cArrA = vm.f7295for;
                            }
                        }
                        this.f24001class = r(cArrB2, cArrA);
                    }
                    z = true;
                } else {
                    continue;
                }
            }
        }
        return z;
    }

    private int u() {
        char[] cArr = this.f24001class;
        for (int i = 0; i < cArr.length; i++) {
            char c = cArr[i];
            if (c == '\r' || c == '\n') {
                return i;
            }
        }
        return -1;
    }

    private boolean v(b4 b4Var) {
        return b4Var == null || (b4Var.m27847synchronized() == null && (b4Var instanceof c2));
    }

    private int w() {
        char[] cArr = this.f24001class;
        for (int length = cArr.length - 1; length >= 0; length--) {
            char c = cArr[length];
            if (c == '\r' || c == '\n') {
                return length;
            }
        }
        return -1;
    }

    private boolean x(b4 b4Var) {
        return (b4Var instanceof x1) || (b4Var instanceof Cthis) || (b4Var instanceof Cbreak) || (b4Var instanceof i3) || (b4Var instanceof r1) || (b4Var instanceof o);
    }

    private int y() {
        int iU = u();
        if (iU == -1 && this.f23823if != 1) {
            return 0;
        }
        int i = iU + 1;
        char[] cArr = this.f24001class;
        if (cArr.length > i && i > 0 && cArr[i - 1] == '\r' && cArr[i] == '\n') {
            i++;
        }
        if (!Csuper.m29334transient(cArr, 0, i)) {
            return 0;
        }
        for (b4 b4VarL = l(); b4VarL != null && b4VarL.f23825try == this.f23822for; b4VarL = b4VarL.l()) {
            if (b4VarL.a()) {
                return 0;
            }
        }
        return i;
    }

    @Override // freemarker.core.b4
    public boolean a() {
        if (d(true)) {
            return false;
        }
        for (int length = this.f24001class.length - 1; length >= 0; length--) {
            char c = this.f24001class[length];
            if (c == '\n' || c == '\r') {
                return false;
            }
            if (!Character.isWhitespace(c)) {
                return true;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0024, code lost:
    
        return false;
     */
    @Override // freemarker.core.b4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean b() {
        if (d(true)) {
            return false;
        }
        int i = 0;
        while (true) {
            char[] cArr = this.f24001class;
            if (i >= cArr.length) {
                return true;
            }
            char c = cArr[i];
            if (c == '\n' || c == '\r') {
                break;
            }
            if (!Character.isWhitespace(c)) {
                return true;
            }
            i++;
        }
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#text";
    }

    @Override // freemarker.core.b4
    public boolean d(boolean z) {
        char[] cArr = this.f24001class;
        if (cArr == null || cArr.length == 0) {
            return true;
        }
        if (!z || !Csuper.m29318interface(cArr)) {
            return false;
        }
        boolean zV = v(m27847synchronized());
        b4 b4VarM = m();
        b4 b4VarI = i();
        return ((b4VarM == null && zV) || x(b4VarM)) && ((b4VarI == null && zV) || x(b4VarI));
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 1;
    }

    @Override // freemarker.core.b4
    public boolean f() {
        return false;
    }

    @Override // freemarker.core.b4
    public boolean g() {
        return true;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23754continue;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    public b4 k(boolean z) {
        if (this.f24001class.length == 0) {
            return this;
        }
        boolean zS = s();
        boolean zT = t();
        if (!z || this.f24001class.length == 0 || (v(m27847synchronized()) && m() == null)) {
            return this;
        }
        int iC = !zS ? C() : 0;
        int iY = !zT ? y() : 0;
        if (iY == 0 && iC == 0) {
            return this;
        }
        char[] cArr = this.f24001class;
        this.f24001class = B(cArr, iY, cArr.length - iC);
        if (iY > 0) {
            this.f23822for++;
            this.f23823if = 1;
        }
        if (iC > 0) {
            this.f23824new = 0;
        }
        return this;
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws IOException {
        d0Var.c2().write(this.f24001class);
        return null;
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        if (!z) {
            return "text " + Csuper.m29330synchronized(new String(this.f24001class));
        }
        String str = new String(this.f24001class);
        if (!this.f24002const) {
            return str;
        }
        return "<#noparse>" + str + "</#noparse>";
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return new String(this.f24001class);
        }
        throw new IndexOutOfBoundsException();
    }

    public void z(String str) {
        this.f24001class = str.toCharArray();
    }

    public k4(String str, boolean z) {
        this(str.toCharArray(), z);
    }

    public k4(char[] cArr, boolean z) {
        this.f24001class = cArr;
        this.f24002const = z;
    }
}
