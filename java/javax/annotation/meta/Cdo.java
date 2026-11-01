package javax.annotation.meta;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.ANNOTATION_TYPE})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: javax.annotation.meta.do, reason: invalid class name */
/* loaded from: classes.dex */
public @interface Cdo {
    Class<?> applicableTo() default Object.class;
}
