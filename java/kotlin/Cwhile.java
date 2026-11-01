package kotlin;

import android.support.v4.b2;
import android.support.v4.c2;
import android.support.v4.co1;
import android.support.v4.iz1;
import android.support.v4.t42;
import android.support.v4.wp0;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE})
@co1(b2.RUNTIME)
@iz1(version = "1.3")
@Retention(RetentionPolicy.RUNTIME)
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\r\b\u0087\u0002\u0018\u00002\u00020\u0001B\\\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0006\u0012\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\b\b\u0002\u0010\u0015\u001a\u00020\r\u0012\b\b\u0002\u0010\u0017\u001a\u00020\r\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0002R\u0013\u0010\u0005\u001a\u00020\u00028\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0013\u0010\t\u001a\u00020\u00068\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u000b\u001a\u00020\u00068\u0007@\u0007X\u0087\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\bR\u0019\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR\u0013\u0010\u0015\u001a\u00020\r8\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0017\u001a\u00020\r8\u0007@\u0007X\u0087\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00028\u0007@\u0007X\u0087\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0004¨\u0006\u001a"}, d2 = {"Lkotlin/while;", "", "", "k", "()I", "kind", "", "mv", "()[I", "metadataVersion", "bv", "bytecodeVersion", "", "", "d1", "()[Ljava/lang/String;", "data1", "d2", "data2", "xs", "()Ljava/lang/String;", "extraString", "pn", "packageName", "xi", "extraInt", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@t42(allowedTargets = {c2.CLASS})
/* renamed from: kotlin.while, reason: invalid class name */
/* loaded from: classes.dex */
public @interface Cwhile {
    @wp0(name = "bv")
    int[] bv() default {1, 0, 3};

    @wp0(name = "d1")
    String[] d1() default {};

    @wp0(name = "d2")
    String[] d2() default {};

    @wp0(name = "k")
    int k() default 1;

    @wp0(name = "mv")
    int[] mv() default {};

    @wp0(name = "pn")
    String pn() default "";

    @wp0(name = "xi")
    int xi() default 0;

    @wp0(name = "xs")
    String xs() default "";
}
