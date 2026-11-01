package kotlin.internal;

import android.support.v4.b2;
import android.support.v4.c2;
import android.support.v4.co1;
import android.support.v4.iz1;
import android.support.v4.t42;
import android.support.v4.xm1;
import freemarker.core.k;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Ctry;
import kotlin.Cwhile;

@Target({ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR})
@iz1(version = "1.2")
@Retention(RetentionPolicy.SOURCE)
@t42(allowedTargets = {c2.CLASS, c2.FUNCTION, c2.PROPERTY, c2.CONSTRUCTOR, c2.TYPEALIAS})
@co1(b2.SOURCE)
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0081\u0002\u0018\u00002\u00020\u0001B0\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\r\u001a\u00020\fR\u0013\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0013\u0010\u0005\u001a\u00020\u00028\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0004R\u0013\u0010\u0007\u001a\u00020\u00068\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\n\u001a\u00020\t8\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\r\u001a\u00020\f8\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lkotlin/internal/if;", "", "", k.f23925continue, "()Ljava/lang/String;", "message", "Lkotlin/try;", "level", "()Lkotlin/try;", "Lkotlin/internal/for;", "versionKind", "()Lkotlin/internal/for;", "", "errorCode", "()I", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@xm1
/* renamed from: kotlin.internal.if, reason: invalid class name */
/* loaded from: classes.dex */
public @interface Cif {
    int errorCode() default -1;

    Ctry level() default Ctry.ERROR;

    String message() default "";

    String version();

    Cfor versionKind() default Cfor.LANGUAGE_VERSION;
}
