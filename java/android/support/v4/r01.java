package android.support.v4;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes.dex */
public class r01 {

    /* renamed from: do, reason: not valid java name */
    private long f5573do;

    /* renamed from: for, reason: not valid java name */
    @Nullable
    private TimeInterpolator f5574for;

    /* renamed from: if, reason: not valid java name */
    private long f5575if;

    /* renamed from: new, reason: not valid java name */
    private int f5576new;

    /* renamed from: try, reason: not valid java name */
    private int f5577try;

    public r01(long j, long j2) {
        this.f5573do = 0L;
        this.f5575if = 300L;
        this.f5574for = null;
        this.f5576new = 0;
        this.f5577try = 1;
        this.f5573do = j;
        this.f5575if = j2;
    }

    /* renamed from: case, reason: not valid java name */
    private static TimeInterpolator m6719case(@NonNull ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        return ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) ? w1.f7371if : interpolator instanceof AccelerateInterpolator ? w1.f7370for : interpolator instanceof DecelerateInterpolator ? w1.f7372new : interpolator;
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public static r01 m6720if(@NonNull ValueAnimator valueAnimator) {
        r01 r01Var = new r01(valueAnimator.getStartDelay(), valueAnimator.getDuration(), m6719case(valueAnimator));
        r01Var.f5576new = valueAnimator.getRepeatCount();
        r01Var.f5577try = valueAnimator.getRepeatMode();
        return r01Var;
    }

    /* renamed from: do, reason: not valid java name */
    public void m6721do(@NonNull Animator animator) {
        animator.setStartDelay(m6723for());
        animator.setDuration(m6725new());
        animator.setInterpolator(m6726try());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(m6722else());
            valueAnimator.setRepeatMode(m6724goto());
        }
    }

    /* renamed from: else, reason: not valid java name */
    public int m6722else() {
        return this.f5576new;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r01)) {
            return false;
        }
        r01 r01Var = (r01) obj;
        if (m6723for() == r01Var.m6723for() && m6725new() == r01Var.m6725new() && m6722else() == r01Var.m6722else() && m6724goto() == r01Var.m6724goto()) {
            return m6726try().getClass().equals(r01Var.m6726try().getClass());
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public long m6723for() {
        return this.f5573do;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m6724goto() {
        return this.f5577try;
    }

    public int hashCode() {
        return (((((((((int) (m6723for() ^ (m6723for() >>> 32))) * 31) + ((int) (m6725new() ^ (m6725new() >>> 32)))) * 31) + m6726try().getClass().hashCode()) * 31) + m6722else()) * 31) + m6724goto();
    }

    /* renamed from: new, reason: not valid java name */
    public long m6725new() {
        return this.f5575if;
    }

    @NonNull
    public String toString() {
        return '\n' + getClass().getName() + MessageFormatter.DELIM_START + Integer.toHexString(System.identityHashCode(this)) + " delay: " + m6723for() + " duration: " + m6725new() + " interpolator: " + m6726try().getClass() + " repeatCount: " + m6722else() + " repeatMode: " + m6724goto() + "}\n";
    }

    @Nullable
    /* renamed from: try, reason: not valid java name */
    public TimeInterpolator m6726try() {
        TimeInterpolator timeInterpolator = this.f5574for;
        return timeInterpolator != null ? timeInterpolator : w1.f7371if;
    }

    public r01(long j, long j2, @NonNull TimeInterpolator timeInterpolator) {
        this.f5573do = 0L;
        this.f5575if = 300L;
        this.f5574for = null;
        this.f5576new = 0;
        this.f5577try = 1;
        this.f5573do = j;
        this.f5575if = j2;
        this.f5574for = timeInterpolator;
    }
}
