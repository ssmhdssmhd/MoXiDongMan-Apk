package android.support.v4;

import java.util.Arrays;
import org.antlr.v4.runtime.Vocabulary;

/* loaded from: classes3.dex */
public class cf2 implements Vocabulary {

    /* renamed from: case, reason: not valid java name */
    public static final cf2 f763case;

    /* renamed from: try, reason: not valid java name */
    private static final String[] f764try;

    /* renamed from: do, reason: not valid java name */
    private final String[] f765do;

    /* renamed from: for, reason: not valid java name */
    private final String[] f766for;

    /* renamed from: if, reason: not valid java name */
    private final String[] f767if;

    /* renamed from: new, reason: not valid java name */
    private final int f768new;

    static {
        String[] strArr = new String[0];
        f764try = strArr;
        f763case = new cf2(strArr, strArr, strArr);
    }

    public cf2(String[] strArr, String[] strArr2) {
        this(strArr, strArr2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0039  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Vocabulary m902do(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return f763case;
        }
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        String[] strArr3 = (String[]) Arrays.copyOf(strArr, strArr.length);
        for (int i = 0; i < strArr.length; i++) {
            String str = strArr[i];
            if (str != null) {
                if (str.isEmpty()) {
                    strArr2[i] = null;
                    strArr3[i] = null;
                } else {
                    char cCharAt = str.charAt(0);
                    if (cCharAt == '\'') {
                        strArr3[i] = null;
                    } else if (Character.isUpperCase(cCharAt)) {
                        strArr2[i] = null;
                    }
                }
            }
        }
        return new cf2(strArr2, strArr3, strArr);
    }

    @Override // org.antlr.v4.runtime.Vocabulary
    public String getDisplayName(int i) {
        String str;
        if (i >= 0) {
            String[] strArr = this.f766for;
            if (i < strArr.length && (str = strArr[i]) != null) {
                return str;
            }
        }
        String literalName = getLiteralName(i);
        if (literalName != null) {
            return literalName;
        }
        String symbolicName = getSymbolicName(i);
        return symbolicName != null ? symbolicName : Integer.toString(i);
    }

    @Override // org.antlr.v4.runtime.Vocabulary
    public String getLiteralName(int i) {
        if (i < 0) {
            return null;
        }
        String[] strArr = this.f765do;
        if (i < strArr.length) {
            return strArr[i];
        }
        return null;
    }

    @Override // org.antlr.v4.runtime.Vocabulary
    public int getMaxTokenType() {
        return this.f768new;
    }

    @Override // org.antlr.v4.runtime.Vocabulary
    public String getSymbolicName(int i) {
        if (i >= 0) {
            String[] strArr = this.f767if;
            if (i < strArr.length) {
                return strArr[i];
            }
        }
        if (i == -1) {
            return "EOF";
        }
        return null;
    }

    public cf2(String[] strArr, String[] strArr2, String[] strArr3) {
        this.f765do = strArr == null ? f764try : strArr;
        this.f767if = strArr2 == null ? f764try : strArr2;
        this.f766for = strArr3 == null ? f764try : strArr3;
        this.f768new = Math.max(r3.length, Math.max(r1.length, r2.length)) - 1;
    }
}
