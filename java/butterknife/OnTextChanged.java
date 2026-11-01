package butterknife;

import androidx.annotation.IdRes;
import butterknife.internal.Cif;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Cif(callbacks = Callback.class, remover = "removeTextChangedListener", setter = "addTextChangedListener", targetType = "android.widget.TextView", type = "android.text.TextWatcher")
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface OnTextChanged {

    public enum Callback {
        TEXT_CHANGED,
        BEFORE_TEXT_CHANGED,
        AFTER_TEXT_CHANGED
    }

    Callback callback() default Callback.TEXT_CHANGED;

    @IdRes
    int[] value() default {-1};
}
