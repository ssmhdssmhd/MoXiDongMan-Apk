package org.intellij.lang.annotations;

import android.support.v4.a41;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.PARAMETER, ElementType.METHOD})
@Documented
@Retention(RetentionPolicy.CLASS)
/* renamed from: org.intellij.lang.annotations.do, reason: invalid class name */
/* loaded from: classes.dex */
public @interface Cdo {

    @a41
    public static final String m7 = "The method argument (if parameter was annotated) or this container (if instance method was annotated)";

    @a41
    public static final String n7 = "this";

    @a41
    public static final String o7 = "This container (if the parameter was annotated) or the return value (if instance method was annotated)";

    @a41
    public static final String p7 = "The return value of this method";

    @a41
    public static final String q7 = "this";

    String source() default "The method argument (if parameter was annotated) or this container (if instance method was annotated)";

    boolean sourceIsContainer() default false;

    String target() default "This container (if the parameter was annotated) or the return value (if instance method was annotated)";

    boolean targetIsContainer() default false;
}
