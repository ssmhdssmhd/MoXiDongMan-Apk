package com.wsw.cospa.widget.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class OptionsMenuDialog_ViewBinding implements Unbinder {
    private OptionsMenuDialog target;

    @UiThread
    public OptionsMenuDialog_ViewBinding(OptionsMenuDialog optionsMenuDialog) {
        this(optionsMenuDialog, optionsMenuDialog.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        OptionsMenuDialog optionsMenuDialog = this.target;
        if (optionsMenuDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        optionsMenuDialog.tvComicName = null;
        optionsMenuDialog.ivModeImage = null;
        optionsMenuDialog.tvClearShelf = null;
        optionsMenuDialog.tvChangeSource = null;
        optionsMenuDialog.tvDownloadComic = null;
        optionsMenuDialog.tvDeleteComic = null;
        optionsMenuDialog.tvManagerComic = null;
        optionsMenuDialog.tvMoveComic = null;
    }

    @UiThread
    public OptionsMenuDialog_ViewBinding(OptionsMenuDialog optionsMenuDialog, View view) {
        this.target = optionsMenuDialog;
        optionsMenuDialog.tvComicName = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09046f, "field 'tvComicName'", TextView.class);
        optionsMenuDialog.ivModeImage = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090243, "field 'ivModeImage'", ImageView.class);
        optionsMenuDialog.tvClearShelf = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09046c, "field 'tvClearShelf'", LinearLayout.class);
        optionsMenuDialog.tvChangeSource = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090467, "field 'tvChangeSource'", LinearLayout.class);
        optionsMenuDialog.tvDownloadComic = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09047d, "field 'tvDownloadComic'", LinearLayout.class);
        optionsMenuDialog.tvDeleteComic = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090477, "field 'tvDeleteComic'", LinearLayout.class);
        optionsMenuDialog.tvManagerComic = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090498, "field 'tvManagerComic'", LinearLayout.class);
        optionsMenuDialog.tvMoveComic = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090499, "field 'tvMoveComic'", LinearLayout.class);
    }
}
