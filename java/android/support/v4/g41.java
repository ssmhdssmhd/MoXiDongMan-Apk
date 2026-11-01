package android.support.v4;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.meta.Cfor;
import javax.annotation.meta.TypeQualifierValidator;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@javax.annotation.meta.Cdo
/* loaded from: classes.dex */
public @interface g41 {

    /* renamed from: android.support.v4.g41$do, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static class Cdo implements TypeQualifierValidator<g41> {
        @Override // javax.annotation.meta.TypeQualifierValidator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfor forConstantValue(g41 g41Var, Object obj) {
            return obj == null ? Cfor.NEVER : Cfor.ALWAYS;
        }
    }

    Cfor when() default Cfor.ALWAYS;
}
