package android.support.v4;

import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.RelativeSizeSpan;
import android.widget.TextView;
import com.luck.picture.lib.R;

/* loaded from: classes2.dex */
public class k22 {
    /* renamed from: do, reason: not valid java name */
    public static boolean m4215do(String str) {
        return (!TextUtils.isEmpty(str) && str.startsWith("相机胶卷")) || str.startsWith("CameraRoll") || str.startsWith("所有音频") || str.startsWith("All audio");
    }

    /* renamed from: for, reason: not valid java name */
    public static void m4216for(TextView textView, int i) {
        String strTrim = textView.getText().toString().trim();
        String string = i == rd1.m6918super() ? textView.getContext().getString(R.string.picture_empty_audio_title) : textView.getContext().getString(R.string.picture_empty_title);
        String str = string + strTrim;
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new RelativeSizeSpan(0.8f), string.length(), str.length(), 33);
        textView.setText(spannableString);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m4217if(TextView textView, Drawable drawable, int i) {
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        if (i == 0) {
            textView.setCompoundDrawables(drawable, null, null, null);
            return;
        }
        if (i == 1) {
            textView.setCompoundDrawables(null, drawable, null, null);
        } else if (i == 2) {
            textView.setCompoundDrawables(null, null, drawable, null);
        } else {
            textView.setCompoundDrawables(null, null, null, drawable);
        }
    }
}
