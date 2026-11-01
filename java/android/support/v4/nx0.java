package android.support.v4;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.regex.Pattern;
import javax.annotation.meta.Cfor;
import javax.annotation.meta.TypeQualifierValidator;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@javax.annotation.meta.Cdo(applicableTo = String.class)
/* loaded from: classes.dex */
public @interface nx0 {

    /* renamed from: android.support.v4.nx0$do, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static class Cdo implements TypeQualifierValidator<nx0> {
        @Override // javax.annotation.meta.TypeQualifierValidator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfor forConstantValue(nx0 nx0Var, Object obj) {
            return Pattern.compile(nx0Var.value(), nx0Var.flags()).matcher((String) obj).matches() ? Cfor.ALWAYS : Cfor.NEVER;
        }
    }

    int flags() default 0;

    @rm1
    String value();
}
