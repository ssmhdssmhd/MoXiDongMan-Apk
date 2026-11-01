package android.support.v4;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.LayoutRes;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.layout.IQMUILayout;
import com.qmuiteam.qmui.layout.QMUIFrameLayout;
import com.qmuiteam.qmui.widget.popup.QMUIBasePopup;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
public class rh1 extends QMUIBasePopup {

    /* renamed from: abstract, reason: not valid java name */
    public static final int f5791abstract = 0;

    /* renamed from: continue, reason: not valid java name */
    public static final int f5792continue = 1;

    /* renamed from: extends, reason: not valid java name */
    public static final int f5793extends = 1;

    /* renamed from: finally, reason: not valid java name */
    public static final int f5794finally = 2;

    /* renamed from: package, reason: not valid java name */
    public static final int f5795package = 3;

    /* renamed from: private, reason: not valid java name */
    public static final int f5796private = 4;

    /* renamed from: strictfp, reason: not valid java name */
    public static final int f5797strictfp = 2;

    /* renamed from: const, reason: not valid java name */
    public ImageView f5798const;

    /* renamed from: default, reason: not valid java name */
    private int f5799default;

    /* renamed from: final, reason: not valid java name */
    public ImageView f5800final;

    /* renamed from: import, reason: not valid java name */
    public int f5801import;

    /* renamed from: native, reason: not valid java name */
    public int f5802native;

    /* renamed from: public, reason: not valid java name */
    private int f5803public;

    /* renamed from: return, reason: not valid java name */
    private int f5804return;

    /* renamed from: static, reason: not valid java name */
    private int f5805static;

    /* renamed from: super, reason: not valid java name */
    public int f5806super;

    /* renamed from: switch, reason: not valid java name */
    private int f5807switch;

    /* renamed from: throw, reason: not valid java name */
    public int f5808throw;

    /* renamed from: throws, reason: not valid java name */
    private int f5809throws;

    /* renamed from: while, reason: not valid java name */
    public int f5810while;

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: android.support.v4.rh1$do, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cdo {
    }

    public rh1(Context context) {
        this(context, 2);
    }

    /* renamed from: finally, reason: not valid java name */
    private void m6971finally(int i, int i2) {
        ImageView imageView = this.f5798const;
        if (imageView != null) {
            i2 -= imageView.getMeasuredWidth() / 2;
        }
        boolean z = this.f5808throw == 0;
        int i3 = this.f5806super;
        if (i3 == 1) {
            this.f19873if.setAnimationStyle(z ? R.style.QMUI_Animation_PopUpMenu_Left : R.style.QMUI_Animation_PopDownMenu_Left);
            return;
        }
        if (i3 == 2) {
            this.f19873if.setAnimationStyle(z ? R.style.QMUI_Animation_PopUpMenu_Right : R.style.QMUI_Animation_PopDownMenu_Right);
            return;
        }
        if (i3 == 3) {
            this.f19873if.setAnimationStyle(z ? R.style.QMUI_Animation_PopUpMenu_Center : R.style.QMUI_Animation_PopDownMenu_Center);
            return;
        }
        if (i3 != 4) {
            return;
        }
        int i4 = i / 4;
        if (i2 <= i4) {
            this.f19873if.setAnimationStyle(z ? R.style.QMUI_Animation_PopUpMenu_Left : R.style.QMUI_Animation_PopDownMenu_Left);
        } else if (i2 <= i4 || i2 >= i4 * 3) {
            this.f19873if.setAnimationStyle(z ? R.style.QMUI_Animation_PopUpMenu_Right : R.style.QMUI_Animation_PopDownMenu_Right);
        } else {
            this.f19873if.setAnimationStyle(z ? R.style.QMUI_Animation_PopUpMenu_Center : R.style.QMUI_Animation_PopDownMenu_Center);
        }
    }

    /* renamed from: interface, reason: not valid java name */
    private void m6972interface(View view, boolean z) {
        if (view != null) {
            view.setVisibility(z ? 0 : 4);
        }
    }

    /* renamed from: protected, reason: not valid java name */
    private void m6973protected() {
        ImageView imageView;
        int i = this.f5808throw;
        if (i == 0) {
            m6972interface(this.f5800final, true);
            m6972interface(this.f5798const, false);
            imageView = this.f5800final;
        } else if (i != 1) {
            if (i == 2) {
                m6972interface(this.f5800final, false);
                m6972interface(this.f5798const, false);
            }
            imageView = null;
        } else {
            m6972interface(this.f5798const, true);
            m6972interface(this.f5800final, false);
            imageView = this.f5798const;
        }
        if (imageView != null) {
            int measuredWidth = this.f5798const.getMeasuredWidth();
            ((ViewGroup.MarginLayoutParams) imageView.getLayoutParams()).leftMargin = (this.f5802native - this.f5810while) - (measuredWidth / 2);
        }
    }

