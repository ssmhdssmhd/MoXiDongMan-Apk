package android.support.v4;

import java.util.Formattable;
import java.util.Formatter;
import org.apache.commons.lang3.Cgoto;

/* loaded from: classes3.dex */
public class pd0 {

    /* renamed from: do, reason: not valid java name */
    private static final String f4931do = "%s";

    /* renamed from: do, reason: not valid java name */
    public static Formatter m5945do(CharSequence charSequence, Formatter formatter, int i, int i2, int i3) {
        return m5946for(charSequence, formatter, i, i2, i3, ' ', null);
    }

    /* renamed from: for, reason: not valid java name */
    public static Formatter m5946for(CharSequence charSequence, Formatter formatter, int i, int i2, int i3, char c, CharSequence charSequence2) {
        ee2.m1839public(charSequence2 == null || i3 < 0 || charSequence2.length() <= i3, "Specified ellipsis '%1$s' exceeds precision of %2$s", charSequence2, Integer.valueOf(i3));
        StringBuilder sb = new StringBuilder(charSequence);
        if (i3 >= 0 && i3 < charSequence.length()) {
            CharSequence charSequence3 = (CharSequence) Cgoto.m32400throw(charSequence2, "");
            sb.replace(i3 - charSequence3.length(), charSequence.length(), charSequence3.toString());
        }
        boolean z = (i & 1) == 1;
        for (int length = sb.length(); length < i2; length++) {
            sb.insert(z ? length : 0, c);
        }
        formatter.format(sb.toString(), new Object[0]);
        return formatter;
    }

    /* renamed from: if, reason: not valid java name */
    public static Formatter m5947if(CharSequence charSequence, Formatter formatter, int i, int i2, int i3, char c) {
        return m5946for(charSequence, formatter, i, i2, i3, c, null);
    }

    /* renamed from: new, reason: not valid java name */
    public static Formatter m5948new(CharSequence charSequence, Formatter formatter, int i, int i2, int i3, CharSequence charSequence2) {
        return m5946for(charSequence, formatter, i, i2, i3, ' ', charSequence2);
    }

    /* renamed from: try, reason: not valid java name */
    public static String m5949try(Formattable formattable) {
        return String.format(f4931do, formattable);
    }
}
