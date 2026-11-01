package kotlin.sequences;

import android.support.v4.c92;
import android.support.v4.gc;
import android.support.v4.hw0;
import android.support.v4.iz1;
import android.support.v4.k82;
import android.support.v4.m41;
import android.support.v4.mc0;
import android.support.v4.qb1;
import android.support.v4.rw1;
import android.support.v4.sn1;
import android.support.v4.ub2;
import android.support.v4.um0;
import android.support.v4.wp0;
import android.support.v4.yr0;
import android.support.v4.z41;
import android.support.v4.zq;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Cpackage;
import kotlin.Cwhile;
import kotlin.collections.Cclass;
import kotlin.collections.Cfinal;
import kotlin.collections.Cthrow;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\b\n\u0002\u0010\u001c\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\b\u001a.\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001H\u0087\bø\u0001\u0000\u001a\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002\u001a-\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u00002\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0007\"\u00028\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u0012\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000\u001a!\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004H\u0087\b\u001a2\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00042\u0012\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0001H\u0007\u001a\"\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0004\u001a+\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00100\u0004H\u0007¢\u0006\u0004\b\u0011\u0010\u0012\u001aE\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0013*\b\u0012\u0004\u0012\u00028\u00000\u00042\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00020\u0014H\u0002¢\u0006\u0004\b\u0015\u0010\u0016\u001a@\u0010\u0019\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00180\u0017\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0013*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00170\u0004\u001a\u001e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0007\u001a&\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u001c\u001a\u00020\u001bH\u0007\u001ab\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u001e\"\u0004\b\u0002\u0010\u00132\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00042\u0018\u0010\"\u001a\u0014\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010 2\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u00020\u0014H\u0000\u001a\u001c\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0004\u001a&\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\b\b\u0000\u0010\u0000*\u00020%2\u000e\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0001\u001a?\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\b\b\u0000\u0010\u0000*\u00020%2\b\u0010(\u001a\u0004\u0018\u00018\u00002\u0014\u0010&\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0014H\u0007¢\u0006\u0004\b)\u0010*\u001a<\u0010,\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\b\b\u0000\u0010\u0000*\u00020%2\u000e\u0010+\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00012\u0014\u0010&\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0014\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006-"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function0;", "", "iterator", "Lkotlin/sequences/Sequence;", "else", "goto", "", "elements", "public", "([Ljava/lang/Object;)Lkotlin/sequences/Sequence;", "break", "native", "defaultValue", "import", "class", "", "final", "(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;", "R", "Lkotlin/Function1;", "const", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;", "Landroid/support/v4/qb1;", "", "switch", "return", "Lkotlin/random/try;", "random", "static", "C", "source", "Lkotlin/Function2;", "", "transform", "catch", "this", "", "nextFunction", "throw", "seed", "super", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;", "seedFunction", "while", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/sequences/SequencesKt")
/* renamed from: kotlin.sequences.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak extends kotlin.sequences.Cthis {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @kotlin.coroutines.jvm.internal.Cif(c = "kotlin.sequences.SequencesKt__SequencesKt$shuffled$1", f = "Sequences.kt", i = {}, l = {145}, m = "invokeSuspend", n = {}, s = {})
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Landroid/support/v4/rw1;", "Landroid/support/v4/ub2;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.sequences.break$break, reason: invalid class name and collision with other inner class name */
    public static final class C0371break<T> extends sn1 implements Function2<rw1<? super T>, Continuation<? super ub2>, Object> {
        public final /* synthetic */ kotlin.random.Ctry $random;
        public final /* synthetic */ Sequence $this_shuffled;
        private /* synthetic */ Object L$0;
        public Object L$1;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0371break(Sequence sequence, kotlin.random.Ctry ctry, Continuation continuation) {
            super(2, continuation);
            this.$this_shuffled = sequence;
            this.$random = ctry;
        }

        @Override // android.support.v4.e7
        @m41
        public final Continuation<ub2> create(@z41 Object obj, @m41 Continuation<?> completion) {
            Csuper.m30700throw(completion, "completion");
            C0371break c0371break = new C0371break(this.$this_shuffled, this.$random, completion);
            c0371break.L$0 = obj;
            return c0371break;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Continuation<? super ub2> continuation) {
            return ((C0371break) create(obj, continuation)).invokeSuspend(ub2.f6820do);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.e7
        @z41
        public final Object invokeSuspend(@m41 Object obj) {
            List listJ2;
            rw1 rw1Var;
            Object objM30408goto = kotlin.coroutines.intrinsics.Cnew.m30408goto();
            int i = this.label;
            if (i == 0) {
                Cpackage.m30783final(obj);
                rw1 rw1Var2 = (rw1) this.L$0;
                listJ2 = Cclass.j2(this.$this_shuffled);
                rw1Var = rw1Var2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                listJ2 = (List) this.L$1;
                rw1 rw1Var3 = (rw1) this.L$0;
                Cpackage.m30783final(obj);
                rw1Var = rw1Var3;
            }
            while (!listJ2.isEmpty()) {
                int iNextInt = this.$random.nextInt(listJ2.size());
                Object objA0 = Cfinal.a0(listJ2);
                if (iNextInt < listJ2.size()) {
                    objA0 = listJ2.set(iNextInt, objA0);
                }
                this.L$0 = rw1Var;
                this.L$1 = listJ2;
                this.label = 1;
                if (rw1Var.mo7186do(objA0, this) == objM30408goto) {
                    return objM30408goto;
                }
            }
            return ub2.f6820do;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0004\n\u0002\b\u0006\u0010\u0005\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "it", "invoke", "(Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.sequences.break$case, reason: invalid class name */
    public static final class Ccase<T> extends yr0 implements Function1<T, T> {
        public static final Ccase INSTANCE = new Ccase();

        public Ccase() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final T invoke(T t) {
            return t;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096\u0002¨\u0006\u0004"}, d2 = {"kotlin/sequences/break$do", "Lkotlin/sequences/Sequence;", "", "iterator", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.sequences.break$do, reason: invalid class name */
    public static final class Cdo<T> implements Sequence<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Function0 f27960do;

        public Cdo(Function0 function0) {
            this.f27960do = function0;
        }

        @Override // kotlin.sequences.Sequence
        @m41
        public Iterator<T> iterator() {
            return (Iterator) this.f27960do.invoke();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0010\u0000\n\u0002\b\u0005\u0010\u0005\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "it", "invoke", "(Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.sequences.break$else, reason: invalid class name */
    public static final class Celse<T> extends yr0 implements Function1<T, T> {
        public final /* synthetic */ Function0 $nextFunction;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Celse(Function0 function0) {
            super(1);
            this.$nextFunction = function0;
        }

        @Override // kotlin.jvm.functions.Function1
        @z41
        public final T invoke(@m41 T it) {
            Csuper.m30700throw(it, "it");
            return (T) this.$nextFunction.invoke();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    @kotlin.coroutines.jvm.internal.Cif(c = "kotlin.sequences.SequencesKt__SequencesKt$flatMapIndexed$1", f = "Sequences.kt", i = {}, l = {332}, m = "invokeSuspend", n = {}, s = {})
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00020\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "C", "R", "Landroid/support/v4/rw1;", "Landroid/support/v4/ub2;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.sequences.break$for, reason: invalid class name */
    public static final class Cfor<R> extends sn1 implements Function2<rw1<? super R>, Continuation<? super ub2>, Object> {
        public final /* synthetic */ Function1 $iterator;
        public final /* synthetic */ Sequence $source;
        public final /* synthetic */ Function2 $transform;
        public int I$0;
        private /* synthetic */ Object L$0;
        public Object L$1;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(Sequence sequence, Function2 function2, Function1 function1, Continuation continuation) {
            super(2, continuation);
            this.$source = sequence;
            this.$transform = function2;
            this.$iterator = function1;
        }

        @Override // android.support.v4.e7
        @m41
        public final Continuation<ub2> create(@z41 Object obj, @m41 Continuation<?> completion) {
            Csuper.m30700throw(completion, "completion");
            Cfor cfor = new Cfor(this.$source, this.$transform, this.$iterator, completion);
            cfor.L$0 = obj;
            return cfor;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Continuation<? super ub2> continuation) {
            return ((Cfor) create(obj, continuation)).invokeSuspend(ub2.f6820do);
        }

        @Override // android.support.v4.e7
        @z41
        public final Object invokeSuspend(@m41 Object obj) {
            int i;
            Iterator it;
            rw1 rw1Var;
            Object objM30408goto = kotlin.coroutines.intrinsics.Cnew.m30408goto();
            int i2 = this.label;
            if (i2 == 0) {
                Cpackage.m30783final(obj);
                rw1 rw1Var2 = (rw1) this.L$0;
                i = 0;
                it = this.$source.iterator();
                rw1Var = rw1Var2;
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i = this.I$0;
                it = (Iterator) this.L$1;
                rw1Var = (rw1) this.L$0;
                Cpackage.m30783final(obj);
            }
            while (it.hasNext()) {
                Object next = it.next();
                Function2 function2 = this.$transform;
                int i3 = i + 1;
                if (i < 0) {
                    Cthrow.j();
                }
                Iterator it2 = (Iterator) this.$iterator.invoke(function2.invoke(gc.m2627case(i), next));
                this.L$0 = rw1Var;
                this.L$1 = it;
                this.I$0 = i3;
                this.label = 1;
                if (rw1Var.mo7187for(it2, this) == objM30408goto) {
                    return objM30408goto;
                }
                i = i3;
            }
            return ub2.f6820do;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0010\u0000\n\u0002\b\u0004\u0010\u0004\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "invoke", "()Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.sequences.break$goto, reason: invalid class name */
    public static final class Cgoto<T> extends yr0 implements Function0<T> {
        public final /* synthetic */ Object $seed;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cgoto(Object obj) {
            super(0);
            this.$seed = obj;
        }

        @Override // kotlin.jvm.functions.Function0
        @z41
        public final T invoke() {
            return (T) this.$seed;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096\u0002¨\u0006\u0004¸\u0006\u0005"}, d2 = {"kotlin/sequences/break$if", "Lkotlin/sequences/Sequence;", "", "iterator", "kotlin-stdlib", "kotlin/sequences/break$do"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.sequences.break$if, reason: invalid class name */
    public static final class Cif<T> implements Sequence<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Iterator f27961do;

        public Cif(Iterator it) {
            this.f27961do = it;
        }

        @Override // kotlin.sequences.Sequence
        @m41
        public Iterator<T> iterator() {
            return this.f27961do;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\b\u0003\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/Sequence;", "it", "", "invoke", "(Lkotlin/sequences/Sequence;)Ljava/util/Iterator;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.sequences.break$new, reason: invalid class name */
    public static final class Cnew<T> extends yr0 implements Function1<Sequence<? extends T>, Iterator<? extends T>> {
        public static final Cnew INSTANCE = new Cnew();

        public Cnew() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        @m41
        public final Iterator<T> invoke(@m41 Sequence<? extends T> it) {
            Csuper.m30700throw(it, "it");
            return it.iterator();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @kotlin.coroutines.jvm.internal.Cif(c = "kotlin.sequences.SequencesKt__SequencesKt$ifEmpty$1", f = "Sequences.kt", i = {}, l = {69, 71}, m = "invokeSuspend", n = {}, s = {})
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Landroid/support/v4/rw1;", "Landroid/support/v4/ub2;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.sequences.break$this, reason: invalid class name */
    public static final class Cthis<T> extends sn1 implements Function2<rw1<? super T>, Continuation<? super ub2>, Object> {
        public final /* synthetic */ Function0 $defaultValue;
        public final /* synthetic */ Sequence $this_ifEmpty;
        private /* synthetic */ Object L$0;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cthis(Sequence sequence, Function0 function0, Continuation continuation) {
            super(2, continuation);
            this.$this_ifEmpty = sequence;
            this.$defaultValue = function0;
        }

        @Override // android.support.v4.e7
        @m41
        public final Continuation<ub2> create(@z41 Object obj, @m41 Continuation<?> completion) {
            Csuper.m30700throw(completion, "completion");
            Cthis cthis = new Cthis(this.$this_ifEmpty, this.$defaultValue, completion);
            cthis.L$0 = obj;
            return cthis;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Continuation<? super ub2> continuation) {
            return ((Cthis) create(obj, continuation)).invokeSuspend(ub2.f6820do);
        }

        @Override // android.support.v4.e7
        @z41
        public final Object invokeSuspend(@m41 Object obj) {
            Object objM30408goto = kotlin.coroutines.intrinsics.Cnew.m30408goto();
            int i = this.label;
            if (i == 0) {
                Cpackage.m30783final(obj);
                rw1 rw1Var = (rw1) this.L$0;
                Iterator<? extends T> it = this.$this_ifEmpty.iterator();
                if (it.hasNext()) {
                    this.label = 1;
                    if (rw1Var.mo7187for(it, this) == objM30408goto) {
                        return objM30408goto;
                    }
                } else {
                    Sequence<? extends T> sequence = (Sequence) this.$defaultValue.invoke();
                    this.label = 2;
                    if (rw1Var.m7189new(sequence, this) == objM30408goto) {
                        return objM30408goto;
                    }
                }
            } else {
                if (i != 1 && i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                Cpackage.m30783final(obj);
            }
            return ub2.f6820do;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u001c\n\u0000\n\u0002\u0010(\n\u0002\b\u0003\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "it", "", "invoke", "(Ljava/lang/Iterable;)Ljava/util/Iterator;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.sequences.break$try, reason: invalid class name */
    public static final class Ctry<T> extends yr0 implements Function1<Iterable<? extends T>, Iterator<? extends T>> {
        public static final Ctry INSTANCE = new Ctry();

        public Ctry() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        @m41
        public final Iterator<T> invoke(@m41 Iterable<? extends T> it) {
            Csuper.m30700throw(it, "it");
            return it.iterator();
        }
    }

    @m41
    /* renamed from: break, reason: not valid java name */
    public static <T> Sequence<T> m31014break() {
        return kotlin.sequences.Cnew.f28009do;
    }

    @m41
    /* renamed from: catch, reason: not valid java name */
    public static final <T, C, R> Sequence<R> m31015catch(@m41 Sequence<? extends T> source, @m41 Function2<? super Integer, ? super T, ? extends C> transform, @m41 Function1<? super C, ? extends Iterator<? extends R>> iterator) {
        Csuper.m30700throw(source, "source");
        Csuper.m30700throw(transform, "transform");
        Csuper.m30700throw(iterator, "iterator");
        return kotlin.sequences.Cgoto.m31081try(new Cfor(source, transform, iterator, null));
    }

    @m41
    /* renamed from: class, reason: not valid java name */
    public static final <T> Sequence<T> m31016class(@m41 Sequence<? extends Sequence<? extends T>> flatten) {
        Csuper.m30700throw(flatten, "$this$flatten");
        return m31017const(flatten, Cnew.INSTANCE);
    }

    /* renamed from: const, reason: not valid java name */
    private static final <T, R> Sequence<R> m31017const(Sequence<? extends T> sequence, Function1<? super T, ? extends Iterator<? extends R>> function1) {
        return sequence instanceof k82 ? ((k82) sequence).m4286for(function1) : new mc0(sequence, Ccase.INSTANCE, function1);
    }

    @um0
    /* renamed from: else, reason: not valid java name */
    private static final <T> Sequence<T> m31018else(Function0<? extends Iterator<? extends T>> function0) {
        return new Cdo(function0);
    }

    @m41
    @wp0(name = "flattenSequenceOfIterable")
    /* renamed from: final, reason: not valid java name */
    public static final <T> Sequence<T> m31019final(@m41 Sequence<? extends Iterable<? extends T>> flatten) {
        Csuper.m30700throw(flatten, "$this$flatten");
        return m31017const(flatten, Ctry.INSTANCE);
    }

    @m41
    /* renamed from: goto, reason: not valid java name */
    public static final <T> Sequence<T> m31020goto(@m41 Iterator<? extends T> asSequence) {
        Csuper.m30700throw(asSequence, "$this$asSequence");
        return m31028this(new Cif(asSequence));
    }

    @m41
    @iz1(version = "1.3")
    /* renamed from: import, reason: not valid java name */
    public static final <T> Sequence<T> m31021import(@m41 Sequence<? extends T> ifEmpty, @m41 Function0<? extends Sequence<? extends T>> defaultValue) {
        Csuper.m30700throw(ifEmpty, "$this$ifEmpty");
        Csuper.m30700throw(defaultValue, "defaultValue");
        return kotlin.sequences.Cgoto.m31081try(new Cthis(ifEmpty, defaultValue, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @iz1(version = "1.3")
    @um0
    /* renamed from: native, reason: not valid java name */
    private static final <T> Sequence<T> m31022native(Sequence<? extends T> sequence) {
        return sequence != 0 ? sequence : m31014break();
    }

    @m41
    /* renamed from: public, reason: not valid java name */
    public static final <T> Sequence<T> m31023public(@m41 T... elements) {
        Csuper.m30700throw(elements, "elements");
        return elements.length == 0 ? m31014break() : Cclass.u4(elements);
    }

    @m41
    @iz1(version = "1.4")
    /* renamed from: return, reason: not valid java name */
    public static final <T> Sequence<T> m31024return(@m41 Sequence<? extends T> shuffled) {
        Csuper.m30700throw(shuffled, "$this$shuffled");
        return m31025static(shuffled, kotlin.random.Ctry.Default);
    }

    @m41
    @iz1(version = "1.4")
    /* renamed from: static, reason: not valid java name */
    public static final <T> Sequence<T> m31025static(@m41 Sequence<? extends T> shuffled, @m41 kotlin.random.Ctry random) {
        Csuper.m30700throw(shuffled, "$this$shuffled");
        Csuper.m30700throw(random, "random");
        return kotlin.sequences.Cgoto.m31081try(new C0371break(shuffled, random, null));
    }

    @m41
    @hw0
    /* renamed from: super, reason: not valid java name */
    public static <T> Sequence<T> m31026super(@z41 T t, @m41 Function1<? super T, ? extends T> nextFunction) {
        Csuper.m30700throw(nextFunction, "nextFunction");
        return t == null ? kotlin.sequences.Cnew.f28009do : new kotlin.sequences.Ctry(new Cgoto(t), nextFunction);
    }

    @m41
    /* renamed from: switch, reason: not valid java name */
    public static final <T, R> qb1<List<T>, List<R>> m31027switch(@m41 Sequence<? extends qb1<? extends T, ? extends R>> unzip) {
        Csuper.m30700throw(unzip, "$this$unzip");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (qb1<? extends T, ? extends R> qb1Var : unzip) {
            arrayList.add(qb1Var.getFirst());
            arrayList2.add(qb1Var.getSecond());
        }
        return c92.m819do(arrayList, arrayList2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m41
    /* renamed from: this, reason: not valid java name */
    public static <T> Sequence<T> m31028this(@m41 Sequence<? extends T> constrainOnce) {
        Csuper.m30700throw(constrainOnce, "$this$constrainOnce");
        return constrainOnce instanceof zq ? constrainOnce : new zq(constrainOnce);
    }

    @m41
    /* renamed from: throw, reason: not valid java name */
    public static final <T> Sequence<T> m31029throw(@m41 Function0<? extends T> nextFunction) {
        Csuper.m30700throw(nextFunction, "nextFunction");
        return m31028this(new kotlin.sequences.Ctry(nextFunction, new Celse(nextFunction)));
    }

    @m41
    /* renamed from: while, reason: not valid java name */
    public static <T> Sequence<T> m31030while(@m41 Function0<? extends T> seedFunction, @m41 Function1<? super T, ? extends T> nextFunction) {
        Csuper.m30700throw(seedFunction, "seedFunction");
        Csuper.m30700throw(nextFunction, "nextFunction");
        return new kotlin.sequences.Ctry(seedFunction, nextFunction);
    }
}
