package kotlin.coroutines.intrinsics;

import android.support.v4.e7;
import android.support.v4.gx;
import android.support.v4.iz1;
import android.support.v4.k92;
import android.support.v4.m41;
import android.support.v4.rn1;
import android.support.v4.ub2;
import android.support.v4.um0;
import android.support.v4.v60;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import java.util.Objects;
import kotlin.Cpackage;
import kotlin.Cwhile;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.optimizer.OptRuntime;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u001aC\u0010\u0005\u001a\u0004\u0018\u00010\u0003\"\u0004\b\u0000\u0010\u0000*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\\\u0010\u000b\u001a\u0004\u0018\u00010\u0003\"\u0004\b\u0000\u0010\u0007\"\u0004\b\u0001\u0010\u0000*#\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\b¢\u0006\u0002\b\t2\u0006\u0010\n\u001a\u00028\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001ap\u0010\u0010\u001a\u0004\u0018\u00010\u0003\"\u0004\b\u0000\u0010\u0007\"\u0004\b\u0001\u0010\r\"\u0004\b\u0002\u0010\u0000*)\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000e¢\u0006\u0002\b\t2\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00028\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00020\u0002H\u0081\bø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001aF\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0002\"\u0004\b\u0000\u0010\u0000*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a_\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00120\u0002\"\u0004\b\u0000\u0010\u0007\"\u0004\b\u0001\u0010\u0000*#\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\b¢\u0006\u0002\b\t2\u0006\u0010\n\u001a\u00028\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u001e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0007\u001aH\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00120\u0002\"\u0004\b\u0000\u0010\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u001c\b\u0004\u0010\u0018\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001H\u0083\b¢\u0006\u0004\b\u0019\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "completion", "try", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "R", "Lkotlin/Function2;", "Landroid/support/v4/w90;", "receiver", "case", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "P", "Lkotlin/Function3;", "param", "else", "(Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroid/support/v4/ub2;", "if", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "for", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "new", "block", "do", "(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Lkotlin/coroutines/Continuation;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/coroutines/intrinsics/IntrinsicsKt")
/* renamed from: kotlin.coroutines.intrinsics.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\b\n\u0018\u00002\u00020\u0001J$\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u0014ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n¸\u0006\u000b"}, d2 = {"kotlin/coroutines/intrinsics/for$case", "Lkotlin/coroutines/jvm/internal/do;", "Landroid/support/v4/vn1;", "", "result", "invokeSuspend", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "label", OptRuntime.GeneratorState.resumptionPoint_TYPE, "kotlin-stdlib", "kotlin/coroutines/intrinsics/for$if"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.coroutines.intrinsics.for$case, reason: invalid class name */
    public static final class Ccase extends kotlin.coroutines.jvm.internal.Cdo {
        public final /* synthetic */ Continuation $completion;
        public final /* synthetic */ CoroutineContext $context;
        public final /* synthetic */ Object $receiver$inlined;
        public final /* synthetic */ Function2 $this_createCoroutineUnintercepted$inlined;
        private int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ccase(Continuation continuation, CoroutineContext coroutineContext, Continuation continuation2, CoroutineContext coroutineContext2, Function2 function2, Object obj) {
            super(continuation2, coroutineContext2);
            this.$completion = continuation;
            this.$context = coroutineContext;
            this.$this_createCoroutineUnintercepted$inlined = function2;
            this.$receiver$inlined = obj;
        }

        @Override // android.support.v4.e7
        @z41
        public Object invokeSuspend(@m41 Object obj) {
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("This coroutine had already completed".toString());
                }
                this.label = 2;
                Cpackage.m30783final(obj);
                return obj;
            }
            this.label = 1;
            Cpackage.m30783final(obj);
            Function2 function2 = this.$this_createCoroutineUnintercepted$inlined;
            Objects.requireNonNull(function2, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            return ((Function2) k92.m4335while(function2, 2)).invoke(this.$receiver$inlined, this);
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\b\n\u0018\u00002\u00020\u0001J$\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u0014ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, d2 = {"kotlin/coroutines/intrinsics/for$do", "Landroid/support/v4/rn1;", "Landroid/support/v4/vn1;", "", "result", "invokeSuspend", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "label", OptRuntime.GeneratorState.resumptionPoint_TYPE, "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.coroutines.intrinsics.for$do, reason: invalid class name */
    public static final class Cdo extends rn1 {
        public final /* synthetic */ Function1 $block;
        public final /* synthetic */ Continuation $completion;
        private int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(Function1 function1, Continuation continuation, Continuation continuation2) {
            super(continuation2);
            this.$block = function1;
            this.$completion = continuation;
        }

        @Override // android.support.v4.e7
        @z41
        public Object invokeSuspend(@m41 Object obj) {
            int i = this.label;
            if (i == 0) {
                this.label = 1;
                Cpackage.m30783final(obj);
                return this.$block.invoke(this);
            }
            if (i != 1) {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.label = 2;
            Cpackage.m30783final(obj);
            return obj;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\b\n\u0018\u00002\u00020\u0001J$\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u0014ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n¸\u0006\u000b"}, d2 = {"kotlin/coroutines/intrinsics/for$for", "Landroid/support/v4/rn1;", "Landroid/support/v4/vn1;", "", "result", "invokeSuspend", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "label", OptRuntime.GeneratorState.resumptionPoint_TYPE, "kotlin-stdlib", "kotlin/coroutines/intrinsics/for$do"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.coroutines.intrinsics.for$for, reason: invalid class name and collision with other inner class name */
    public static final class C0365for extends rn1 {
        public final /* synthetic */ Continuation $completion;
        public final /* synthetic */ Function1 $this_createCoroutineUnintercepted$inlined;
        private int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0365for(Continuation continuation, Continuation continuation2, Function1 function1) {
            super(continuation2);
            this.$completion = continuation;
            this.$this_createCoroutineUnintercepted$inlined = function1;
        }

        @Override // android.support.v4.e7
        @z41
        public Object invokeSuspend(@m41 Object obj) {
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("This coroutine had already completed".toString());
                }
                this.label = 2;
                Cpackage.m30783final(obj);
                return obj;
            }
            this.label = 1;
            Cpackage.m30783final(obj);
            Function1 function1 = this.$this_createCoroutineUnintercepted$inlined;
            Objects.requireNonNull(function1, "null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            return ((Function1) k92.m4335while(function1, 1)).invoke(this);
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\b\n\u0018\u00002\u00020\u0001J$\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u0014ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, d2 = {"kotlin/coroutines/intrinsics/for$if", "Lkotlin/coroutines/jvm/internal/do;", "Landroid/support/v4/vn1;", "", "result", "invokeSuspend", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "label", OptRuntime.GeneratorState.resumptionPoint_TYPE, "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.coroutines.intrinsics.for$if, reason: invalid class name */
    public static final class Cif extends kotlin.coroutines.jvm.internal.Cdo {
        public final /* synthetic */ Function1 $block;
        public final /* synthetic */ Continuation $completion;
        public final /* synthetic */ CoroutineContext $context;
        private int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(Function1 function1, Continuation continuation, CoroutineContext coroutineContext, Continuation continuation2, CoroutineContext coroutineContext2) {
            super(continuation2, coroutineContext2);
            this.$block = function1;
            this.$completion = continuation;
            this.$context = coroutineContext;
        }

        @Override // android.support.v4.e7
        @z41
        public Object invokeSuspend(@m41 Object obj) {
            int i = this.label;
            if (i == 0) {
                this.label = 1;
                Cpackage.m30783final(obj);
                return this.$block.invoke(this);
            }
            if (i != 1) {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.label = 2;
            Cpackage.m30783final(obj);
            return obj;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\b\n\u0018\u00002\u00020\u0001J$\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u0014ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n¸\u0006\u000b"}, d2 = {"kotlin/coroutines/intrinsics/for$new", "Lkotlin/coroutines/jvm/internal/do;", "Landroid/support/v4/vn1;", "", "result", "invokeSuspend", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "label", OptRuntime.GeneratorState.resumptionPoint_TYPE, "kotlin-stdlib", "kotlin/coroutines/intrinsics/for$if"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.coroutines.intrinsics.for$new, reason: invalid class name */
    public static final class Cnew extends kotlin.coroutines.jvm.internal.Cdo {
        public final /* synthetic */ Continuation $completion;
        public final /* synthetic */ CoroutineContext $context;
        public final /* synthetic */ Function1 $this_createCoroutineUnintercepted$inlined;
        private int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cnew(Continuation continuation, CoroutineContext coroutineContext, Continuation continuation2, CoroutineContext coroutineContext2, Function1 function1) {
            super(continuation2, coroutineContext2);
            this.$completion = continuation;
            this.$context = coroutineContext;
            this.$this_createCoroutineUnintercepted$inlined = function1;
        }

        @Override // android.support.v4.e7
        @z41
        public Object invokeSuspend(@m41 Object obj) {
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("This coroutine had already completed".toString());
                }
                this.label = 2;
                Cpackage.m30783final(obj);
                return obj;
            }
            this.label = 1;
            Cpackage.m30783final(obj);
            Function1 function1 = this.$this_createCoroutineUnintercepted$inlined;
            Objects.requireNonNull(function1, "null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            return ((Function1) k92.m4335while(function1, 1)).invoke(this);
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\b\n\u0018\u00002\u00020\u0001J$\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u0014ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n¸\u0006\u000b"}, d2 = {"kotlin/coroutines/intrinsics/for$try", "Landroid/support/v4/rn1;", "Landroid/support/v4/vn1;", "", "result", "invokeSuspend", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "label", OptRuntime.GeneratorState.resumptionPoint_TYPE, "kotlin-stdlib", "kotlin/coroutines/intrinsics/for$do"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.coroutines.intrinsics.for$try, reason: invalid class name */
    public static final class Ctry extends rn1 {
        public final /* synthetic */ Continuation $completion;
        public final /* synthetic */ Object $receiver$inlined;
        public final /* synthetic */ Function2 $this_createCoroutineUnintercepted$inlined;
        private int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ctry(Continuation continuation, Continuation continuation2, Function2 function2, Object obj) {
            super(continuation2);
            this.$completion = continuation;
            this.$this_createCoroutineUnintercepted$inlined = function2;
            this.$receiver$inlined = obj;
        }

        @Override // android.support.v4.e7
        @z41
        public Object invokeSuspend(@m41 Object obj) {
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("This coroutine had already completed".toString());
                }
                this.label = 2;
                Cpackage.m30783final(obj);
                return obj;
            }
            this.label = 1;
            Cpackage.m30783final(obj);
            Function2 function2 = this.$this_createCoroutineUnintercepted$inlined;
            Objects.requireNonNull(function2, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            return ((Function2) k92.m4335while(function2, 2)).invoke(this.$receiver$inlined, this);
        }
    }

    @iz1(version = "1.3")
    @um0
    /* renamed from: case, reason: not valid java name */
    private static final <R, T> Object m30396case(Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r, Continuation<? super T> continuation) {
        Objects.requireNonNull(function2, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        return ((Function2) k92.m4335while(function2, 2)).invoke(r, continuation);
    }

    @iz1(version = "1.3")
    /* renamed from: do, reason: not valid java name */
    private static final <T> Continuation<ub2> m30397do(Continuation<? super T> continuation, Function1<? super Continuation<? super T>, ? extends Object> function1) {
        CoroutineContext context = continuation.getContext();
        return context == v60.INSTANCE ? new Cdo(function1, continuation, continuation) : new Cif(function1, continuation, context, continuation, context);
    }

    @um0
    /* renamed from: else, reason: not valid java name */
    private static final <R, P, T> Object m30398else(Function3<? super R, ? super P, ? super Continuation<? super T>, ? extends Object> function3, R r, P p, Continuation<? super T> continuation) {
        Objects.requireNonNull(function3, "null cannot be cast to non-null type (R, P, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        return ((Function3) k92.m4335while(function3, 3)).invoke(r, p, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m41
    @iz1(version = "1.3")
    /* renamed from: for, reason: not valid java name */
    public static <R, T> Continuation<ub2> m30399for(@m41 Function2<? super R, ? super Continuation<? super T>, ? extends Object> createCoroutineUnintercepted, R r, @m41 Continuation<? super T> completion) {
        Csuper.m30700throw(createCoroutineUnintercepted, "$this$createCoroutineUnintercepted");
        Csuper.m30700throw(completion, "completion");
        Continuation<?> continuationM2818do = gx.m2818do(completion);
        if (createCoroutineUnintercepted instanceof e7) {
            return ((e7) createCoroutineUnintercepted).create(r, continuationM2818do);
        }
        CoroutineContext context = continuationM2818do.getContext();
        return context == v60.INSTANCE ? new Ctry(continuationM2818do, continuationM2818do, createCoroutineUnintercepted, r) : new Ccase(continuationM2818do, context, continuationM2818do, context, createCoroutineUnintercepted, r);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m41
    @iz1(version = "1.3")
    /* renamed from: if, reason: not valid java name */
    public static <T> Continuation<ub2> m30400if(@m41 Function1<? super Continuation<? super T>, ? extends Object> createCoroutineUnintercepted, @m41 Continuation<? super T> completion) {
        Csuper.m30700throw(createCoroutineUnintercepted, "$this$createCoroutineUnintercepted");
        Csuper.m30700throw(completion, "completion");
        Continuation<?> continuationM2818do = gx.m2818do(completion);
        if (createCoroutineUnintercepted instanceof e7) {
            return ((e7) createCoroutineUnintercepted).create(continuationM2818do);
        }
        CoroutineContext context = continuationM2818do.getContext();
        return context == v60.INSTANCE ? new C0365for(continuationM2818do, continuationM2818do, createCoroutineUnintercepted) : new Cnew(continuationM2818do, context, continuationM2818do, context, createCoroutineUnintercepted);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m41
    @iz1(version = "1.3")
    /* renamed from: new, reason: not valid java name */
    public static <T> Continuation<T> m30401new(@m41 Continuation<? super T> intercepted) {
        Continuation<T> continuation;
        Csuper.m30700throw(intercepted, "$this$intercepted");
        kotlin.coroutines.jvm.internal.Cdo cdo = !(intercepted instanceof kotlin.coroutines.jvm.internal.Cdo) ? null : intercepted;
        return (cdo == null || (continuation = (Continuation<T>) cdo.intercepted()) == null) ? intercepted : continuation;
    }

    @iz1(version = "1.3")
    @um0
    /* renamed from: try, reason: not valid java name */
    private static final <T> Object m30402try(Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> continuation) {
        Objects.requireNonNull(function1, "null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        return ((Function1) k92.m4335while(function1, 1)).invoke(continuation);
    }
}
