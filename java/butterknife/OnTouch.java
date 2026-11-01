package butterknife;

import androidx.annotation.IdRes;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import butterknife.internal.Cfor;
import butterknife.internal.Cif;
import freemarker.core.b2;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Cif(method = {@Cfor(defaultReturn = b2.f23511if, name = "onTouch", parameters = {"android.view.View", "android.view.MotionEvent"}, returnType = TypedValues.Custom.S_BOOLEAN)}, setter = "setOnTouchListener", targetType = "android.view.View", type = "android.view.View.OnTouchListener")
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface OnTouch {
    @IdRes
    int[] value() default {-1};
}
