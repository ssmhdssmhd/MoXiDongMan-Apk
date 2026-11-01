package android.support.v4;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.meta.Cfor;
import javax.annotation.meta.TypeQualifierValidator;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@javax.annotation.meta.Cdo(applicableTo = Number.class)
/* loaded from: classes.dex */
public @interface f41 {

    /* renamed from: android.support.v4.f41$do, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static class Cdo implements TypeQualifierValidator<f41> {
        @Override // javax.annotation.meta.TypeQualifierValidator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfor forConstantValue(f41 f41Var, Object obj) {
            if (!(obj instanceof Number)) {
                return Cfor.NEVER;
            }
            Number number = (Number) obj;
            boolean z = true;
            if (!(number instanceof Long) ? !(number instanceof Double) ? !(number instanceof Float) ? number.intValue() >= 0 : number.floatValue() >= 0.0f : number.doubleValue() >= 0.0d : number.longValue() >= 0) {
                z = false;
            }
            return z ? Cfor.NEVER : Cfor.ALWAYS;
        }
    }

    Cfor when() default Cfor.ALWAYS;
}
