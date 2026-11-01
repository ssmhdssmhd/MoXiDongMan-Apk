package android.support.v4;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD})
@op0
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface mp0 {
    boolean value() default true;
}