    /* renamed from: static, reason: not valid java name */
    private void m6974static(View view) {
        if (view == null) {
            Point point = this.f19875this;
            this.f5810while = (point.x - this.f19868catch) / 2;
            this.f5801import = (point.y - this.f19866break) / 2;
            this.f5808throw = 2;
            return;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int width = iArr[0] + (view.getWidth() / 2);
        this.f5802native = width;
        int i = this.f19875this.x;
        if (width < i / 2) {
            int i2 = this.f19868catch;
            int i3 = width - (i2 / 2);
            int i4 = this.f5803public;
            if (i3 > i4) {
                this.f5810while = width - (i2 / 2);
            } else {
                this.f5810while = i4;
            }
        } else {
            int i5 = this.f19868catch;
            int i6 = (i5 / 2) + width;
            int i7 = this.f5803public;
            if (i6 < i - i7) {
                this.f5810while = width - (i5 / 2);
            } else {
                this.f5810while = (i - i7) - i5;
            }
        }
        int i8 = this.f5805static;
        this.f5808throw = i8;
        if (i8 == 0) {
            int i9 = iArr[1] - this.f19866break;
            this.f5801import = i9;
            if (i9 < this.f5804return) {
                this.f5801import = iArr[1] + view.getHeight();
                this.f5808throw = 1;
                return;
            }
            return;
        }
        if (i8 != 1) {
            if (i8 != 2) {
                return;
            }
            this.f5801import = iArr[1];
            return;
        }
        int height = iArr[1] + view.getHeight();
        this.f5801import = height;
        int i10 = this.f19875this.y - this.f5804return;
        int i11 = this.f19866break;
        if (height > i10 - i11) {
            this.f5801import = iArr[1] - i11;
            this.f5808throw = 0;
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m6975abstract(int i) {
        this.f5807switch = i;
    }

    @Override // com.qmuiteam.qmui.widget.popup.QMUIBasePopup
    /* renamed from: class, reason: not valid java name */
    public Point mo6976class(View view, View view2) {
        m6974static(view2);
        m6973protected();
        m6971finally(this.f19875this.x, this.f5802native);
        int i = this.f5808throw;
        return new Point(this.f5810while + this.f5807switch, this.f5801import + (i == 0 ? this.f5809throws : i == 1 ? this.f5799default : 0));
    }

    /* renamed from: continue, reason: not valid java name */
    public void m6977continue(int i) {
        this.f5799default = i;
    }

    /* renamed from: default, reason: not valid java name */
    public int m6978default(Context context) {
        return ih1.m3450new(context, 5);
    }

    /* renamed from: extends, reason: not valid java name */
    public void m6979extends(int i) {
        this.f5806super = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.qmuiteam.qmui.widget.popup.QMUIBasePopup
    /* renamed from: import, reason: not valid java name */
    public void mo6980import(View view) {
        Drawable background = view.getBackground();
        QMUIFrameLayout qMUIFrameLayout = view;
        if (background != null) {
            if (view instanceof IQMUILayout) {
                ((IQMUILayout) view).setRadius(m6978default(this.f19869do));
                qMUIFrameLayout = view;
            } else {
                QMUIFrameLayout qMUIFrameLayout2 = new QMUIFrameLayout(this.f19869do);
                qMUIFrameLayout2.setRadius(m6978default(this.f19869do));
                qMUIFrameLayout2.addView(view);
                qMUIFrameLayout = qMUIFrameLayout2;
            }
        }
        FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f19869do).inflate(m6986throws(), (ViewGroup) null, false);
        this.f5800final = (ImageView) frameLayout.findViewById(R.id.arrow_down);
        this.f5798const = (ImageView) frameLayout.findViewById(R.id.arrow_up);
        ((FrameLayout) frameLayout.findViewById(R.id.box)).addView(qMUIFrameLayout);
        super.mo6980import(frameLayout);
    }

    /* renamed from: package, reason: not valid java name */
    public void m6981package(int i) {
        this.f5803public = i;
    }

    /* renamed from: private, reason: not valid java name */
    public void m6982private(int i) {
        this.f5804return = i;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m6983strictfp(int i) {
        this.f5809throws = i;
    }

    @Override // com.qmuiteam.qmui.widget.popup.QMUIBasePopup
    /* renamed from: super, reason: not valid java name */
    public void mo6984super() {
    }

    /* renamed from: switch, reason: not valid java name */
    public ViewGroup.LayoutParams m6985switch(int i, int i2) {
        return new FrameLayout.LayoutParams(i, i2);
    }

    @LayoutRes
    /* renamed from: throws, reason: not valid java name */
    public int m6986throws() {
        return R.layout.qmui_popup_layout;
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m6987volatile(int i) {
        this.f5805static = i;
    }

    public rh1(Context context, int i) {
        super(context);
        this.f5810while = -1;
        this.f5801import = -1;
        this.f5803public = 0;
        this.f5804return = 0;
        this.f5807switch = 0;
        this.f5809throws = 0;
        this.f5799default = 0;
        this.f5806super = 4;
        this.f5805static = i;
        this.f5808throw = i;
    }
}
