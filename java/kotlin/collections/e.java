package kotlin.collections;

import android.support.v4.m41;
import android.support.v4.rw1;
import android.support.v4.sn1;
import android.support.v4.ub2;
import android.support.v4.w60;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Cpackage;
import kotlin.Cwhile;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.Cnew;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;
import kotlin.ranges.Ccase;
import kotlin.sequences.Cgoto;
import kotlin.sequences.Sequence;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010(\n\u0002\b\u0003\u001a\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0000\u001aD\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\u0006\"\u0004\b\u0000\u0010\u0005*\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0000\u001aH\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\f\"\u0004\b\u0000\u0010\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0000¨\u0006\u000f"}, d2 = {"", "size", "step", "Landroid/support/v4/ub2;", "do", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/Sequence;", "", "partialWindows", "reuseBuffer", "", "for", "", "iterator", "if", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class e {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @kotlin.coroutines.jvm.internal.Cif(c = "kotlin.collections.SlidingWindowKt$windowedIterator$1", f = "SlidingWindow.kt", i = {}, l = {34, 40, 49, 55, 58}, m = "invokeSuspend", n = {}, s = {})
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Landroid/support/v4/rw1;", "", "Landroid/support/v4/ub2;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.e$do, reason: invalid class name */
    public static final class Cdo<T> extends sn1 implements Function2<rw1<? super List<? extends T>>, Continuation<? super ub2>, Object> {
        public final /* synthetic */ Iterator $iterator;
        public final /* synthetic */ boolean $partialWindows;
        public final /* synthetic */ boolean $reuseBuffer;
        public final /* synthetic */ int $size;
        public final /* synthetic */ int $step;
        public int I$0;
        private /* synthetic */ Object L$0;
        public Object L$1;
        public Object L$2;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(int i, int i2, Iterator it, boolean z, boolean z2, Continuation continuation) {
            super(2, continuation);
            this.$size = i;
            this.$step = i2;
            this.$iterator = it;
            this.$reuseBuffer = z;
            this.$partialWindows = z2;
        }

        @Override // android.support.v4.e7
        @m41
        public final Continuation<ub2> create(@z41 Object obj, @m41 Continuation<?> completion) {
            Csuper.m30700throw(completion, "completion");
            Cdo cdo = new Cdo(this.$size, this.$step, this.$iterator, this.$reuseBuffer, this.$partialWindows, completion);
            cdo.L$0 = obj;
            return cdo;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Continuation<? super ub2> continuation) {
            return ((Cdo) create(obj, continuation)).invokeSuspend(ub2.f6820do);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0082  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00ac  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00b0  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00da A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00ea  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0128  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0132  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0152  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00a7 -> B:30:0x00a8). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x011b -> B:59:0x011e). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x0149 -> B:72:0x014c). Please report as a decompilation issue!!! */
        @Override // android.support.v4.e7
        @z41
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@m41 Object obj) {
            int i;
            Iterator it;
            rw1 rw1Var;
            Cdo<T> cdo;
            int i2;
            rw1 rw1Var2;
            Cdo<T> cdo2;
            ArrayList arrayList;
            Iterator it2;
            Csynchronized csynchronizedM30167this;
            Csynchronized csynchronized;
            rw1 rw1Var3;
            Object objM30408goto = Cnew.m30408goto();
            int i3 = this.label;
            if (i3 == 0) {
                Cpackage.m30783final(obj);
                rw1 rw1Var4 = (rw1) this.L$0;
                int iM30885return = Ccase.m30885return(this.$size, 1024);
                i = this.$step - this.$size;
                if (i < 0) {
                    Csynchronized csynchronized2 = new Csynchronized(iM30885return);
                    it = this.$iterator;
                    rw1Var = rw1Var4;
                    cdo = this;
                    csynchronizedM30167this = csynchronized2;
                    while (it.hasNext()) {
                    }
                    if (cdo.$partialWindows) {
                    }
                    return ub2.f6820do;
                }
                ArrayList arrayList2 = new ArrayList(iM30885return);
                i2 = 0;
                rw1Var2 = rw1Var4;
                cdo2 = this;
                arrayList = arrayList2;
                it2 = this.$iterator;
                while (it2.hasNext()) {
                }
                if (!arrayList.isEmpty()) {
                    cdo2.L$0 = null;
                    cdo2.L$1 = null;
                    cdo2.L$2 = null;
                    cdo2.label = 2;
                    if (rw1Var2.mo7186do(arrayList, cdo2) == objM30408goto) {
                    }
                }
                return ub2.f6820do;
            }
            if (i3 == 1) {
                i2 = this.I$0;
                it2 = (Iterator) this.L$2;
                arrayList = (ArrayList) this.L$1;
                rw1Var2 = (rw1) this.L$0;
                Cpackage.m30783final(obj);
                cdo2 = this;
                if (cdo2.$reuseBuffer) {
                    arrayList = new ArrayList(cdo2.$size);
                } else {
                    arrayList.clear();
                }
                i = i2;
                while (it2.hasNext()) {
                    Object next = it2.next();
                    if (i2 > 0) {
                        i2--;
                    } else {
                        arrayList.add(next);
                        if (arrayList.size() == cdo2.$size) {
                            cdo2.L$0 = rw1Var2;
                            cdo2.L$1 = arrayList;
                            cdo2.L$2 = it2;
                            cdo2.I$0 = i;
                            cdo2.label = 1;
                            if (rw1Var2.mo7186do(arrayList, cdo2) == objM30408goto) {
                                return objM30408goto;
                            }
                            i2 = i;
                            if (cdo2.$reuseBuffer) {
                            }
                            i = i2;
                            while (it2.hasNext()) {
                            }
                        }
                    }
                }
                if ((!arrayList.isEmpty()) && (cdo2.$partialWindows || arrayList.size() == cdo2.$size)) {
                    cdo2.L$0 = null;
                    cdo2.L$1 = null;
                    cdo2.L$2 = null;
                    cdo2.label = 2;
                    if (rw1Var2.mo7186do(arrayList, cdo2) == objM30408goto) {
                        return objM30408goto;
                    }
                }
                return ub2.f6820do;
            }
            if (i3 != 2) {
                if (i3 == 3) {
                    it = (Iterator) this.L$2;
                    Csynchronized csynchronized3 = (Csynchronized) this.L$1;
                    rw1Var = (rw1) this.L$0;
                    Cpackage.m30783final(obj);
                    cdo = this;
                    Csynchronized csynchronized4 = csynchronized3;
                    csynchronized4.m30165class(cdo.$step);
                    csynchronizedM30167this = csynchronized4;
                    while (it.hasNext()) {
                        csynchronizedM30167this.m30166goto(it.next());
                        if (csynchronizedM30167this.m30164catch()) {
                            int size = csynchronizedM30167this.size();
                            int i4 = cdo.$size;
                            if (size >= i4) {
                                ArrayList arrayList3 = cdo.$reuseBuffer ? csynchronizedM30167this : new ArrayList(csynchronizedM30167this);
                                cdo.L$0 = rw1Var;
                                cdo.L$1 = csynchronizedM30167this;
                                cdo.L$2 = it;
                                cdo.label = 3;
                                csynchronized4 = csynchronizedM30167this;
                                if (rw1Var.mo7186do(arrayList3, cdo) == objM30408goto) {
                                    return objM30408goto;
                                }
                                csynchronized4.m30165class(cdo.$step);
                                csynchronizedM30167this = csynchronized4;
                                while (it.hasNext()) {
                                }
                            } else {
                                csynchronizedM30167this = csynchronizedM30167this.m30167this(i4);
                            }
                        }
                    }
                    if (cdo.$partialWindows) {
                        csynchronized = csynchronizedM30167this;
                        rw1Var3 = rw1Var;
                        if (csynchronized.size() <= cdo.$step) {
                        }
                    }
                    return ub2.f6820do;
                }
                if (i3 == 4) {
                    csynchronized = (Csynchronized) this.L$1;
                    rw1Var3 = (rw1) this.L$0;
                    Cpackage.m30783final(obj);
                    cdo = this;
                    csynchronized.m30165class(cdo.$step);
                    if (csynchronized.size() <= cdo.$step) {
                        RandomAccess arrayList4 = cdo.$reuseBuffer ? csynchronized : new ArrayList(csynchronized);
                        cdo.L$0 = rw1Var3;
                        cdo.L$1 = csynchronized;
                        cdo.L$2 = null;
                        cdo.label = 4;
                        if (rw1Var3.mo7186do(arrayList4, cdo) == objM30408goto) {
                            return objM30408goto;
                        }
                        csynchronized.m30165class(cdo.$step);
                        if (csynchronized.size() <= cdo.$step) {
                            if (!csynchronized.isEmpty()) {
                                cdo.L$0 = null;
                                cdo.L$1 = null;
                                cdo.L$2 = null;
                                cdo.label = 5;
                                if (rw1Var3.mo7186do(csynchronized, cdo) == objM30408goto) {
                                    return objM30408goto;
                                }
                            }
                            return ub2.f6820do;
                        }
                    }
                } else if (i3 != 5) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }
            Cpackage.m30783final(obj);
            return ub2.f6820do;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096\u0002¨\u0006\u0004¸\u0006\u0005"}, d2 = {"kotlin/collections/e$if", "Lkotlin/sequences/Sequence;", "", "iterator", "kotlin-stdlib", "kotlin/sequences/break$do"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.e$if, reason: invalid class name */
    public static final class Cif<T> implements Sequence<List<? extends T>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Sequence f27711do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f27712for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f27713if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ boolean f27714new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ boolean f27715try;

        public Cif(Sequence sequence, int i, int i2, boolean z, boolean z2) {
            this.f27711do = sequence;
            this.f27713if = i;
            this.f27712for = i2;
            this.f27714new = z;
            this.f27715try = z2;
        }

        @Override // kotlin.sequences.Sequence
        @m41
        public Iterator<List<? extends T>> iterator() {
            return e.m30046if(this.f27711do.iterator(), this.f27713if, this.f27712for, this.f27714new, this.f27715try);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static final void m30044do(int i, int i2) {
        String str;
        if (i > 0 && i2 > 0) {
            return;
        }
        if (i != i2) {
            str = "Both size " + i + " and step " + i2 + " must be greater than zero.";
        } else {
            str = "size " + i + " must be greater than zero.";
        }
        throw new IllegalArgumentException(str.toString());
    }

    @m41
    /* renamed from: for, reason: not valid java name */
    public static final <T> Sequence<List<T>> m30045for(@m41 Sequence<? extends T> windowedSequence, int i, int i2, boolean z, boolean z2) {
        Csuper.m30700throw(windowedSequence, "$this$windowedSequence");
        m30044do(i, i2);
        return new Cif(windowedSequence, i, i2, z, z2);
    }

    @m41
    /* renamed from: if, reason: not valid java name */
    public static final <T> Iterator<List<T>> m30046if(@m41 Iterator<? extends T> iterator, int i, int i2, boolean z, boolean z2) {
        Csuper.m30700throw(iterator, "iterator");
        return !iterator.hasNext() ? w60.f7400do : Cgoto.m31080new(new Cdo(i, i2, iterator, z2, z, null));
    }
}
