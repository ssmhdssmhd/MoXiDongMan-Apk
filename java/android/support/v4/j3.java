package android.support.v4;

import com.google.common.escape.Cdo;
import java.util.Map;

@ki0
@o8
/* loaded from: classes2.dex */
public abstract class j3 extends Cdo {

    /* renamed from: case, reason: not valid java name */
    private final char f2961case;

    /* renamed from: for, reason: not valid java name */
    private final char[][] f2962for;

    /* renamed from: new, reason: not valid java name */
    private final int f2963new;

    /* renamed from: try, reason: not valid java name */
    private final char f2964try;

    public j3(Map<Character, String> map, char c, char c2) {
        this(k3.m4218do(map), c, c2);
    }

    /* renamed from: case, reason: not valid java name */
    public abstract char[] mo3713case(char c);

    @Override // com.google.common.escape.Cdo
    /* renamed from: for, reason: not valid java name */
    public final char[] mo3714for(char c) {
        char[] cArr;
        if (c < this.f2963new && (cArr = this.f2962for[c]) != null) {
            return cArr;
        }
        if (c < this.f2964try || c > this.f2961case) {
            return mo3713case(c);
        }
        return null;
    }

    @Override // com.google.common.escape.Cdo, com.google.common.escape.Cfor
    /* renamed from: if */
    public final String mo852if(String str) {
        af1.m205continue(str);
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt < this.f2963new && this.f2962for[cCharAt] != null) || cCharAt > this.f2961case || cCharAt < this.f2964try) {
                return m16596new(str, i);
            }
        }
        return str;
    }

    public j3(k3 k3Var, char c, char c2) {
        af1.m205continue(k3Var);
        char[][] cArrM4220for = k3Var.m4220for();
        this.f2962for = cArrM4220for;
        this.f2963new = cArrM4220for.length;
        if (c2 < c) {
            c2 = 0;
            c = 65535;
        }
        this.f2964try = c;
        this.f2961case = c2;
    }
}
