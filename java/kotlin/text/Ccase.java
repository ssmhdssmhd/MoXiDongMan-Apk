package kotlin.text;

import android.support.v4.dn0;
import android.support.v4.m41;
import android.support.v4.qb1;
import android.support.v4.z41;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.Sequence;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0000\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B[\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012:\u0010\u0017\u001a6\u0012\u0004\u0012\u00020\u0005\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\u00130\u000f¢\u0006\u0002\b\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0096\u0002R\u0016\u0010\b\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u000e\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000bRJ\u0010\u0017\u001a6\u0012\u0004\u0012\u00020\u0005\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\u00130\u000f¢\u0006\u0002\b\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lkotlin/text/case;", "Lkotlin/sequences/Sequence;", "Landroid/support/v4/dn0;", "", "iterator", "", "do", "Ljava/lang/CharSequence;", "input", "", "if", OptRuntime.GeneratorState.resumptionPoint_TYPE, "startIndex", "for", "limit", "Lkotlin/Function2;", "Landroid/support/v4/xb1;", "name", "currentIndex", "Landroid/support/v4/qb1;", "Landroid/support/v4/w90;", "new", "Lkotlin/jvm/functions/Function2;", "getNextMatch", "<init>", "(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.text.case, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccase implements Sequence<dn0> {

    /* renamed from: do, reason: not valid java name */
    private final CharSequence f28022do;

    /* renamed from: for, reason: not valid java name */
    private final int f28023for;

    /* renamed from: if, reason: not valid java name */
    private final int f28024if;

    /* renamed from: new, reason: not valid java name */
    private final Function2<CharSequence, Integer, qb1<Integer, Integer>> f28025new;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0016\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\t\u0010\u0005\u001a\u00020\u0002H\u0096\u0002J\t\u0010\u0007\u001a\u00020\u0006H\u0096\u0002R\"\u0010\u000e\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0012\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\t\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\"\u0010\u0015\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\t\u001a\u0004\b\u0013\u0010\u000b\"\u0004\b\u0014\u0010\rR\"\u0010\u0017\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\t\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0016\u0010\rR$\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"kotlin/text/case$do", "", "Landroid/support/v4/dn0;", "Landroid/support/v4/ub2;", "do", "else", "", "hasNext", "", OptRuntime.GeneratorState.resumptionPoint_TYPE, "case", "()I", "class", "(I)V", "nextState", "if", "for", "this", "currentStartIndex", "try", "catch", "nextSearchIndex", "goto", "counter", "nextItem", "Landroid/support/v4/dn0;", "new", "()Landroid/support/v4/dn0;", "break", "(Landroid/support/v4/dn0;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.text.case$do, reason: invalid class name */
    public static final class Cdo implements Iterator<dn0>, KMappedMarker {

        /* renamed from: do, reason: not valid java name */
        private int f28027do = -1;

        /* renamed from: for, reason: not valid java name */
        private int f28028for;

        /* renamed from: if, reason: not valid java name */
        private int f28029if;

        /* renamed from: new, reason: not valid java name */
        @z41
        private dn0 f28030new;

        /* renamed from: try, reason: not valid java name */
        private int f28031try;

        public Cdo() {
            int iM30881package = kotlin.ranges.Ccase.m30881package(Ccase.this.f28024if, 0, Ccase.this.f28022do.length());
            this.f28029if = iM30881package;
            this.f28028for = iM30881package;
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
        /* renamed from: do, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private final void m31126do() {
            qb1 qb1Var;
            if (this.f28028for < 0) {
                this.f28027do = 0;
                this.f28030new = null;
                return;
            }
            if (Ccase.this.f28023for > 0) {
                int i = this.f28031try + 1;
                this.f28031try = i;
                if (i >= Ccase.this.f28023for) {
                    this.f28030new = new dn0(this.f28029if, Cstatic.v2(Ccase.this.f28022do));
                    this.f28028for = -1;
                } else if (this.f28028for <= Ccase.this.f28022do.length() && (qb1Var = (qb1) Ccase.this.f28025new.invoke(Ccase.this.f28022do, Integer.valueOf(this.f28028for))) != null) {
                    int iIntValue = ((Number) qb1Var.component1()).intValue();
                    int iIntValue2 = ((Number) qb1Var.component2()).intValue();
                    this.f28030new = kotlin.ranges.Ccase.A0(this.f28029if, iIntValue);
                    int i2 = iIntValue + iIntValue2;
                    this.f28029if = i2;
                    this.f28028for = i2 + (iIntValue2 == 0 ? 1 : 0);
                } else {
                    this.f28030new = new dn0(this.f28029if, Cstatic.v2(Ccase.this.f28022do));
                    this.f28028for = -1;
                }
            }
            this.f28027do = 1;
        }

        /* renamed from: break, reason: not valid java name */
        public final void m31127break(@z41 dn0 dn0Var) {
            this.f28030new = dn0Var;
        }

        /* renamed from: case, reason: not valid java name */
        public final int m31128case() {
            return this.f28027do;
        }

        /* renamed from: catch, reason: not valid java name */
        public final void m31129catch(int i) {
            this.f28028for = i;
        }

        /* renamed from: class, reason: not valid java name */
        public final void m31130class(int i) {
            this.f28027do = i;
        }

        @Override // java.util.Iterator
        @m41
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public dn0 next() {
            if (this.f28027do == -1) {
                m31126do();
            }
            if (this.f28027do == 0) {
                throw new NoSuchElementException();
            }
            dn0 dn0Var = this.f28030new;
            Objects.requireNonNull(dn0Var, "null cannot be cast to non-null type kotlin.ranges.IntRange");
            this.f28030new = null;
            this.f28027do = -1;
            return dn0Var;
        }

        /* renamed from: for, reason: not valid java name */
        public final int m31132for() {
            return this.f28029if;
        }

        /* renamed from: goto, reason: not valid java name */
        public final void m31133goto(int i) {
            this.f28031try = i;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f28027do == -1) {
                m31126do();
            }
            return this.f28027do == 1;
        }

        /* renamed from: if, reason: not valid java name */
        public final int m31134if() {
            return this.f28031try;
        }

        @z41
        /* renamed from: new, reason: not valid java name */
        public final dn0 m31135new() {
            return this.f28030new;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        /* renamed from: this, reason: not valid java name */
        public final void m31136this(int i) {
            this.f28029if = i;
        }

        /* renamed from: try, reason: not valid java name */
        public final int m31137try() {
            return this.f28028for;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Ccase(@m41 CharSequence input, int i, int i2, @m41 Function2<? super CharSequence, ? super Integer, qb1<Integer, Integer>> getNextMatch) {
        Csuper.m30700throw(input, "input");
        Csuper.m30700throw(getNextMatch, "getNextMatch");
        this.f28022do = input;
        this.f28024if = i;
        this.f28023for = i2;
        this.f28025new = getNextMatch;
    }

    @Override // kotlin.sequences.Sequence
    @m41
    public Iterator<dn0> iterator() {
        return new Cdo();
    }
}
