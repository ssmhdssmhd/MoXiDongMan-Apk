package org.intellij.lang.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.FIELD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.CLASS)
@Cif("RegExp")
/* renamed from: org.intellij.lang.annotations.try, reason: invalid class name */
/* loaded from: classes.dex */
public @interface Ctry {
    String prefix() default "";

    String suffix() default "";
}
