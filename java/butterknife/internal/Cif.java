package butterknife.internal;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: butterknife.internal.if, reason: invalid class name */
/* loaded from: classes.dex */
public @interface Cif {

    /* renamed from: butterknife.internal.if$do, reason: invalid class name */
    public enum Cdo {
    }

    Class<? extends Enum<?>> callbacks() default Cdo.class;

    Cfor[] method() default {};

    String remover() default "";

    String setter();

    String targetType();

    String type();
}
