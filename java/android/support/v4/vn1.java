package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.io.Serializable;
import kotlin.Cpackage;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

@up0
@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\b\u0087@\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00060\u0002j\u0002`\u0003:\u0002\u0004\u001fB\u0016\b\u0001\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0012ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u0005J\u0012\u0010\u0004\u001a\u0004\u0018\u00018\u0000H\u0087\b¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0011\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0017\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016R\u0013\u0010\u001a\u001a\u00020\u00148F@\u0006¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\u001c\u001a\u00020\u00148F@\u0006¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0019ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"Landroid/support/v4/vn1;", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "do", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "exceptionOrNull-impl", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "exceptionOrNull", "", "toString-impl", "(Ljava/lang/Object;)Ljava/lang/String;", "toString", "", "hashCode-impl", "(Ljava/lang/Object;)I", "hashCode", "", "other", "", "equals-impl", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "equals", "isSuccess-impl", "(Ljava/lang/Object;)Z", "isSuccess", "isFailure-impl", "isFailure", ES6Iterator.VALUE_PROPERTY, "constructor-impl", "if", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class vn1<T> implements Serializable {

    @m41
    public static final Cdo Companion = new Cdo(null);

    @z41
    private final Object value;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ'\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0001\u0010\u00022\u0006\u0010\u0003\u001a\u00028\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0001\u0010\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0087\bø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"android/support/v4/vn1$do", "", ExifInterface.GPS_DIRECTION_TRUE, ES6Iterator.VALUE_PROPERTY, "Landroid/support/v4/vn1;", "if", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "exception", "do", "(Ljava/lang/Throwable;)Ljava/lang/Object;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.vn1$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        @um0
        @wp0(name = "failure")
        /* renamed from: do, reason: not valid java name */
        private final <T> Object m8920do(Throwable th) {
            return vn1.b(Cpackage.m30781do(th));
        }

        @um0
        @wp0(name = "success")
        /* renamed from: if, reason: not valid java name */
        private final <T> Object m8921if(T t) {
            return vn1.b(t);
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002J\b\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\n\u001a\u00020\tH\u0016¨\u0006\u000f"}, d2 = {"android/support/v4/vn1$if", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "other", "", "equals", "", "hashCode", "", "toString", "", "exception", "<init>", "(Ljava/lang/Throwable;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.vn1$if, reason: invalid class name */
    public static final class Cif implements Serializable {

        @m41
        @tp0
        public final Throwable exception;

        public Cif(@m41 Throwable exception) {
            Csuper.m30700throw(exception, "exception");
            this.exception = exception;
        }

        public boolean equals(@z41 Object obj) {
            return (obj instanceof Cif) && Csuper.m30676else(this.exception, ((Cif) obj).exception);
        }

        public int hashCode() {
            return this.exception.hashCode();
        }

        @m41
        public String toString() {
            return "Failure(" + this.exception + ')';
        }
    }

    @wg1
    private /* synthetic */ vn1(Object obj) {
        this.value = obj;
    }

    public static final /* synthetic */ vn1 a(Object obj) {
        return new vn1(obj);
    }

    @m41
    @wg1
    public static Object b(@z41 Object obj) {
        return obj;
    }

    public static boolean c(Object obj, Object obj2) {
        return (obj2 instanceof vn1) && Csuper.m30676else(obj, ((vn1) obj2).j());
    }

    public static final boolean d(Object obj, Object obj2) {
        return Csuper.m30676else(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @um0
    /* renamed from: do, reason: not valid java name */
    private static final T m8919do(Object obj) {
        if (g(obj)) {
            return null;
        }
        return obj;
    }

    @z41
    public static final Throwable e(Object obj) {
        if (obj instanceof Cif) {
            return ((Cif) obj).exception;
        }
        return null;
    }

    public static int f(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public static final boolean g(Object obj) {
        return obj instanceof Cif;
    }

    @wg1
    public static /* synthetic */ void getValue$annotations() {
    }

    public static final boolean h(Object obj) {
        return !(obj instanceof Cif);
    }

    @m41
    public static String i(Object obj) {
        if (obj instanceof Cif) {
            return obj.toString();
        }
        return "Success(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return c(this.value, obj);
    }

    public int hashCode() {
        return f(this.value);
    }

    public final /* synthetic */ Object j() {
        return this.value;
    }

    @m41
    public String toString() {
        return i(this.value);
    }
}
