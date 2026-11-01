package com.wsw.cospa.activity;

import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wsw.cospa.R;
import com.wsw.cospa.widget.view.FixedTextInputEditText;

/* loaded from: classes2.dex */
public class AddBookShelfActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private AddBookShelfActivity f20852do;

    @UiThread
    public AddBookShelfActivity_ViewBinding(AddBookShelfActivity addBookShelfActivity) {
        this(addBookShelfActivity, addBookShelfActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AddBookShelfActivity addBookShelfActivity = this.f20852do;
        if (addBookShelfActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f20852do = null;
        addBookShelfActivity.mToolbar = null;
        addBookShelfActivity.etBookshelfName = null;
        addBookShelfActivity.rbGirdMode = null;
        addBookShelfActivity.rbListMode = null;
        addBookShelfActivity.rgViewMode = null;
        addBookShelfActivity.rbSortTime = null;
        addBookShelfActivity.rbSortDrag = null;
        addBookShelfActivity.rgSortType = null;
        addBookShelfActivity.savBookshelfView = null;
        addBookShelfActivity.tvTitle = null;
        addBookShelfActivity.shelfGroupList = null;
        addBookShelfActivity.groupSortTip = null;
        addBookShelfActivity.allCategoryCheck = null;
        addBookShelfActivity.allCategoryLayout = null;
    }

    @UiThread
    public AddBookShelfActivity_ViewBinding(AddBookShelfActivity addBookShelfActivity, View view) {
        this.f20852do = addBookShelfActivity;
        addBookShelfActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        addBookShelfActivity.etBookshelfName = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090172, "field 'etBookshelfName'", FixedTextInputEditText.class);
        addBookShelfActivity.rbGirdMode = (AppCompatRadioButton) Cnew.m10373case(view, R.id.arg_res_0x7f090350, "field 'rbGirdMode'", AppCompatRadioButton.class);
        addBookShelfActivity.rbListMode = (AppCompatRadioButton) Cnew.m10373case(view, R.id.arg_res_0x7f090351, "field 'rbListMode'", AppCompatRadioButton.class);
        addBookShelfActivity.rgViewMode = (RadioGroup) Cnew.m10373case(view, R.id.arg_res_0x7f090363, "field 'rgViewMode'", RadioGroup.class);
        addBookShelfActivity.rbSortTime = (AppCompatRadioButton) Cnew.m10373case(view, R.id.arg_res_0x7f090353, "field 'rbSortTime'", AppCompatRadioButton.class);
        addBookShelfActivity.rbSortDrag = (AppCompatRadioButton) Cnew.m10373case(view, R.id.arg_res_0x7f090352, "field 'rbSortDrag'", AppCompatRadioButton.class);
        addBookShelfActivity.rgSortType = (RadioGroup) Cnew.m10373case(view, R.id.arg_res_0x7f090362, "field 'rgSortType'", RadioGroup.class);
        addBookShelfActivity.savBookshelfView = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090379, "field 'savBookshelfView'", LinearLayout.class);
        addBookShelfActivity.tvTitle = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904be, "field 'tvTitle'", TextView.class);
        addBookShelfActivity.shelfGroupList = (RecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0903a3, "field 'shelfGroupList'", RecyclerView.class);
        addBookShelfActivity.groupSortTip = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0901f5, "field 'groupSortTip'", LinearLayout.class);
        addBookShelfActivity.allCategoryCheck = (CheckBox) Cnew.m10373case(view, R.id.arg_res_0x7f0900f1, "field 'allCategoryCheck'", CheckBox.class);
        addBookShelfActivity.allCategoryLayout = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09008c, "field 'allCategoryLayout'", LinearLayout.class);
    }
}
