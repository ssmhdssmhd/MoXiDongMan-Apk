package android.support.v4;

import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;

/* loaded from: classes2.dex */
public class vh1 {
    /* renamed from: do, reason: not valid java name */
    public static CharSequence m8863do(CharSequence charSequence, int i, Drawable drawable, int i2, Drawable drawable2) {
        return m8865if(charSequence, i, drawable, i2, drawable2, 0);
    }

    /* renamed from: for, reason: not valid java name */
    public static CharSequence m8864for(boolean z, int i, CharSequence charSequence, Drawable drawable) {
        return m8866new(z, i, charSequence, drawable, 0);
    }

    /* renamed from: if, reason: not valid java name */
    public static CharSequence m8865if(CharSequence charSequence, int i, Drawable drawable, int i2, Drawable drawable2, int i3) {
        if (drawable == null && drawable2 == null) {
            return charSequence;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            spannableStringBuilder.append((CharSequence) "[icon]");
            int length = spannableStringBuilder.length();
            oh1 oh1Var = new oh1(drawable, -100, 0, i, i3);
            oh1Var.m542do(true);
            spannableStringBuilder.setSpan(oh1Var, 0, length, 17);
        }
        spannableStringBuilder.append(charSequence);
        if (drawable2 != null) {
            drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
            int length2 = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) "[icon]");
            int length3 = spannableStringBuilder.length();
            oh1 oh1Var2 = new oh1(drawable2, -100, i2, 0, i3);
            oh1Var2.m542do(true);
            spannableStringBuilder.setSpan(oh1Var2, length2, length3, 17);
        }
        return spannableStringBuilder;
    }

    /* renamed from: new, reason: not valid java name */
    public static CharSequence m8866new(boolean z, int i, CharSequence charSequence, Drawable drawable, int i2) {
        return m8865if(charSequence, z ? i : 0, z ? drawable : null, z ? 0 : i, z ? null : drawable, i2);
    }
}
