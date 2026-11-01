package android.support.v4;

import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;

@Target({ElementType.CONSTRUCTOR, ElementType.METHOD})
/* loaded from: classes.dex */
public @interface qn1 {
    String allowedOnPath() default "";

    String checkerName() default "RestrictedApi";

    String explanation();

    String link();

    Class<? extends Annotation>[] whitelistAnnotations() default {};

    Class<? extends Annotation>[] whitelistWithWarningAnnotations() default {};
}
