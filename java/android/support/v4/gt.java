package android.support.v4;

import android.app.Dialog;
import android.content.Context;
import android.view.Window;
import android.view.WindowManager;

/* loaded from: classes2.dex */
public class gt extends Dialog {
    public gt(Context context, int i, int i2, int i3, int i4) {
        super(context, i4);
        setContentView(i3);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = i;
        attributes.height = i2;
        attributes.gravity = 17;
        window.setAttributes(attributes);
    }

    /* renamed from: do, reason: not valid java name */
    public float m2781do(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }
}
