package android.support.v4;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD})
@ki0
@Documented
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes.dex */
public @interface li0 {
    String value() default "";
}
