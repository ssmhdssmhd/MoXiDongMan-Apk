package com.qmuiteam.qmui.widget.textview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.support.v4.mh1;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.net.MailTo;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.alpha.QMUIAlphaTextView;
import com.qmuiteam.qmui.link.QMUILinkify;
import com.qmuiteam.qmui.span.QMUIOnSpanClickListener;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public class QMUILinkTextView extends QMUIAlphaTextView implements QMUIOnSpanClickListener {

    /* renamed from: const, reason: not valid java name */
    private static final String f19994const = "LinkTextView";

    /* renamed from: final, reason: not valid java name */
    private static final int f19995final = 1000;

    /* renamed from: import, reason: not valid java name */
    private static final long f19996import;

    /* renamed from: super, reason: not valid java name */
    public static int f19997super = 7;

    /* renamed from: throw, reason: not valid java name */
    private static Set<String> f19998throw = null;

    /* renamed from: while, reason: not valid java name */
    private static final long f19999while = 200;

    /* renamed from: break, reason: not valid java name */
    private OnLinkLongClickListener f20000break;

    /* renamed from: case, reason: not valid java name */
    private ColorStateList f20001case;

    /* renamed from: catch, reason: not valid java name */
    private long f20002catch;

    /* renamed from: class, reason: not valid java name */
    private Handler f20003class;

    /* renamed from: else, reason: not valid java name */
    private ColorStateList f20004else;

    /* renamed from: goto, reason: not valid java name */
    private int f20005goto;

    /* renamed from: this, reason: not valid java name */
    private OnLinkClickListener f20006this;

    /* renamed from: try, reason: not valid java name */
    private CharSequence f20007try;

    public interface OnLinkClickListener {
        void onMailLinkClick(String str);

        void onTelLinkClick(String str);

        void onWebUrlLinkClick(String str);
    }

    public interface OnLinkLongClickListener {
        void onLongClick(String str);
    }

    /* renamed from: com.qmuiteam.qmui.widget.textview.QMUILinkTextView$do, reason: invalid class name */
    public class Cdo extends Handler {
        public Cdo(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (1000 != message.what) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("handleMessage: ");
            sb.append(message.obj);
            Object obj = message.obj;
            if (obj instanceof String) {
                String str = (String) obj;
                if (QMUILinkTextView.this.f20006this == null || TextUtils.isEmpty(str)) {
                    return;
                }
                String lowerCase = str.toLowerCase();
                if (lowerCase.startsWith("tel:")) {
                    QMUILinkTextView.this.f20006this.onTelLinkClick(Uri.parse(str).getSchemeSpecificPart());
                } else if (lowerCase.startsWith(MailTo.MAILTO_SCHEME)) {
                    QMUILinkTextView.this.f20006this.onMailLinkClick(Uri.parse(str).getSchemeSpecificPart());
                } else if (lowerCase.startsWith("http") || lowerCase.startsWith("https")) {
                    QMUILinkTextView.this.f20006this.onWebUrlLinkClick(str);
                }
            }
        }
    }

    static {
        HashSet hashSet = new HashSet();
        f19998throw = hashSet;
        hashSet.add("tel");
        f19998throw.add("mailto");
        f19998throw.add("http");
        f19998throw.add("https");
        f19996import = ViewConfiguration.getDoubleTapTimeout();
    }

    public QMUILinkTextView(Context context) {
        this(context, null);
        this.f20004else = null;
        this.f20001case = ContextCompat.getColorStateList(context, R.color.qmui_s_link_color);
    }

    /* renamed from: try, reason: not valid java name */
    private void m24244try() {
        this.f20003class.removeMessages(1000);
        this.f20002catch = 0L;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m24245case(String str) {
        OnLinkLongClickListener onLinkLongClickListener = this.f20000break;
        if (onLinkLongClickListener == null) {
            return false;
        }
        onLinkLongClickListener.onLongClick(str);
        return true;
    }

    /* renamed from: else, reason: not valid java name */
    public void m24246else(int i) {
        this.f20005goto = (i ^ (-1)) & this.f20005goto;
    }

    public int getAutoLinkMaskCompat() {
        return this.f20005goto;
    }

    /* renamed from: new, reason: not valid java name */
    public void m24247new(int i) {
        this.f20005goto = i | this.f20005goto;
    }

    @Override // com.qmuiteam.qmui.span.QMUIOnSpanClickListener
    public boolean onSpanClick(String str) {
        if (str == null) {
            return true;
        }
        long jUptimeMillis = SystemClock.uptimeMillis() - this.f20002catch;
        StringBuilder sb = new StringBuilder();
        sb.append("onSpanClick clickUpTime: ");
        sb.append(jUptimeMillis);
        if (this.f20003class.hasMessages(1000)) {
            m24244try();
            return true;
        }
        if (f19999while < jUptimeMillis) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onSpanClick interrupted because of TAP_TIMEOUT: ");
            sb2.append(jUptimeMillis);
            return true;
        }
        String scheme = Uri.parse(str).getScheme();
        if (scheme != null) {
            scheme = scheme.toLowerCase();
        }
        if (!f19998throw.contains(scheme)) {
            return false;
        }
        long j = f19996import - jUptimeMillis;
        this.f20003class.removeMessages(1000);
        Message messageObtain = Message.obtain();
        messageObtain.what = 1000;
        messageObtain.obj = str;
        this.f20003class.sendMessageDelayed(messageObtain, j);
        return true;
    }

    @Override // com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView, android.widget.TextView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if ((motionEvent.getAction() & 255) == 0) {
            boolean zHasMessages = this.f20003class.hasMessages(1000);
            StringBuilder sb = new StringBuilder();
            sb.append("onTouchEvent hasSingleTap: ");
            sb.append(zHasMessages);
            if (zHasMessages) {
                m24244try();
            } else {
                this.f20002catch = SystemClock.uptimeMillis();
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView, android.widget.TextView, android.view.View
    public boolean performLongClick() {
        int selectionEnd = getSelectionEnd();
        return selectionEnd > 0 ? m24245case(getText().subSequence(getSelectionStart(), selectionEnd).toString()) || super.performLongClick() : super.performLongClick();
    }

    public void setAutoLinkMaskCompat(int i) {
        this.f20005goto = i;
    }

    public void setLinkColor(ColorStateList colorStateList) {
        this.f20001case = colorStateList;
    }

    public void setOnLinkClickListener(OnLinkClickListener onLinkClickListener) {
        this.f20006this = onLinkClickListener;
    }

    public void setOnLinkLongClickListener(OnLinkLongClickListener onLinkLongClickListener) {
        this.f20000break = onLinkLongClickListener;
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) throws UnsupportedEncodingException {
        this.f20007try = charSequence;
        if (!TextUtils.isEmpty(charSequence)) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
            QMUILinkify.m23484new(spannableStringBuilder, this.f20005goto, this.f20001case, this.f20004else, this);
            charSequence = spannableStringBuilder;
        }
        super.setText(charSequence, bufferType);
    }

    public QMUILinkTextView(Context context, ColorStateList colorStateList, ColorStateList colorStateList2) {
        this(context, null);
        this.f20004else = colorStateList2;
        this.f20001case = colorStateList;
    }

    public QMUILinkTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f20007try = null;
        this.f20002catch = 0L;
        this.f20003class = new Cdo(Looper.getMainLooper());
        this.f20005goto = getAutoLinkMask() | f19997super;
        setAutoLinkMask(0);
        setMovementMethodCompat(mh1.getInstance());
        setHighlightColor(0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QMUILinkTextView);
        this.f20004else = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.QMUILinkTextView_qmui_linkBackgroundColor);
        this.f20001case = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.QMUILinkTextView_qmui_linkTextColor);
        typedArrayObtainStyledAttributes.recycle();
        CharSequence charSequence = this.f20007try;
        if (charSequence != null) {
            setText(charSequence);
        }
        setChangeAlphaWhenPress(false);
    }
}
