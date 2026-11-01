package kotlin.ranges;

import android.support.v4.iz1;
import android.support.v4.ja2;
import android.support.v4.la2;
import android.support.v4.oc2;
import android.support.v4.rx;
import java.util.NoSuchElementException;
import kotlin.Cwhile;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u0001B\"\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0011ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\u0015\u0010\u0005\u001a\u00020\u0004H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006R\u001c\u0010\t\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\nR\u001c\u0010\f\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u000b\u0010\bR\u001c\u0010\u000e\u001a\u00020\u00048\u0002@\u0002X\u0082\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\r\u0010\b\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0014"}, d2 = {"Lkotlin/ranges/goto;", "Landroid/support/v4/la2;", "", "hasNext", "Landroid/support/v4/ja2;", "if", "()I", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "finalElement", "Z", "for", "step", "new", ES6Iterator.NEXT_METHOD, "first", "last", "", "<init>", "(IIILandroid/support/v4/rx;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.ranges.goto, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cgoto extends la2 {

    /* renamed from: do, reason: not valid java name */
    private final int f27938do;

    /* renamed from: for, reason: not valid java name */
    private final int f27939for;

    /* renamed from: if, reason: not valid java name */
    private boolean f27940if;

    /* renamed from: new, reason: not valid java name */
    private int f27941new;

    private Cgoto(int i, int i2, int i3) {
        this.f27938do = i2;
        boolean z = true;
        int iM5558for = oc2.m5558for(i, i2);
        if (i3 <= 0 ? iM5558for < 0 : iM5558for > 0) {
            z = false;
        }
        this.f27940if = z;
        this.f27939for = ja2.m3772goto(i3);
        this.f27941new = this.f27940if ? i : i2;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f27940if;
    }

    @Override // android.support.v4.la2
    /* renamed from: if */
    public int mo4635if() {
        int i = this.f27941new;
        if (i != this.f27938do) {
            this.f27941new = ja2.m3772goto(this.f27939for + i);
        } else {
            if (!this.f27940if) {
                throw new NoSuchElementException();
            }
            this.f27940if = false;
        }
        return i;
    }

    public /* synthetic */ Cgoto(int i, int i2, int i3, rx rxVar) {
        this(i, i2, i3);
    }
}
