package org.intellij.lang.annotations;

import android.support.v4.a41;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.FIELD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.CLASS)
/* renamed from: org.intellij.lang.annotations.if, reason: invalid class name */
/* loaded from: classes.dex */
public @interface Cif {
    @a41
    String prefix() default "";

    @a41
    String suffix() default "";

    @a41
    String value();
}
