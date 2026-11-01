package android.support.v4;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import javax.annotation.meta.Cfor;
import javax.annotation.meta.TypeQualifierValidator;

@q92
@Documented
@Retention(RetentionPolicy.RUNTIME)
@r32("RegEx")
/* loaded from: classes.dex */
public @interface rm1 {

    /* renamed from: android.support.v4.rm1$do, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static class Cdo implements TypeQualifierValidator<rm1> {
        @Override // javax.annotation.meta.TypeQualifierValidator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfor forConstantValue(rm1 rm1Var, Object obj) {
            if (!(obj instanceof String)) {
                return Cfor.NEVER;
            }
            try {
                Pattern.compile((String) obj);
                return Cfor.ALWAYS;
            } catch (PatternSyntaxException unused) {
                return Cfor.NEVER;
            }
        }
    }

    Cfor when() default Cfor.ALWAYS;
}
