package android.support.v4;

import android.view.View;
import androidx.core.view.ViewCompat;

/* loaded from: classes2.dex */
public class zh1 {

    /* renamed from: do, reason: not valid java name */
    private final View f8555do;

    /* renamed from: for, reason: not valid java name */
    private int f8557for;

    /* renamed from: if, reason: not valid java name */
    private int f8558if;

    /* renamed from: new, reason: not valid java name */
    private int f8559new;

    /* renamed from: try, reason: not valid java name */
    private int f8560try;

    /* renamed from: case, reason: not valid java name */
    private boolean f8554case = true;

    /* renamed from: else, reason: not valid java name */
    private boolean f8556else = true;

    public zh1(View view) {
        this.f8555do = view;
    }

    /* renamed from: const, reason: not valid java name */
    private void m10201const() {
        View view = this.f8555do;
        ViewCompat.offsetTopAndBottom(view, this.f8559new - (view.getTop() - this.f8558if));
        View view2 = this.f8555do;
        ViewCompat.offsetLeftAndRight(view2, this.f8560try - (view2.getLeft() - this.f8557for));
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m10202break(int i, int i2) {
        boolean z = this.f8556else;
        if (!z && !this.f8554case) {
            return false;
        }
        if (!z || !this.f8554case) {
            return z ? m10212this(i) : m10204catch(i2);
        }
        if (this.f8560try == i && this.f8559new == i2) {
            return false;
        }
        this.f8560try = i;
        this.f8559new = i2;
        m10201const();
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m10203case() {
        return this.f8554case;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m10204catch(int i) {
        if (!this.f8554case || this.f8559new == i) {
            return false;
        }
        this.f8559new = i;
        m10201const();
        return true;
    }

    /* renamed from: class, reason: not valid java name */
    public void m10205class(boolean z) {
        this.f8554case = z;
    }

    /* renamed from: do, reason: not valid java name */
    public int m10206do() {
        return this.f8557for;
    }

    /* renamed from: else, reason: not valid java name */
    public void m10207else() {
        this.f8558if = this.f8555do.getTop();
        this.f8557for = this.f8555do.getLeft();
        m10201const();
    }

    /* renamed from: for, reason: not valid java name */
    public int m10208for() {
        return this.f8560try;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m10209goto(boolean z) {
        this.f8556else = z;
    }

    /* renamed from: if, reason: not valid java name */
    public int m10210if() {
        return this.f8558if;
    }

    /* renamed from: new, reason: not valid java name */
    public int m10211new() {
        return this.f8559new;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m10212this(int i) {
        if (!this.f8556else || this.f8560try == i) {
            return false;
        }
        this.f8560try = i;
        m10201const();
        return true;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m10213try() {
        return this.f8556else;
    }
}
