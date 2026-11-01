package kotlin;

import android.support.v4.a11;
import android.support.v4.an1;
import android.support.v4.c2;
import android.support.v4.t42;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.ANNOTATION_TYPE})
@Documented
@Retention(RetentionPolicy.RUNTIME)
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0002\u0018\u00002\u00020\u0001B\u001c\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\bR\u0013\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0013\u0010\u0006\u001a\u00020\u00058\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\t\u001a\u00020\b8\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlin/for;", "", "", "message", "()Ljava/lang/String;", "Landroid/support/v4/an1;", "replaceWith", "()Landroid/support/v4/an1;", "Lkotlin/try;", "level", "()Lkotlin/try;", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@a11
@t42(allowedTargets = {c2.CLASS, c2.FUNCTION, c2.PROPERTY, c2.ANNOTATION_CLASS, c2.CONSTRUCTOR, c2.PROPERTY_SETTER, c2.PROPERTY_GETTER, c2.TYPEALIAS})
/* renamed from: kotlin.for, reason: invalid class name */
/* loaded from: classes.dex */
public @interface Cfor {
    Ctry level() default Ctry.WARNING;

    String message();

    an1 replaceWith() default @an1(expression = "", imports = {});
}
