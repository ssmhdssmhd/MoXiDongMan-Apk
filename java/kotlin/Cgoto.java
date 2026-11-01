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
@Cfor(message = "Please use RequiresOptIn instead.")
@iz1(version = "1.2")
@Retention(RetentionPolicy.CLASS)
@t42(allowedTargets = {c2.ANNOTATION_CLASS})
@co1(b2.BINARY)
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\u0002\u0018\u00002\u00020\u0001:\u0001\u0005B\n\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002R\u0013\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004ø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009120\u0001¨\u0006\u0006"}, d2 = {"Lkotlin/goto;", "", "Lkotlin/goto$do;", "level", "()Lkotlin/goto$do;", "do", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.goto, reason: invalid class name */
/* loaded from: classes.dex */
public @interface Cgoto {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"kotlin/goto$do", "", "Lkotlin/goto$do;", "<init>", "(Ljava/lang/String;I)V", "WARNING", "ERROR", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.goto$do, reason: invalid class name */
    public enum Cdo {
        WARNING,
        ERROR
    }

    Cdo level() default Cdo.ERROR;
}
