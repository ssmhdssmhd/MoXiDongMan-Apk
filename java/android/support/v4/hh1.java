package android.support.v4;

import android.content.Context;
import android.content.res.TypedArray;
import android.view.ViewGroup;
import android.widget.TextView;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.widget.QMUIWrapContentScrollView;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;

/* loaded from: classes2.dex */
public class hh1 extends QMUIDialogBuilder<hh1> {

    /* renamed from: throws, reason: not valid java name */
    private CharSequence f2406throws;

    public hh1(Context context) {
        super(context);
        m24034default(1, R.color.qmui_config_color_separator, 0, 0);
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    /* renamed from: break, reason: not valid java name */
    public QMUIDialog mo3035break(int i) {
        m24053throws(1);
        return super.mo3035break(i);
    }

    /* renamed from: protected, reason: not valid java name */
    public hh1 m3036protected(int i) {
        this.f2406throws = m24037final().getResources().getString(i);
        return this;
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    /* renamed from: public, reason: not valid java name */
    public void mo3037public(TextView textView) {
        super.mo3037public(textView);
        CharSequence charSequence = this.f2406throws;
        if (charSequence == null || charSequence.length() == 0) {
            TypedArray typedArrayObtainStyledAttributes = textView.getContext().obtainStyledAttributes(null, R.styleable.QMUIDialogTitleTvCustomDef, R.attr.qmui_dialog_title_style, 0);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.QMUIDialogTitleTvCustomDef_qmui_paddingBottomWhenNotContent) {
                    textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), typedArrayObtainStyledAttributes.getDimensionPixelSize(index, textView.getPaddingBottom()));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    /* renamed from: return, reason: not valid java name */
    public void mo3038return(QMUIDialog qMUIDialog, ViewGroup viewGroup, Context context) {
        CharSequence charSequence = this.f2406throws;
        if (charSequence == null || charSequence.length() <= 0) {
            return;
        }
        QMUISpanTouchFixTextView qMUISpanTouchFixTextView = new QMUISpanTouchFixTextView(context);
        int i = R.attr.qmui_dialog_message_content_style;
        sh1.m7401do(qMUISpanTouchFixTextView, i);
        if (!m24042import()) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.QMUIDialogMessageTvCustomDef, i, 0);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.QMUIDialogMessageTvCustomDef_qmui_paddingTopWhenNotTitle) {
                    qMUISpanTouchFixTextView.setPadding(qMUISpanTouchFixTextView.getPaddingLeft(), typedArrayObtainStyledAttributes.getDimensionPixelSize(index, qMUISpanTouchFixTextView.getPaddingTop()), qMUISpanTouchFixTextView.getPaddingRight(), qMUISpanTouchFixTextView.getPaddingBottom());
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        qMUISpanTouchFixTextView.setText(this.f2406throws);
        QMUIWrapContentScrollView qMUIWrapContentScrollView = new QMUIWrapContentScrollView(context);
        qMUIWrapContentScrollView.setMaxHeight(m24049super());
        qMUIWrapContentScrollView.addView(qMUISpanTouchFixTextView);
        viewGroup.addView(qMUIWrapContentScrollView);
    }

    /* renamed from: transient, reason: not valid java name */
    public hh1 m3039transient(CharSequence charSequence) {
        this.f2406throws = charSequence;
        return this;
    }
}
