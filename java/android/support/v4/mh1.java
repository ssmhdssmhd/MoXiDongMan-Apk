package android.support.v4;

import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.text.method.Touch;
import android.view.MotionEvent;
import android.widget.TextView;

/* loaded from: classes2.dex */
public class mh1 extends LinkMovementMethod {

    /* renamed from: do, reason: not valid java name */
    private static mh1 f3915do;

    /* renamed from: if, reason: not valid java name */
    private static lh1 f3916if = new lh1();

    public static MovementMethod getInstance() {
        if (f3915do == null) {
            f3915do = new mh1();
        }
        return f3915do;
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        return f3916if.m4684if(textView, spannable, motionEvent) || Touch.onTouchEvent(textView, spannable, motionEvent);
    }
}
