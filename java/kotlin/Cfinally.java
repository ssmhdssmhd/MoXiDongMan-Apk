package kotlin;

import android.support.v4.b2;
import android.support.v4.c2;
import android.support.v4.co1;
import android.support.v4.iz1;
import android.support.v4.t42;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.ANNOTATION_TYPE})
@co1(b2.BINARY)
@iz1(version = "1.3")
@Retention(RetentionPolicy.CLASS)
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\u0002\u0018\u00002\u00020\u0001:\u0001\bB\u0014\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005R\u0013\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0013\u0010\u0006\u001a\u00020\u00058\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007ø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u0099F0\u0001¨\u0006\t"}, d2 = {"Lkotlin/finally;", "", "", "message", "()Ljava/lang/String;", "Lkotlin/finally$do;", "level", "()Lkotlin/finally$do;", "do", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@t42(allowedTargets = {c2.ANNOTATION_CLASS})
/* renamed from: kotlin.finally, reason: invalid class name */
/* loaded from: classes.dex */
public @interface Cfinally {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"kotlin/finally$do", "", "Lkotlin/finally$do;", "<init>", "(Ljava/lang/String;I)V", "WARNING", "ERROR", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.finally$do, reason: invalid class name */
    public enum Cdo {
        WARNING,
        ERROR
    }

    Cdo level() default Cdo.ERROR;

    String message() default "";
}
