package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0003¢\u0006\u0004\b\u0016\u0010\u0014J\u0013\u0010\u0004\u001a\u00020\u0003*\u00028\u0000H$¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000¢\u0006\u0004\b\b\u0010\tJ\b\u0010\n\u001a\u00020\u0003H\u0004J\u001f\u0010\r\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00028\u00002\u0006\u0010\f\u001a\u00028\u0000H\u0004¢\u0006\u0004\b\r\u0010\u000eR\"\u0010\u000f\u001a\u00020\u00038\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Landroid/support/v4/gf1;", "", ExifInterface.GPS_DIRECTION_TRUE, "", "for", "(Ljava/lang/Object;)I", "spreadArgument", "Landroid/support/v4/ub2;", "do", "(Ljava/lang/Object;)V", "case", "values", "result", "else", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", od1.f4551case, OptRuntime.GeneratorState.resumptionPoint_TYPE, "if", "()I", "try", "(I)V", "size", "<init>", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public abstract class gf1<T> {

    /* renamed from: do, reason: not valid java name */
    private int f2111do;

    /* renamed from: for, reason: not valid java name */
    private final int f2112for;

    /* renamed from: if, reason: not valid java name */
    private final T[] f2113if;

    public gf1(int i) {
        this.f2112for = i;
        this.f2113if = (T[]) new Object[i];
    }

    /* renamed from: new, reason: not valid java name */
    private static /* synthetic */ void m2657new() {
    }

    /* renamed from: case, reason: not valid java name */
    public final int m2658case() {
        int i = this.f2112for - 1;
        int iMo507for = 0;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                T t = this.f2113if[i2];
                iMo507for += t != null ? mo507for(t) : 1;
                if (i2 == i) {
                    break;
                }
                i2++;
            }
        }
        return iMo507for;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2659do(@m41 T spreadArgument) {
        Csuper.m30700throw(spreadArgument, "spreadArgument");
        T[] tArr = this.f2113if;
        int i = this.f2111do;
        this.f2111do = i + 1;
        tArr[i] = spreadArgument;
    }

    @m41
    /* renamed from: else, reason: not valid java name */
    public final T m2660else(@m41 T values, @m41 T result) {
        int i;
        Csuper.m30700throw(values, "values");
        Csuper.m30700throw(result, "result");
        int i2 = this.f2112for - 1;
        int i3 = 0;
        if (i2 >= 0) {
            int i4 = 0;
            int i5 = 0;
            i = 0;
            while (true) {
                T t = this.f2113if[i4];
                if (t != null) {
                    if (i5 < i4) {
                        int i6 = i4 - i5;
                        System.arraycopy(values, i5, result, i, i6);
                        i += i6;
                    }
                    int iMo507for = mo507for(t);
                    System.arraycopy(t, 0, result, i, iMo507for);
                    i += iMo507for;
                    i5 = i4 + 1;
                }
                if (i4 == i2) {
                    break;
                }
                i4++;
            }
            i3 = i5;
        } else {
            i = 0;
        }
        int i7 = this.f2112for;
        if (i3 < i7) {
            System.arraycopy(values, i3, result, i, i7 - i3);
        }
        return result;
    }

    /* renamed from: for */
    public abstract int mo507for(@m41 T t);

    /* renamed from: if, reason: not valid java name */
    public final int m2661if() {
        return this.f2111do;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m2662try(int i) {
        this.f2111do = i;
    }
}
