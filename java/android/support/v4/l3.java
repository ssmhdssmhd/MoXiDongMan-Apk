package android.support.v4;

import com.google.common.escape.Ccase;
import java.util.Map;

@ki0
@o8
/* loaded from: classes2.dex */
public abstract class l3 extends Ccase {

    /* renamed from: case, reason: not valid java name */
    private final int f3527case;

    /* renamed from: else, reason: not valid java name */
    private final char f3528else;

    /* renamed from: for, reason: not valid java name */
    private final char[][] f3529for;

    /* renamed from: goto, reason: not valid java name */
    private final char f3530goto;

    /* renamed from: new, reason: not valid java name */
    private final int f3531new;

    /* renamed from: try, reason: not valid java name */
    private final int f3532try;

    public l3(Map<Character, String> map, int i, int i2, @b51 String str) {
        this(k3.m4218do(map), i, i2, str);
    }

    @Override // com.google.common.escape.Ccase
    /* renamed from: else */
    public final int mo851else(CharSequence charSequence, int i, int i2) {
        while (i < i2) {
            char cCharAt = charSequence.charAt(i);
            if ((cCharAt < this.f3531new && this.f3529for[cCharAt] != null) || cCharAt > this.f3530goto || cCharAt < this.f3528else) {
                break;
            }
            i++;
        }
        return i;
    }

    /* renamed from: goto, reason: not valid java name */
    public abstract char[] m4580goto(int i);

    @Override // com.google.common.escape.Ccase, com.google.common.escape.Cfor
    /* renamed from: if */
    public final String mo852if(String str) {
        af1.m205continue(str);
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt < this.f3531new && this.f3529for[cCharAt] != null) || cCharAt > this.f3530goto || cCharAt < this.f3528else) {
                return m16594try(str, i);
            }
        }
        return str;
    }

    @Override // com.google.common.escape.Ccase
    /* renamed from: new */
    public final char[] mo853new(int i) {
        char[] cArr;
        if (i < this.f3531new && (cArr = this.f3529for[i]) != null) {
            return cArr;
        }
        if (i < this.f3532try || i > this.f3527case) {
            return m4580goto(i);
        }
        return null;
    }

    public l3(k3 k3Var, int i, int i2, @b51 String str) {
        af1.m205continue(k3Var);
        char[][] cArrM4220for = k3Var.m4220for();
        this.f3529for = cArrM4220for;
        this.f3531new = cArrM4220for.length;
        if (i2 < i) {
            i2 = -1;
            i = Integer.MAX_VALUE;
        }
        this.f3532try = i;
        this.f3527case = i2;
        if (i >= 55296) {
            this.f3528else = (char) 65535;
            this.f3530goto = (char) 0;
        } else {
            this.f3528else = (char) i;
            this.f3530goto = (char) Math.min(i2, 55295);
        }
    }
}
