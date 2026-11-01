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
@Cif(method = {@Cfor(defaultReturn = b2.f23511if, name = "onEditorAction", parameters = {"android.widget.TextView", "int", "android.view.KeyEvent"}, returnType = TypedValues.Custom.S_BOOLEAN)}, setter = "setOnEditorActionListener", targetType = "android.widget.TextView", type = "android.widget.TextView.OnEditorActionListener")
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface OnEditorAction {
    @IdRes
    int[] value() default {-1};
}
