package android.support.v4;

import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.view.MotionEvent;
import android.widget.TextView;
import com.qmuiteam.qmui.link.ITouchableSpan;
import com.qmuiteam.qmui.widget.textview.ISpanTouchFix;

/* loaded from: classes2.dex */
public class lh1 {

    /* renamed from: do, reason: not valid java name */
    private ITouchableSpan f3658do;

    /* renamed from: do, reason: not valid java name */
    public ITouchableSpan m4683do(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int totalPaddingLeft = x - textView.getTotalPaddingLeft();
        int totalPaddingTop = y - textView.getTotalPaddingTop();
        int scrollX = totalPaddingLeft + textView.getScrollX();
        int scrollY = totalPaddingTop + textView.getScrollY();
        Layout layout = textView.getLayout();
        int lineForVertical = layout.getLineForVertical(scrollY);
        float f = scrollX;
        try {
            int offsetForHorizontal = layout.getOffsetForHorizontal(lineForVertical, f);
            if (f < layout.getLineLeft(lineForVertical) || f > layout.getLineRight(lineForVertical)) {
                offsetForHorizontal = -1;
            }
            ITouchableSpan[] iTouchableSpanArr = (ITouchableSpan[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, ITouchableSpan.class);
            if (iTouchableSpanArr.length > 0) {
                return iTouchableSpanArr[0];
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: if, reason: not valid java name */
    public boolean m4684if(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        boolean z = true;
        if (motionEvent.getAction() == 0) {
            ITouchableSpan iTouchableSpanM4683do = m4683do(textView, spannable, motionEvent);
            this.f3658do = iTouchableSpanM4683do;
            if (iTouchableSpanM4683do != null) {
                iTouchableSpanM4683do.setPressed(true);
                Selection.setSelection(spannable, spannable.getSpanStart(this.f3658do), spannable.getSpanEnd(this.f3658do));
            }
            if (textView instanceof ISpanTouchFix) {
                ((ISpanTouchFix) textView).setTouchSpanHit(this.f3658do != null);
            }
            return this.f3658do != null;
        }
        if (motionEvent.getAction() == 2) {
            ITouchableSpan iTouchableSpanM4683do2 = m4683do(textView, spannable, motionEvent);
            ITouchableSpan iTouchableSpan = this.f3658do;
            if (iTouchableSpan != null && iTouchableSpanM4683do2 != iTouchableSpan) {
                iTouchableSpan.setPressed(false);
                this.f3658do = null;
                Selection.removeSelection(spannable);
            }
            if (textView instanceof ISpanTouchFix) {
                ((ISpanTouchFix) textView).setTouchSpanHit(this.f3658do != null);
            }
            return this.f3658do != null;
        }
        if (motionEvent.getAction() != 1) {
            ITouchableSpan iTouchableSpan2 = this.f3658do;
            if (iTouchableSpan2 != null) {
                iTouchableSpan2.setPressed(false);
            }
            if (textView instanceof ISpanTouchFix) {
                ((ISpanTouchFix) textView).setTouchSpanHit(false);
            }
            Selection.removeSelection(spannable);
            return false;
        }
        ITouchableSpan iTouchableSpan3 = this.f3658do;
        if (iTouchableSpan3 != null) {
            iTouchableSpan3.setPressed(false);
            this.f3658do.onClick(textView);
        } else {
            z = false;
        }
        this.f3658do = null;
        Selection.removeSelection(spannable);
        if (textView instanceof ISpanTouchFix) {
            ((ISpanTouchFix) textView).setTouchSpanHit(z);
        }
        return z;
    }
}
