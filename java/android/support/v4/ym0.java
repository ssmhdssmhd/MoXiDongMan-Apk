package android.support.v4;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ym0 implements View.OnTouchListener {

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final Dialog f8270do;

    /* renamed from: for, reason: not valid java name */
    private final int f8271for;

    /* renamed from: if, reason: not valid java name */
    private final int f8272if;

    /* renamed from: new, reason: not valid java name */
    private final int f8273new;

    public ym0(@NonNull Dialog dialog, @NonNull Rect rect) {
        this.f8270do = dialog;
        this.f8272if = rect.left;
        this.f8271for = rect.top;
        this.f8273new = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(@NonNull View view, @NonNull MotionEvent motionEvent) {
        View viewFindViewById = view.findViewById(R.id.content);
        int left = this.f8272if + viewFindViewById.getLeft();
        int width = viewFindViewById.getWidth() + left;
        if (new RectF(left, this.f8271for + viewFindViewById.getTop(), width, viewFindViewById.getHeight() + r3).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            motionEventObtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            motionEventObtain.setAction(0);
            int i = this.f8273new;
            motionEventObtain.setLocation((-i) - 1, (-i) - 1);
        }
        view.performClick();
        return this.f8270do.onTouchEvent(motionEventObtain);
    }
}
