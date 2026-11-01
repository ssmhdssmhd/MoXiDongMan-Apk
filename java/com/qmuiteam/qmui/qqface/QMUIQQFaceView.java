package com.qmuiteam.qmui.qqface;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.ih1;
import android.support.v4.kh1;
import android.support.v4.yh1;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.qmuiteam.qmui.QMUILog;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.link.ITouchableSpan;
import com.qmuiteam.qmui.qqface.Cdo;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class QMUIQQFaceView extends View {
    private static final String p = "QMUIQQFaceView";
    private static final String q = "...";
    private int a;

    /* renamed from: abstract, reason: not valid java name */
    private Cfor f19219abstract;
    private int b;

    /* renamed from: break, reason: not valid java name */
    private int f19220break;
    private int c;

    /* renamed from: case, reason: not valid java name */
    private Paint f19221case;

    /* renamed from: catch, reason: not valid java name */
    private int f19222catch;

    /* renamed from: class, reason: not valid java name */
    private int f19223class;

    /* renamed from: const, reason: not valid java name */
    private int f19224const;

    /* renamed from: continue, reason: not valid java name */
    private boolean f19225continue;
    private boolean d;

    /* renamed from: default, reason: not valid java name */
    private int f19226default;

    /* renamed from: do, reason: not valid java name */
    private CharSequence f19227do;
    private int e;

    /* renamed from: else, reason: not valid java name */
    private int f19228else;

    /* renamed from: extends, reason: not valid java name */
    private int f19229extends;
    private int f;

    /* renamed from: final, reason: not valid java name */
    private boolean f19230final;

    /* renamed from: finally, reason: not valid java name */
    private int f19231finally;

    /* renamed from: for, reason: not valid java name */
    private com.qmuiteam.qmui.qqface.Cdo f19232for;
    private int g;

    /* renamed from: goto, reason: not valid java name */
    private int f19233goto;
    private int h;
    private int i;

    /* renamed from: if, reason: not valid java name */
    private Cdo.Cfor f19234if;

    /* renamed from: implements, reason: not valid java name */
    private int f19235implements;

    /* renamed from: import, reason: not valid java name */
    private Rect f19236import;

    /* renamed from: instanceof, reason: not valid java name */
    public Cnew f19237instanceof;

    /* renamed from: interface, reason: not valid java name */
    private Typeface f19238interface;
    private int j;
    private boolean k;
    private yh1 l;
    private int m;
    private boolean n;

    /* renamed from: native, reason: not valid java name */
    private String f19239native;

    /* renamed from: new, reason: not valid java name */
    private boolean f19240new;
    private int o;

    /* renamed from: package, reason: not valid java name */
    private QQFaceViewListener f19241package;

    /* renamed from: private, reason: not valid java name */
    private int f19242private;

    /* renamed from: protected, reason: not valid java name */
    private int f19243protected;

    /* renamed from: public, reason: not valid java name */
    private int f19244public;

    /* renamed from: return, reason: not valid java name */
    private int f19245return;

    /* renamed from: static, reason: not valid java name */
    private int f19246static;

    /* renamed from: strictfp, reason: not valid java name */
    private Runnable f19247strictfp;

    /* renamed from: super, reason: not valid java name */
    private int f19248super;

    /* renamed from: switch, reason: not valid java name */
    private TextUtils.TruncateAt f19249switch;

    /* renamed from: synchronized, reason: not valid java name */
    private boolean f19250synchronized;

    /* renamed from: this, reason: not valid java name */
    private int f19251this;

    /* renamed from: throw, reason: not valid java name */
    private HashMap<Cdo.Cif, Cnew> f19252throw;

    /* renamed from: throws, reason: not valid java name */
    private boolean f19253throws;

    /* renamed from: transient, reason: not valid java name */
    private int f19254transient;

    /* renamed from: try, reason: not valid java name */
    private TextPaint f19255try;

    /* renamed from: volatile, reason: not valid java name */
    private boolean f19256volatile;

    /* renamed from: while, reason: not valid java name */
    private boolean f19257while;

    public interface QQFaceViewListener {
        void onCalculateLinesChange(int i);

        void onMoreTextClick();
    }

    /* renamed from: com.qmuiteam.qmui.qqface.QMUIQQFaceView$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f19258do;

        public Cdo(String str) {
            this.f19258do = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            QMUIQQFaceView.this.setText(this.f19258do);
        }
    }

    /* renamed from: com.qmuiteam.qmui.qqface.QMUIQQFaceView$for, reason: invalid class name */
    public static class Cfor implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private WeakReference<Cnew> f19260do;

        public Cfor(Cnew cnew) {
            this.f19260do = new WeakReference<>(cnew);
        }

        @Override // java.lang.Runnable
        public void run() {
            Cnew cnew = this.f19260do.get();
            if (cnew != null) {
                cnew.m23592try(false);
                cnew.m23588do();
            }
        }
    }

    /* renamed from: com.qmuiteam.qmui.qqface.QMUIQQFaceView$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (QMUIQQFaceView.this.f19219abstract != null) {
                QMUIQQFaceView.this.f19219abstract.run();
            }
        }
    }

    /* renamed from: com.qmuiteam.qmui.qqface.QMUIQQFaceView$new, reason: invalid class name */
    public class Cnew {

        /* renamed from: else, reason: not valid java name */
        public static final int f19262else = -1;

        /* renamed from: do, reason: not valid java name */
        private ITouchableSpan f19264do;

        /* renamed from: if, reason: not valid java name */
        private int f19266if = -1;

        /* renamed from: for, reason: not valid java name */
        private int f19265for = -1;

        /* renamed from: new, reason: not valid java name */
        private int f19267new = -1;

        /* renamed from: try, reason: not valid java name */
        private int f19268try = -1;

        public Cnew(ITouchableSpan iTouchableSpan) {
            this.f19264do = iTouchableSpan;
        }

        /* renamed from: case, reason: not valid java name */
        public void m23587case(int i, int i2) {
            this.f19267new = i;
            this.f19266if = i2;
        }

        /* renamed from: do, reason: not valid java name */
        public void m23588do() {
            int paddingTop = QMUIQQFaceView.this.getPaddingTop();
            int i = this.f19267new;
            if (i > 1) {
                paddingTop += (i - 1) * (QMUIQQFaceView.this.f19220break + QMUIQQFaceView.this.f19251this);
            }
            int i2 = ((this.f19268try - 1) * (QMUIQQFaceView.this.f19220break + QMUIQQFaceView.this.f19251this)) + paddingTop + QMUIQQFaceView.this.f19220break;
            Rect rect = new Rect();
            rect.top = paddingTop;
            rect.bottom = i2;
            rect.left = QMUIQQFaceView.this.getPaddingLeft();
            rect.right = QMUIQQFaceView.this.getWidth() - QMUIQQFaceView.this.getPaddingRight();
            if (this.f19267new == this.f19268try) {
                rect.left = this.f19266if;
                rect.right = this.f19265for;
            }
            QMUIQQFaceView.this.invalidate(rect);
        }

        /* renamed from: for, reason: not valid java name */
        public boolean m23589for(int i, int i2) {
            int paddingTop = QMUIQQFaceView.this.getPaddingTop();
            int i3 = this.f19267new;
            if (i3 > 1) {
                paddingTop += (i3 - 1) * (QMUIQQFaceView.this.f19220break + QMUIQQFaceView.this.f19251this);
            }
            int paddingTop2 = ((this.f19268try - 1) * (QMUIQQFaceView.this.f19220break + QMUIQQFaceView.this.f19251this)) + QMUIQQFaceView.this.getPaddingTop() + QMUIQQFaceView.this.f19220break;
            if (i2 < paddingTop || i2 > paddingTop2) {
                return false;
            }
            if (this.f19267new == this.f19268try) {
                return i >= this.f19266if && i <= this.f19265for;
            }
            int i4 = paddingTop + QMUIQQFaceView.this.f19220break;
            int i5 = paddingTop2 - QMUIQQFaceView.this.f19220break;
            if (i2 <= i4 || i2 >= i5) {
                return i2 <= i4 ? i >= this.f19266if : i <= this.f19265for;
            }
            if (this.f19268try - this.f19267new == 1) {
                return i >= this.f19266if && i <= this.f19265for;
            }
            return true;
        }

        /* renamed from: if, reason: not valid java name */
        public void m23590if() {
            this.f19264do.onClick(QMUIQQFaceView.this);
        }

        /* renamed from: new, reason: not valid java name */
        public void m23591new(int i, int i2) {
            this.f19268try = i;
            this.f19265for = i2;
        }

        /* renamed from: try, reason: not valid java name */
        public void m23592try(boolean z) {
            this.f19264do.setPressed(z);
        }
    }

    public QMUIQQFaceView(Context context) {
        this(context, null);
    }

    /* renamed from: break, reason: not valid java name */
    private void m23558break(Canvas canvas, int i, @Nullable Drawable drawable, int i2, boolean z, boolean z2) {
        int intrinsicWidth;
        yh1 yh1Var;
        Drawable drawable2 = i != 0 ? ContextCompat.getDrawable(getContext(), i) : drawable;
        if (i != 0 || drawable == null) {
            intrinsicWidth = this.f19222catch;
        } else {
            intrinsicWidth = drawable.getIntrinsicWidth() + ((z || z2) ? this.f19254transient : this.f19254transient * 2);
        }
        if (drawable2 == null) {
            return;
        }
        if (i != 0) {
            int i3 = this.f19220break;
            int i4 = this.f19222catch;
            int i5 = (i3 - i4) / 2;
            drawable2.setBounds(0, i5, i4, i5 + i4);
        } else {
            int i6 = z2 ? this.f19254transient : 0;
            int intrinsicWidth2 = drawable2.getIntrinsicWidth();
            int intrinsicHeight = drawable2.getIntrinsicHeight();
            int i7 = this.f19220break;
            if (intrinsicHeight > i7) {
                intrinsicWidth2 = (int) (intrinsicWidth2 * (i7 / intrinsicHeight));
                intrinsicHeight = i7;
            }
            int i8 = (i7 - intrinsicHeight) / 2;
            drawable2.setBounds(i6, i8, intrinsicWidth2 + i6, intrinsicHeight + i8);
        }
        int paddingTop = getPaddingTop();
        if (i2 > 1) {
            paddingTop += (i2 - 1) * (this.f19220break + this.f19251this);
        }
        canvas.save();
        canvas.translate(this.j, paddingTop);
        if (this.k && (yh1Var = this.l) != null) {
            int iM9864for = yh1Var.m9869try() ? this.l.m9864for() : this.l.m9862do();
            if (iM9864for != 0) {
                this.f19221case.setColor(iM9864for);
                canvas.drawRect(0.0f, 0.0f, intrinsicWidth, this.f19220break, this.f19221case);
            }
        }
        drawable2.draw(canvas);
        canvas.restore();
    }

    /* renamed from: case, reason: not valid java name */
    private void m23559case(List<Cdo.Cif> list, int i) {
        int paddingLeft = getPaddingLeft();
        int paddingRight = i - getPaddingRight();
        int i2 = 0;
        while (i2 < list.size() && !this.f19225continue) {
            if (this.b > this.f19224const && this.f19249switch == TextUtils.TruncateAt.END && Build.VERSION.SDK_INT < 21) {
                return;
            }
            Cdo.Cif cif = list.get(i2);
            if (cif.m23615catch() == Cdo.Cnew.DRAWABLE) {
                int i3 = this.a;
                int i4 = this.f19222catch;
                if (i3 + i4 > paddingRight) {
                    m23565final(paddingLeft);
                    this.a += this.f19222catch;
                } else if (i3 + i4 == paddingRight) {
                    m23565final(paddingLeft);
                } else {
                    this.a = i3 + i4;
                }
                if (paddingRight - paddingLeft < this.f19222catch) {
                    this.f19225continue = true;
                }
            } else if (cif.m23615catch() == Cdo.Cnew.TEXT) {
                m23573return(cif.m23618this(), paddingLeft, paddingRight);
            } else if (cif.m23615catch() == Cdo.Cnew.SPAN) {
                Cdo.Cfor cforM23614case = cif.m23614case();
                yh1 yh1VarM23613break = cif.m23613break();
                if (cforM23614case != null && cforM23614case.m23605if().size() > 0) {
                    if (yh1VarM23613break == null) {
                        m23559case(cforM23614case.m23605if(), i);
                    } else {
                        m23559case(cforM23614case.m23605if(), i);
                    }
                }
            } else if (cif.m23615catch() == Cdo.Cnew.NEXTLINE) {
                m23575super(paddingLeft, true);
            } else if (cif.m23615catch() == Cdo.Cnew.SPECIAL_BOUNDS_DRAWABLE) {
                int intrinsicWidth = cif.m23617goto().getIntrinsicWidth() + ((i2 == 0 || i2 == list.size() - 1) ? this.f19254transient : this.f19254transient * 2);
                int i5 = this.a;
                if (i5 + intrinsicWidth > paddingRight) {
                    m23565final(paddingLeft);
                    this.a += intrinsicWidth;
                } else if (i5 + intrinsicWidth == paddingRight) {
                    m23565final(paddingLeft);
                } else {
                    this.a = i5 + intrinsicWidth;
                }
                if (paddingRight - paddingLeft < intrinsicWidth) {
                    this.f19225continue = true;
                }
            }
            i2++;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private void m23560catch(Canvas canvas, CharSequence charSequence, int i, int i2, int i3) {
        yh1 yh1Var;
        if (i2 <= i || i2 > charSequence.length() || i >= charSequence.length()) {
            return;
        }
        if (this.k && (yh1Var = this.l) != null) {
            int iM9864for = yh1Var.m9869try() ? this.l.m9864for() : this.l.m9862do();
            if (iM9864for != 0) {
                this.f19221case.setColor(iM9864for);
                int i4 = this.j;
                int i5 = this.h;
                int i6 = this.f19223class;
                canvas.drawRect(i4, i5 - i6, i4 + i3, (i5 - i6) + this.f19220break, this.f19221case);
            }
        }
        canvas.drawText(charSequence, i, i2, this.j, this.h, this.f19255try);
    }

    /* renamed from: default, reason: not valid java name */
    private void m23561default(Canvas canvas, CharSequence charSequence, float[] fArr, int i, int i2, int i3) {
        int i4 = this.j;
        int i5 = i;
        while (i < fArr.length) {
            if (i4 + fArr[i] > i3) {
                m23560catch(canvas, charSequence, i5, i, i3 - this.j);
                m23570package(i2, i3 - i2);
                i4 = this.j;
                i5 = i;
            }
            i4 = (int) (i4 + fArr[i]);
            i++;
        }
        if (i5 < fArr.length) {
            m23560catch(canvas, charSequence, i5, fArr.length, i4 - this.j);
            this.j = i4;
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m23563else(int i) {
        int i2 = this.f19248super;
        this.f19226default = i2;
        if (this.f19230final) {
            this.f19226default = Math.min(1, i2);
        } else if (i < i2) {
            this.f19226default = i;
        }
        this.f19253throws = this.f19248super > this.f19226default;
    }

    /* renamed from: extends, reason: not valid java name */
    private void m23564extends(int i, int i2) {
        if (this.f19253throws) {
            this.j = i;
            return;
        }
        if (this.i != this.f19226default) {
            this.j = i;
            return;
        }
        int i3 = this.f19235implements;
        if (i3 == 17) {
            this.j = ((i2 - (this.a - i)) / 2) + i;
        } else if (i3 == 5) {
            this.j = (i2 - (this.a - i)) + i;
        } else {
            this.j = i;
        }
    }

    /* renamed from: final, reason: not valid java name */
    private void m23565final(int i) {
        m23575super(i, false);
    }

    private int getMiddleEllipsizeLine() {
        int i = this.f19226default;
        return i % 2 == 0 ? i / 2 : (i + 1) / 2;
    }

    /* renamed from: goto, reason: not valid java name */
    private void m23567goto(Canvas canvas, List<Cdo.Cif> list, int i) {
        int paddingLeft = getPaddingLeft();
        int i2 = i + paddingLeft;
        if (this.f19253throws && this.f19249switch == TextUtils.TruncateAt.START) {
            canvas.drawText(q, 0, 3, paddingLeft, this.f19223class, (Paint) this.f19255try);
        }
        int i3 = 0;
        while (i3 < list.size()) {
            Cdo.Cif cif = list.get(i3);
            Cdo.Cnew cnewM23615catch = cif.m23615catch();
            if (cnewM23615catch == Cdo.Cnew.DRAWABLE) {
                m23574static(canvas, cif.m23616else(), null, paddingLeft, i2, i3 == 0, i3 == list.size() - 1);
            } else if (cnewM23615catch == Cdo.Cnew.SPECIAL_BOUNDS_DRAWABLE) {
                m23574static(canvas, 0, cif.m23617goto(), paddingLeft, i2, i3 == 0, i3 == list.size() - 1);
            } else if (cnewM23615catch == Cdo.Cnew.TEXT) {
                CharSequence charSequenceM23618this = cif.m23618this();
                float[] fArr = new float[charSequenceM23618this.length()];
                this.f19255try.getTextWidths(charSequenceM23618this.toString(), fArr);
                m23576switch(canvas, charSequenceM23618this, fArr, 0, paddingLeft, i2);
            } else if (cnewM23615catch == Cdo.Cnew.SPAN) {
                Cdo.Cfor cforM23614case = cif.m23614case();
                this.l = cif.m23613break();
                Cnew cnew = this.f19252throw.get(cif);
                if (cforM23614case != null && !cforM23614case.m23605if().isEmpty()) {
                    if (this.l == null) {
                        m23567goto(canvas, cforM23614case.m23605if(), i);
                    } else {
                        this.k = true;
                        if (cnew != null) {
                            cnew.m23587case(this.i, this.j);
                        }
                        int iM9867new = this.l.m9869try() ? this.l.m9867new() : this.l.m9866if();
                        TextPaint textPaint = this.f19255try;
                        if (iM9867new == 0) {
                            iM9867new = this.f19233goto;
                        }
                        textPaint.setColor(iM9867new);
                        m23567goto(canvas, cforM23614case.m23605if(), i);
                        this.f19255try.setColor(this.f19233goto);
                        if (cnew != null) {
                            cnew.m23591new(this.i, this.j);
                        }
                        this.k = false;
                    }
                }
            } else if (cnewM23615catch == Cdo.Cnew.NEXTLINE) {
                int i4 = this.f19246static;
                int i5 = this.f19245return + i4;
                if (this.f19253throws && this.f19249switch == TextUtils.TruncateAt.END && this.j <= i2 - i5 && this.i == this.f19226default) {
                    m23560catch(canvas, q, 0, 3, i4);
                    this.j += this.f19246static;
                    m23577this(canvas, i2);
                    return;
                }
                m23571private(paddingLeft, true, i);
            } else {
                continue;
            }
            i3++;
        }
    }

    /* renamed from: import, reason: not valid java name */
    private boolean m23569import() {
        Cdo.Cfor cfor = this.f19234if;
        return cfor == null || cfor.m23605if() == null || this.f19234if.m23605if().isEmpty();
    }

    /* renamed from: package, reason: not valid java name */
    private void m23570package(int i, int i2) {
        m23571private(i, false, i2);
    }

    /* renamed from: private, reason: not valid java name */
    private void m23571private(int i, boolean z, int i2) {
        TextUtils.TruncateAt truncateAt;
        int i3 = ((z && ((truncateAt = this.f19249switch) == null || truncateAt == TextUtils.TruncateAt.END)) ? this.f19243protected : 0) + this.f19251this;
        int i4 = this.i + 1;
        this.i = i4;
        if (this.f19253throws) {
            TextUtils.TruncateAt truncateAt2 = this.f19249switch;
            if (truncateAt2 == TextUtils.TruncateAt.START) {
                if (i4 > (this.f19248super - this.f19226default) + 1) {
                    this.h += this.f19220break + i3;
                }
            } else if (truncateAt2 != TextUtils.TruncateAt.MIDDLE || !this.n || this.m == -1) {
                this.h += this.f19220break + i3;
            }
            if (truncateAt2 != null && truncateAt2 != TextUtils.TruncateAt.END && this.h > getHeight() - getPaddingBottom()) {
                QMUILog.m23435do(p, "draw outside the visible height, the ellipsize is inaccurate: mEllipsize = %s; mCurrentDrawLine = %d; mNeedDrawLine = %d;viewWidth = %d; viewHeight = %d; paddingLeft = %d; paddingRight = %d; paddingTop = %d; paddingBottom = %d; text = %s", this.f19249switch.name(), Integer.valueOf(this.i), Integer.valueOf(this.f19226default), Integer.valueOf(getWidth()), Integer.valueOf(getHeight()), Integer.valueOf(getPaddingLeft()), Integer.valueOf(getPaddingRight()), Integer.valueOf(getPaddingTop()), Integer.valueOf(getPaddingBottom()), this.f19227do);
            }
        } else {
            this.h += this.f19220break + i3;
        }
        m23564extends(i, i2);
    }

    /* renamed from: public, reason: not valid java name */
    private void m23572public() {
        if (kh1.m4402case(this.f19239native)) {
            this.f19245return = 0;
        } else {
            this.f19245return = (int) Math.ceil(this.f19255try.measureText(this.f19239native));
        }
    }

    /* renamed from: return, reason: not valid java name */
    private void m23573return(CharSequence charSequence, int i, int i2) {
        int length = charSequence.length();
        float[] fArr = new float[length];
        this.f19255try.getTextWidths(charSequence.toString(), fArr);
        int i3 = i2 - i;
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (int i4 = 0; i4 < length; i4++) {
            if (i3 < fArr[i4]) {
                this.f19225continue = true;
                return;
            }
            if (System.currentTimeMillis() - jCurrentTimeMillis > 2000) {
                QMUILog.m23435do(p, "measureText: text = %s, mCurrentCalWidth = %d, widthStart = %d, widthEnd = %d", charSequence, Integer.valueOf(this.a), Integer.valueOf(i), Integer.valueOf(i2));
                this.f19225continue = true;
                return;
            }
            if (this.a + fArr[i4] > i2) {
                m23565final(i);
            }
            double d = this.a;
            double dCeil = Math.ceil(fArr[i4]);
            Double.isNaN(d);
            this.a = (int) (d + dCeil);
        }
    }

    private void setContentCalMaxWidth(int i) {
        this.c = Math.max(i, this.c);
    }

    /* renamed from: static, reason: not valid java name */
    private void m23574static(Canvas canvas, int i, @Nullable Drawable drawable, int i2, int i3, boolean z, boolean z2) {
        int intrinsicWidth;
        if (i != -1 || drawable == null) {
            intrinsicWidth = this.f19222catch;
        } else {
            intrinsicWidth = drawable.getIntrinsicWidth() + ((z || z2) ? this.f19254transient : this.f19254transient * 2);
        }
        int i4 = intrinsicWidth;
        if (!this.f19253throws) {
            m23579throws(canvas, i, drawable, 0, i2, i3, z, z2);
            return;
        }
        TextUtils.TruncateAt truncateAt = this.f19249switch;
        if (truncateAt == TextUtils.TruncateAt.START) {
            int i5 = this.i;
            int i6 = this.f19248super;
            int i7 = this.f19226default;
            if (i5 > i6 - i7) {
                m23579throws(canvas, i, drawable, i7 - i6, i2, i3, z, z2);
                return;
            }
            if (i5 < i6 - i7) {
                int i8 = this.j;
                if (i4 + i8 <= i3) {
                    this.j = i8 + i4;
                    return;
                } else {
                    m23570package(i2, i3 - i2);
                    m23574static(canvas, i, drawable, i2, i3, z, z2);
                    return;
                }
            }
            int i9 = this.a;
            int i10 = this.f19246static;
            int i11 = i9 + i10;
            int i12 = this.j;
            if (i4 + i12 < i11) {
                this.j = i12 + i4;
                return;
            } else {
                m23570package(i2 + i10, i3 - i2);
                return;
            }
        }
        if (truncateAt == TextUtils.TruncateAt.MIDDLE) {
            int middleEllipsizeLine = getMiddleEllipsizeLine();
            int i13 = this.i;
            if (i13 < middleEllipsizeLine) {
                if (this.j + i4 > i3) {
                    m23579throws(canvas, i, drawable, 0, i2, i3, z, z2);
                    return;
                } else {
                    m23558break(canvas, i, drawable, i13, z, z2);
                    this.j += i4;
                    return;
                }
            }
            if (i13 != middleEllipsizeLine) {
                m23578throw(canvas, i, drawable, i2, i3, middleEllipsizeLine, z, z2);
                return;
            }
            int width = getWidth() / 2;
            int i14 = this.f19246static;
            int i15 = width - (i14 / 2);
            if (this.n) {
                m23578throw(canvas, i, drawable, i2, i3, middleEllipsizeLine, z, z2);
                return;
            }
            if (this.j + i4 <= i15) {
                m23558break(canvas, i, drawable, this.i, z, z2);
                this.j += i4;
                return;
            } else {
                m23560catch(canvas, q, 0, 3, i14);
                this.m = this.j + this.f19246static;
                this.n = true;
                m23578throw(canvas, i, drawable, i2, i3, middleEllipsizeLine, z, z2);
                return;
            }
        }
        int i16 = this.i;
        int i17 = this.f19226default;
        if (i16 != i17) {
            if (i16 < i17) {
                if (this.j + i4 > i3) {
                    m23579throws(canvas, i, drawable, 0, i2, i3, z, z2);
                    return;
                } else {
                    m23558break(canvas, i, drawable, i16, z, z2);
                    this.j += i4;
                    return;
                }
            }
            return;
        }
        int i18 = this.f19245return;
        if (truncateAt == TextUtils.TruncateAt.END) {
            i18 += this.f19246static;
        }
        int i19 = this.j;
        int i20 = i3 - i18;
        if (i4 + i19 < i20) {
            m23558break(canvas, i, drawable, i16, z, z2);
            this.j += i4;
            return;
        }
        if (i19 + i4 == i20) {
            m23558break(canvas, i, drawable, i16, z, z2);
            this.j += i4;
        }
        if (this.f19249switch == TextUtils.TruncateAt.END) {
            m23560catch(canvas, q, 0, 3, this.f19246static);
            this.j += this.f19246static;
        }
        m23577this(canvas, i3);
        m23570package(i2, i3 - i2);
    }

    /* renamed from: super, reason: not valid java name */
    private void m23575super(int i, boolean z) {
        this.b++;
        setContentCalMaxWidth(this.a);
        this.a = i;
        if (z) {
            TextUtils.TruncateAt truncateAt = this.f19249switch;
            if (truncateAt == null) {
                this.f19229extends++;
            } else {
                if (truncateAt != TextUtils.TruncateAt.END || this.b > this.f19224const) {
                    return;
                }
                this.f19229extends++;
            }
        }
    }

    /* renamed from: switch, reason: not valid java name */
    private void m23576switch(Canvas canvas, CharSequence charSequence, float[] fArr, int i, int i2, int i3) {
        int i4 = i;
        if (i4 >= charSequence.length()) {
            return;
        }
        if (!this.f19253throws) {
            m23561default(canvas, charSequence, fArr, 0, i2, i3);
            return;
        }
        TextUtils.TruncateAt truncateAt = this.f19249switch;
        if (truncateAt == TextUtils.TruncateAt.START) {
            int i5 = this.i;
            int i6 = this.f19248super;
            int i7 = this.f19226default;
            if (i5 > i6 - i7) {
                m23561default(canvas, charSequence, fArr, i, i2, i3);
                return;
            }
            if (i5 < i6 - i7) {
                while (i4 < charSequence.length()) {
                    int i8 = this.j;
                    if (i8 + fArr[i4] > i3) {
                        m23570package(i2, i3 - i2);
                        m23576switch(canvas, charSequence, fArr, i4, i2, i3);
                        return;
                    } else {
                        this.j = (int) (i8 + fArr[i4]);
                        i4++;
                    }
                }
                return;
            }
            int i9 = this.a + this.f19246static;
            while (i4 < charSequence.length()) {
                int i10 = this.j;
                if (i10 + fArr[i4] > i9) {
                    int i11 = i4 + 1;
                    if (i10 <= i9) {
                        i4 = i11;
                    }
                    m23570package(this.f19246static + i2, i3 - i2);
                    m23576switch(canvas, charSequence, fArr, i4, i2, i3);
                    return;
                }
                this.j = (int) (i10 + fArr[i4]);
                i4++;
            }
            return;
        }
        if (truncateAt != TextUtils.TruncateAt.MIDDLE) {
            int i12 = this.i;
            int i13 = this.f19226default;
            if (i12 < i13) {
                int i14 = this.j;
                for (int i15 = i4; i15 < fArr.length; i15++) {
                    float f = i14;
                    if (fArr[i15] + f > i3) {
                        int i16 = i15;
                        m23560catch(canvas, charSequence, i, i16, i3 - this.j);
                        m23570package(i2, i3 - i2);
                        m23576switch(canvas, charSequence, fArr, i16, i2, i3);
                        return;
                    }
                    i14 = (int) (f + fArr[i15]);
                }
                m23560catch(canvas, charSequence, i, fArr.length, i14 - this.j);
                this.j = i14;
                return;
            }
            if (i12 == i13) {
                int i17 = this.f19245return;
                if (truncateAt == TextUtils.TruncateAt.END) {
                    i17 += this.f19246static;
                }
                int i18 = this.j;
                for (int i19 = i4; i19 < fArr.length; i19++) {
                    float f2 = i18;
                    if (fArr[i19] + f2 > i3 - i17) {
                        m23560catch(canvas, charSequence, i, i19, i18 - this.j);
                        this.j = i18;
                        if (this.f19249switch == TextUtils.TruncateAt.END) {
                            m23560catch(canvas, q, 0, 3, this.f19246static);
                            this.j += this.f19246static;
                        }
                        m23577this(canvas, i3);
                        m23570package(i2, i3 - i2);
                        return;
                    }
                    i18 = (int) (f2 + fArr[i19]);
                }
                m23560catch(canvas, charSequence, i, fArr.length, i18 - this.j);
                this.j = i18;
                return;
            }
            return;
        }
        int middleEllipsizeLine = getMiddleEllipsizeLine();
        int i20 = this.i;
        if (i20 < middleEllipsizeLine) {
            int i21 = this.j;
            for (int i22 = i4; i22 < fArr.length; i22++) {
                float f3 = i21;
                if (fArr[i22] + f3 > i3) {
                    int i23 = i22;
                    m23560catch(canvas, charSequence, i, i23, i3 - this.j);
                    m23570package(i2, i3 - i2);
                    m23576switch(canvas, charSequence, fArr, i23, i2, i3);
                    return;
                }
                i21 = (int) (f3 + fArr[i22]);
            }
            m23560catch(canvas, charSequence, i, charSequence.length(), i21 - this.j);
            this.j = i21;
            return;
        }
        if (i20 != middleEllipsizeLine) {
            m23580while(canvas, charSequence, fArr, i, middleEllipsizeLine, i2, i3);
            return;
        }
        if (this.n) {
            m23580while(canvas, charSequence, fArr, i, middleEllipsizeLine, i2, i3);
            return;
        }
        int i24 = ((i3 + i2) / 2) - (this.f19246static / 2);
        int i25 = this.j;
        for (int i26 = i4; i26 < fArr.length; i26++) {
            float f4 = i25;
            if (fArr[i26] + f4 > i24) {
                m23560catch(canvas, charSequence, i, i26, i25 - this.j);
                this.j = i25;
                m23560catch(canvas, q, 0, 3, this.f19246static);
                this.m = this.j + this.f19246static;
                this.n = true;
                m23580while(canvas, charSequence, fArr, i26, middleEllipsizeLine, i2, i3);
                return;
            }
            i25 = (int) (f4 + fArr[i26]);
        }
        m23560catch(canvas, charSequence, i, charSequence.length(), i25 - this.j);
        this.j = i25;
    }

    /* renamed from: this, reason: not valid java name */
    private void m23577this(Canvas canvas, int i) {
        if (kh1.m4402case(this.f19239native)) {
            return;
        }
        this.f19255try.setColor(this.f19244public);
        int paddingTop = getPaddingTop();
        int i2 = this.i;
        if (i2 > 1) {
            paddingTop += (i2 - 1) * (this.f19220break + this.f19251this);
        }
        this.f19236import.set(this.j, paddingTop, i, this.f19220break + paddingTop);
        String str = this.f19239native;
        canvas.drawText(str, 0, str.length(), this.j, this.h, (Paint) this.f19255try);
        this.f19255try.setColor(this.f19233goto);
    }

    /* renamed from: throw, reason: not valid java name */
    private void m23578throw(Canvas canvas, int i, Drawable drawable, int i2, int i3, int i4, boolean z, boolean z2) {
        int intrinsicWidth;
        if (i != 0) {
            intrinsicWidth = this.f19222catch;
        } else {
            intrinsicWidth = drawable.getIntrinsicWidth() + ((z || z2) ? this.f19254transient : this.f19254transient * 2);
        }
        int i5 = this.m;
        if (i5 == -1) {
            m23579throws(canvas, i, drawable, i4 - this.o, i2, i3, z, z2);
            return;
        }
        int i6 = this.f19226default - i4;
        int i7 = this.a;
        int i8 = (i3 - i7) - (i5 - i2);
        int i9 = this.f19248super - i6;
        if (i8 > 0) {
            i9--;
        }
        int i10 = i8 > 0 ? i3 - i8 : i5 - (i3 - i7);
        int i11 = this.i;
        if (i11 < i9) {
            int i12 = this.j;
            if (intrinsicWidth + i12 <= i3) {
                this.j = i12 + intrinsicWidth;
                return;
            } else {
                m23570package(i2, i3 - i2);
                m23574static(canvas, i, drawable, i2, i3, z, z2);
                return;
            }
        }
        if (i11 != i9) {
            m23579throws(canvas, i, drawable, i4 - i9, i2, i3, z, z2);
            return;
        }
        int i13 = this.j;
        if (intrinsicWidth + i13 <= i10) {
            this.j = i13 + intrinsicWidth;
            return;
        }
        boolean z3 = i13 >= i10;
        this.j = i5;
        this.m = -1;
        this.o = i9;
        if (z3) {
            m23574static(canvas, i, drawable, i2, i3, z, z2);
        }
    }

    /* renamed from: throws, reason: not valid java name */
    private void m23579throws(Canvas canvas, int i, @Nullable Drawable drawable, int i2, int i3, int i4, boolean z, boolean z2) {
        int intrinsicWidth;
        if (i != 0 || drawable == null) {
            intrinsicWidth = this.f19222catch;
        } else {
            intrinsicWidth = drawable.getIntrinsicWidth() + ((z || z2) ? this.f19254transient : this.f19254transient * 2);
        }
        int i5 = intrinsicWidth;
        if (this.j + i5 > i4) {
            m23570package(i3, i4 - i3);
        }
        m23558break(canvas, i, drawable, this.i + i2, z, z2);
        this.j += i5;
    }

    /* renamed from: while, reason: not valid java name */
    private void m23580while(Canvas canvas, CharSequence charSequence, float[] fArr, int i, int i2, int i3, int i4) {
        int i5 = i;
        if (i5 >= charSequence.length()) {
            return;
        }
        int i6 = this.m;
        if (i6 == -1) {
            m23561default(canvas, charSequence, fArr, i, i3, i4);
            return;
        }
        int i7 = this.f19226default - i2;
        int i8 = this.a;
        int i9 = (i4 - i8) - (i6 - i3);
        int i10 = this.f19248super - i7;
        if (i9 > 0) {
            i10--;
        }
        int i11 = i9 > 0 ? i4 - i9 : i6 - (i4 - i8);
        int i12 = this.i;
        if (i12 < i10) {
            while (i5 < fArr.length) {
                int i13 = this.j;
                if (i13 + fArr[i5] > i4) {
                    m23570package(i3, i3 - i4);
                    m23580while(canvas, charSequence, fArr, i5, i2, i3, i4);
                    return;
                } else {
                    this.j = (int) (i13 + fArr[i5]);
                    i5++;
                }
            }
            return;
        }
        if (i12 != i10) {
            m23561default(canvas, charSequence, fArr, i, i3, i4);
            return;
        }
        while (i5 < fArr.length) {
            int i14 = this.j;
            if (i14 + fArr[i5] > i11) {
                int i15 = i5 + 1;
                if (i14 < i11) {
                    i5 = i15;
                }
                this.j = this.m;
                this.m = -1;
                this.o = i10;
                m23561default(canvas, charSequence, fArr, i5, i3, i4);
                return;
            }
            this.j = (int) (i14 + fArr[i5]);
            i5++;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public int m23581class(Paint.FontMetricsInt fontMetricsInt, boolean z) {
        return z ? fontMetricsInt.bottom : fontMetricsInt.descent;
    }

    /* renamed from: const, reason: not valid java name */
    public int m23582const(Paint.FontMetricsInt fontMetricsInt, boolean z) {
        return z ? fontMetricsInt.top : fontMetricsInt.ascent;
    }

    /* renamed from: finally, reason: not valid java name */
    public void m23583finally(Typeface typeface, int i) {
        if (i <= 0) {
            this.f19255try.setFakeBoldText(false);
            this.f19255try.setTextSkewX(0.0f);
            setTypeface(typeface);
        } else {
            Typeface typefaceDefaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i) : Typeface.create(typeface, i);
            setTypeface(typefaceDefaultFromStyle);
            int style = ((typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0) ^ (-1)) & i;
            this.f19255try.setFakeBoldText((style & 1) != 0);
            this.f19255try.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        }
    }

    public int getFontHeight() {
        return this.f19220break;
    }

    public int getGravity() {
        return this.f19235implements;
    }

    public int getLineCount() {
        return this.f19248super;
    }

    public int getLineSpace() {
        return this.f19251this;
    }

    public int getMaxLine() {
        return this.f19224const;
    }

    public int getMaxWidth() {
        return this.f19242private;
    }

    public Rect getMoreHitRect() {
        return this.f19236import;
    }

    public TextPaint getPaint() {
        return this.f19255try;
    }

    public CharSequence getText() {
        return this.f19227do;
    }

    public int getTextSize() {
        return this.f19228else;
    }

    /* renamed from: native, reason: not valid java name */
    public boolean m23584native() {
        return this.f19253throws;
    }

    /* renamed from: new, reason: not valid java name */
    public int m23585new() {
        if (this.f19250synchronized) {
            Paint.FontMetricsInt fontMetricsInt = this.f19255try.getFontMetricsInt();
            if (fontMetricsInt == null) {
                this.f19222catch = 0;
                this.f19220break = 0;
            } else {
                this.f19250synchronized = false;
                int iM23582const = m23582const(fontMetricsInt, this.f19256volatile);
                int iM23581class = m23581class(fontMetricsInt, this.f19256volatile) - iM23582const;
                this.f19222catch = this.f19231finally + iM23581class;
                int iMax = Math.max(this.f19222catch, this.f19232for.m23597case());
                if (iM23581class >= iMax) {
                    this.f19220break = iM23581class;
                    this.f19223class = -iM23582const;
                } else {
                    this.f19220break = iMax;
                    this.f19223class = (-iM23582const) + ((iMax - iM23581class) / 2);
                }
            }
        }
        return this.f19220break;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f19225continue || this.f19227do == null || this.f19248super == 0 || m23569import()) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        List<Cdo.Cif> listM23605if = this.f19234if.m23605if();
        this.h = getPaddingTop() + this.f19223class;
        this.i = 1;
        m23564extends(getPaddingLeft(), (getWidth() - getPaddingLeft()) - getPaddingRight());
        this.n = false;
        m23567goto(canvas, listM23605if, (getWidth() - getPaddingLeft()) - getPaddingRight());
        StringBuilder sb = new StringBuilder();
        sb.append("onDraw spend time = ");
        sb.append(System.currentTimeMillis() - jCurrentTimeMillis);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int paddingTop;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f19225continue = false;
        m23585new();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        StringBuilder sb = new StringBuilder();
        sb.append("widthSize = ");
        sb.append(size);
        sb.append("; heightSize = ");
        sb.append(size2);
        this.f19248super = 0;
        this.f19229extends = 0;
        if (mode == 0 || mode == 1073741824) {
            m23586try(size);
        } else {
            CharSequence charSequence = this.f19227do;
            size = (charSequence == null || charSequence.length() == 0) ? 0 : m23586try(Math.min(size, this.f19242private));
        }
        if (this.f19225continue) {
            setMeasuredDimension(size, mode2 != Integer.MIN_VALUE ? size2 : 0);
            return;
        }
        int iMin = this.f19224const;
        if (mode2 == Integer.MIN_VALUE) {
            int paddingTop2 = (size2 - getPaddingTop()) - getPaddingBottom();
            int i9 = this.f19251this;
            iMin = Math.min((paddingTop2 + i9) / (this.f19220break + i9), this.f19224const);
            m23563else(iMin);
            paddingTop = getPaddingTop() + getPaddingBottom();
            i3 = this.f19226default;
            if (i3 < 2) {
                i7 = this.f19220break;
                i8 = i3 * i7;
            } else {
                int i10 = this.f19220break;
                i4 = ((i3 - 1) * (this.f19251this + i10)) + i10;
                i5 = this.f19229extends;
                i6 = this.f19243protected;
                i8 = i4 + (i5 * i6);
            }
        } else {
            if (mode2 == 1073741824) {
                int paddingTop3 = (size2 - getPaddingTop()) - getPaddingBottom();
                int i11 = this.f19251this;
                iMin = Math.min((paddingTop3 + i11) / (this.f19220break + i11), this.f19224const);
                m23563else(iMin);
                setMeasuredDimension(size, size2);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("mLines = ");
                sb2.append(this.f19248super);
                sb2.append(" ; width = ");
                sb2.append(size);
                sb2.append(" ; height = ");
                sb2.append(size2);
                sb2.append(" ; maxLine = ");
                sb2.append(iMin);
                sb2.append("; measure time = ");
                sb2.append(System.currentTimeMillis() - jCurrentTimeMillis);
            }
            m23563else(iMin);
            paddingTop = getPaddingTop() + getPaddingBottom();
            i3 = this.f19226default;
            if (i3 < 2) {
                i7 = this.f19220break;
                i8 = i3 * i7;
            } else {
                int i12 = this.f19220break;
                i4 = ((i3 - 1) * (this.f19251this + i12)) + i12;
                i5 = this.f19229extends;
                i6 = this.f19243protected;
                i8 = i4 + (i5 * i6);
            }
        }
        size2 = paddingTop + i8;
        setMeasuredDimension(size, size2);
        StringBuilder sb22 = new StringBuilder();
        sb22.append("mLines = ");
        sb22.append(this.f19248super);
        sb22.append(" ; width = ");
        sb22.append(size);
        sb22.append(" ; height = ");
        sb22.append(size2);
        sb22.append(" ; maxLine = ");
        sb22.append(iMin);
        sb22.append("; measure time = ");
        sb22.append(System.currentTimeMillis() - jCurrentTimeMillis);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (this.f19252throw.isEmpty() && this.f19236import.isEmpty()) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action != 0 && !this.f19257while && this.f19237instanceof == null) {
            return super.onTouchEvent(motionEvent);
        }
        Cfor cfor = this.f19219abstract;
        if (cfor != null) {
            cfor.run();
            this.f19219abstract = null;
        }
        if (action == 0) {
            this.f19237instanceof = null;
            this.f19257while = false;
            if (!this.f19236import.contains(x, y)) {
                Iterator<Cnew> it = this.f19252throw.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Cnew next = it.next();
                    if (next.m23589for(x, y)) {
                        this.f19237instanceof = next;
                        break;
                    }
                }
            } else {
                this.f19257while = true;
            }
            Cnew cnew = this.f19237instanceof;
            if (cnew != null) {
                cnew.m23592try(true);
                this.f19237instanceof.m23588do();
            } else if (!this.f19257while) {
                return super.onTouchEvent(motionEvent);
            }
        } else if (action == 1) {
            Cnew cnew2 = this.f19237instanceof;
            if (cnew2 != null) {
                cnew2.m23590if();
                this.f19219abstract = new Cfor(this.f19237instanceof);
                postDelayed(new Cif(), 100L);
            } else if (this.f19257while) {
                QQFaceViewListener qQFaceViewListener = this.f19241package;
                if (qQFaceViewListener != null) {
                    qQFaceViewListener.onMoreTextClick();
                } else if (isClickable()) {
                    performClick();
                }
            }
        } else if (action == 2) {
            Cnew cnew3 = this.f19237instanceof;
            if (cnew3 != null && !cnew3.m23589for(x, y)) {
                this.f19237instanceof.m23592try(false);
                this.f19237instanceof.m23588do();
                this.f19237instanceof = null;
            }
        } else if (action == 3) {
            this.f19219abstract = null;
            Cnew cnew4 = this.f19237instanceof;
            if (cnew4 != null) {
                cnew4.m23592try(false);
                this.f19237instanceof.m23588do();
            }
        }
        return true;
    }

    public void setCompiler(com.qmuiteam.qmui.qqface.Cdo cdo) {
        this.f19232for = cdo;
        Runnable runnable = this.f19247strictfp;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f19249switch != truncateAt) {
            this.f19249switch = truncateAt;
            requestLayout();
            invalidate();
        }
    }

    public void setGravity(int i) {
        this.f19235implements = i;
    }

    public void setIncludeFontPadding(boolean z) {
        if (this.f19256volatile != z) {
            this.f19250synchronized = true;
            this.f19256volatile = z;
            requestLayout();
            invalidate();
        }
    }

    public void setLineSpace(int i) {
        if (this.f19251this != i) {
            this.f19251this = i;
            requestLayout();
            invalidate();
        }
    }

    public void setListener(QQFaceViewListener qQFaceViewListener) {
        this.f19241package = qQFaceViewListener;
    }

    public void setMaxLine(int i) {
        if (this.f19224const != i) {
            this.f19224const = i;
            requestLayout();
            invalidate();
        }
    }

    public void setMaxWidth(int i) {
        if (this.f19242private != i) {
            this.f19242private = i;
            requestLayout();
        }
    }

    public void setMoreActionColor(int i) {
        if (i != this.f19244public) {
            this.f19244public = i;
            invalidate();
        }
    }

    public void setMoreActionText(String str) {
        String str2 = this.f19239native;
        if (str2 == null || !str2.equals(str)) {
            this.f19239native = str;
            m23572public();
            requestLayout();
            invalidate();
        }
    }

    public void setOpenQQFace(boolean z) {
        this.f19240new = z;
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        if (getPaddingLeft() != i || getPaddingRight() != i3) {
            this.d = true;
        }
        super.setPadding(i, i2, i3, i4);
    }

    public void setParagraphSpace(int i) {
        if (this.f19243protected != i) {
            this.f19243protected = i;
            requestLayout();
            invalidate();
        }
    }

    public void setQQFaceSizeAddon(int i) {
        if (this.f19231finally != i) {
            this.f19231finally = i;
            this.d = true;
            requestLayout();
            invalidate();
        }
    }

    public void setSingleLine(boolean z) {
        if (this.f19230final != z) {
            this.f19230final = z;
            requestLayout();
            invalidate();
        }
    }

    public void setSpecialDrawablePadding(int i) {
        if (this.f19254transient != i) {
            this.f19254transient = i;
            requestLayout();
            invalidate();
        }
    }

    public void setText(CharSequence charSequence) {
        com.qmuiteam.qmui.qqface.Cdo cdo;
        this.f19247strictfp = null;
        CharSequence charSequence2 = this.f19227do;
        if (charSequence2 == null || !charSequence2.equals(charSequence)) {
            this.f19227do = charSequence;
            setContentDescription(charSequence);
            if (this.f19240new && this.f19232for == null) {
                throw new RuntimeException("mCompiler == null");
            }
            this.f19252throw.clear();
            if (kh1.m4402case(this.f19227do)) {
                if (kh1.m4402case(charSequence2)) {
                    return;
                }
                this.f19234if = null;
                requestLayout();
                invalidate();
                return;
            }
            if (!this.f19240new || (cdo = this.f19232for) == null) {
                this.f19234if = new Cdo.Cfor(0, this.f19227do.length());
                String[] strArrSplit = this.f19227do.toString().split("\\n");
                for (int i = 0; i < strArrSplit.length; i++) {
                    this.f19234if.m23603do(Cdo.Cif.m23611new(strArrSplit[i]));
                    if (i != strArrSplit.length - 1) {
                        this.f19234if.m23603do(Cdo.Cif.m23610if());
                    }
                }
            } else {
                Cdo.Cfor cforM23600if = cdo.m23600if(this.f19227do);
                this.f19234if = cforM23600if;
                List<Cdo.Cif> listM23605if = cforM23600if.m23605if();
                if (listM23605if != null) {
                    for (int i2 = 0; i2 < listM23605if.size(); i2++) {
                        Cdo.Cif cif = listM23605if.get(i2);
                        if (cif.m23615catch() == Cdo.Cnew.SPAN) {
                            this.f19252throw.put(cif, new Cnew(cif.m23613break()));
                        }
                    }
                }
            }
            this.d = true;
            if (getLayoutParams() == null) {
                return;
            }
            if (getLayoutParams().width == -2 || getLayoutParams().height == -2) {
                requestLayout();
                invalidate();
                return;
            }
            int paddingLeft = getPaddingLeft() + getPaddingRight();
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            if (getWidth() <= paddingLeft || getHeight() <= paddingBottom) {
                return;
            }
            this.f19248super = 0;
            m23586try(getWidth());
            int i3 = this.f19226default;
            int height = getHeight() - paddingBottom;
            int i4 = this.f19251this;
            m23563else(Math.min((height + i4) / (this.f19220break + i4), this.f19224const));
            if (i3 == this.f19226default) {
                invalidate();
            } else {
                requestLayout();
                invalidate();
            }
        }
    }

    public void setTextColor(@ColorInt int i) {
        if (this.f19233goto != i) {
            this.f19233goto = i;
            this.f19255try.setColor(i);
            invalidate();
        }
    }

    public void setTextSize(int i) {
        if (this.f19228else != i) {
            this.f19228else = i;
            this.f19255try.setTextSize(i);
            this.f19250synchronized = true;
            this.d = true;
            this.f19246static = (int) Math.ceil(this.f19255try.measureText(q));
            m23572public();
            requestLayout();
            invalidate();
        }
    }

    public void setTypeface(Typeface typeface) {
        if (this.f19238interface != typeface) {
            this.f19238interface = typeface;
            this.f19250synchronized = true;
            this.f19255try.setTypeface(typeface);
            requestLayout();
            invalidate();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public int m23586try(int i) {
        if (i <= getPaddingRight() + getPaddingLeft() || m23569import()) {
            this.f19248super = 0;
            this.f19229extends = 0;
            this.g = 0;
            this.f = 0;
            return 0;
        }
        if (!this.d && this.e == i) {
            this.f19248super = this.g;
            return this.f;
        }
        this.e = i;
        List<Cdo.Cif> listM23605if = this.f19234if.m23605if();
        this.b = 1;
        this.a = getPaddingLeft();
        m23559case(listM23605if, i);
        int i2 = this.b;
        if (i2 != this.f19248super) {
            QQFaceViewListener qQFaceViewListener = this.f19241package;
            if (qQFaceViewListener != null) {
                qQFaceViewListener.onCalculateLinesChange(i2);
            }
            this.f19248super = this.b;
        }
        if (this.f19248super == 1) {
            this.f = this.a + getPaddingRight();
        } else {
            this.f = i;
        }
        this.g = this.f19248super;
        return this.f;
    }

    public QMUIQQFaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.QMUIQQFaceStyle);
    }

    public QMUIQQFaceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19240new = true;
        this.f19251this = -1;
        this.f19222catch = 0;
        this.f19224const = Integer.MAX_VALUE;
        this.f19230final = false;
        this.f19248super = 0;
        this.f19252throw = new HashMap<>();
        this.f19257while = false;
        this.f19236import = new Rect();
        this.f19245return = 0;
        this.f19246static = 0;
        this.f19249switch = TextUtils.TruncateAt.END;
        this.f19253throws = false;
        this.f19226default = 0;
        this.f19229extends = 0;
        this.f19231finally = 0;
        this.f19242private = Integer.MAX_VALUE;
        this.f19219abstract = null;
        this.f19225continue = false;
        this.f19247strictfp = null;
        this.f19256volatile = true;
        this.f19238interface = null;
        this.f19243protected = 0;
        this.f19254transient = 0;
        this.f19235implements = 0;
        this.f19237instanceof = null;
        this.f19250synchronized = true;
        this.a = 0;
        this.b = 0;
        this.c = 0;
        this.d = false;
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.k = false;
        this.m = -1;
        this.n = false;
        this.o = -1;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.QMUIQQFaceView, i, 0);
        this.f19231finally = -ih1.m3450new(context, 2);
        this.f19228else = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIQQFaceView_android_textSize, ih1.m3450new(context, 14));
        this.f19233goto = typedArrayObtainStyledAttributes.getColor(R.styleable.QMUIQQFaceView_android_textColor, -16777216);
        this.f19230final = typedArrayObtainStyledAttributes.getBoolean(R.styleable.QMUIQQFaceView_android_singleLine, false);
        this.f19224const = typedArrayObtainStyledAttributes.getInt(R.styleable.QMUIQQFaceView_android_maxLines, this.f19224const);
        setLineSpace(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.QMUIQQFaceView_android_lineSpacingExtra, 0));
        int i2 = typedArrayObtainStyledAttributes.getInt(R.styleable.QMUIQQFaceView_android_ellipsize, -1);
        if (i2 == 1) {
            this.f19249switch = TextUtils.TruncateAt.START;
        } else if (i2 != 2) {
            if (i2 == 3) {
                this.f19249switch = TextUtils.TruncateAt.END;
            }
            this.f19249switch = null;
        } else {
            this.f19249switch = TextUtils.TruncateAt.MIDDLE;
        }
        this.f19242private = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIQQFaceView_android_maxWidth, this.f19242private);
        this.f19254transient = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIQQFaceView_qmui_special_drawable_padding, 0);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.QMUIQQFaceView_android_text);
        if (!kh1.m4402case(string)) {
            this.f19247strictfp = new Cdo(string);
        }
        this.f19239native = typedArrayObtainStyledAttributes.getString(R.styleable.QMUIQQFaceView_qmui_more_action_text);
        this.f19244public = typedArrayObtainStyledAttributes.getColor(R.styleable.QMUIQQFaceView_qmui_more_action_color, this.f19233goto);
        typedArrayObtainStyledAttributes.recycle();
        TextPaint textPaint = new TextPaint();
        this.f19255try = textPaint;
        textPaint.setAntiAlias(true);
        this.f19255try.setTextSize(this.f19228else);
        this.f19255try.setColor(this.f19233goto);
        this.f19246static = (int) Math.ceil(this.f19255try.measureText(q));
        m23572public();
        Paint paint = new Paint();
        this.f19221case = paint;
        paint.setAntiAlias(true);
        this.f19221case.setStyle(Paint.Style.FILL);
    }
}
