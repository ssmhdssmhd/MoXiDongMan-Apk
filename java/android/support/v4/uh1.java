package android.support.v4;

import android.text.Spannable;
import android.text.method.MovementMethod;
import android.text.method.ScrollingMovementMethod;
import android.text.method.Touch;
import android.view.MotionEvent;
import android.widget.TextView;

/* loaded from: classes2.dex */
public class uh1 extends ScrollingMovementMethod {

    /* renamed from: do, reason: not valid java name */
    private static uh1 f6892do;

    /* renamed from: if, reason: not valid java name */
    private static lh1 f6893if = new lh1();

    public static MovementMethod getInstance() {
        if (f6892do == null) {
            f6892do = new uh1();
        }
        return f6892do;
    }

    @Override // android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        return f6893if.m4684if(textView, spannable, motionEvent) || Touch.onTouchEvent(textView, spannable, motionEvent);
    }
}
