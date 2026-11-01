package android.support.v4;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import com.luck.picture.lib.R;

/* loaded from: classes2.dex */
public class pd1 extends Dialog {

    /* renamed from: do, reason: not valid java name */
    public Context f4932do;

    public pd1(Context context) {
        super(context, R.style.picture_alert_dialog);
        this.f4932do = context;
        setCancelable(true);
        setCanceledOnTouchOutside(false);
        getWindow().setWindowAnimations(R.style.DialogWindowStyle);
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.picture_alert_dialog);
    }
}
