package android.support.v4;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import java.lang.reflect.Field;

/* loaded from: classes2.dex */
public class ai1 {
    /* renamed from: do, reason: not valid java name */
    public static void m253do(WindowManager.LayoutParams layoutParams) {
        if (Build.VERSION.SDK_INT >= 19) {
            layoutParams.type = 2005;
        } else {
            layoutParams.type = 2002;
        }
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    public static Rect m254if(View view) {
        try {
            Field declaredField = View.class.getDeclaredField("mAttachInfo");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(view);
            Field declaredField2 = obj.getClass().getDeclaredField("mVisibleInsets");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            if (obj2 instanceof Rect) {
                return (Rect) obj2;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
