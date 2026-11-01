package android.support.v4;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import androidx.annotation.NonNull;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class b82 extends TouchDelegate {

    /* renamed from: new, reason: not valid java name */
    private static final Rect f378new = new Rect();

    /* renamed from: do, reason: not valid java name */
    private final ArrayList<TouchDelegate> f379do;

    /* renamed from: for, reason: not valid java name */
    private boolean f380for;

    /* renamed from: if, reason: not valid java name */
    private TouchDelegate f381if;

    public b82(View view) {
        super(f378new, view);
        this.f379do = new ArrayList<>();
    }

    /* renamed from: do, reason: not valid java name */
    public void m472do(@NonNull TouchDelegate touchDelegate) {
        this.f379do.add(touchDelegate);
    }

    /* renamed from: for, reason: not valid java name */
    public void m473for(TouchDelegate touchDelegate) {
        this.f379do.remove(touchDelegate);
        if (this.f381if == touchDelegate) {
            this.f381if = null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m474if() {
        this.f379do.clear();
        this.f381if = null;
    }

    /* renamed from: new, reason: not valid java name */
    public void m475new(boolean z) {
        this.f380for = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001a  */
    @Override // android.view.TouchDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (!this.f380for) {
            return false;
        }
        int action = motionEvent.getAction();
        TouchDelegate touchDelegate = null;
        if (action == 0) {
            for (int i = 0; i < this.f379do.size(); i++) {
                TouchDelegate touchDelegate2 = this.f379do.get(i);
                if (touchDelegate2.onTouchEvent(motionEvent)) {
                    this.f381if = touchDelegate2;
                    return true;
                }
            }
        } else if (action == 1) {
            TouchDelegate touchDelegate3 = this.f381if;
            this.f381if = null;
            touchDelegate = touchDelegate3;
        } else if (action == 2) {
            touchDelegate = this.f381if;
        } else if (action == 3) {
        }
        return touchDelegate != null && touchDelegate.onTouchEvent(motionEvent);
    }
}
