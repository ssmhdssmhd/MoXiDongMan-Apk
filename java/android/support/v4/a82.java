package android.support.v4;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class a82 {
    private a82() {
    }

    @Nullable
    /* renamed from: case, reason: not valid java name */
    private static TextView m69case(@NonNull Toolbar toolbar, CharSequence charSequence) {
        for (int i = 0; i < toolbar.getChildCount(); i++) {
            View childAt = toolbar.getChildAt(i);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (TextUtils.equals(textView.getText(), charSequence)) {
                    return textView;
                }
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: do, reason: not valid java name */
    public static ActionMenuItemView m70do(@NonNull Toolbar toolbar, @IdRes int i) {
        ActionMenuView actionMenuViewM73if = m73if(toolbar);
        if (actionMenuViewM73if == null) {
            return null;
        }
        for (int i2 = 0; i2 < actionMenuViewM73if.getChildCount(); i2++) {
            View childAt = actionMenuViewM73if.getChildAt(i2);
            if (childAt instanceof ActionMenuItemView) {
                ActionMenuItemView actionMenuItemView = (ActionMenuItemView) childAt;
                if (actionMenuItemView.getItemData().getItemId() == i) {
                    return actionMenuItemView;
                }
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: else, reason: not valid java name */
    public static TextView m71else(@NonNull Toolbar toolbar) {
        return m69case(toolbar, toolbar.getTitle());
    }

    @Nullable
    /* renamed from: for, reason: not valid java name */
    public static ImageButton m72for(@NonNull Toolbar toolbar) {
        Drawable navigationIcon = toolbar.getNavigationIcon();
        if (navigationIcon == null) {
            return null;
        }
        for (int i = 0; i < toolbar.getChildCount(); i++) {
            View childAt = toolbar.getChildAt(i);
            if (childAt instanceof ImageButton) {
                ImageButton imageButton = (ImageButton) childAt;
                if (imageButton.getDrawable() == navigationIcon) {
                    return imageButton;
                }
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    public static ActionMenuView m73if(@NonNull Toolbar toolbar) {
        for (int i = 0; i < toolbar.getChildCount(); i++) {
            View childAt = toolbar.getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: new, reason: not valid java name */
    public static View m74new(@NonNull Toolbar toolbar) {
        ActionMenuView actionMenuViewM73if = m73if(toolbar);
        if (actionMenuViewM73if == null || actionMenuViewM73if.getChildCount() <= 1) {
            return null;
        }
        return actionMenuViewM73if.getChildAt(0);
    }

    @Nullable
    /* renamed from: try, reason: not valid java name */
    public static TextView m75try(@NonNull Toolbar toolbar) {
        return m69case(toolbar, toolbar.getSubtitle());
    }
}
