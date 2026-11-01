package com.wsw.cospa.activity;

import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import androidx.core.widget.NestedScrollView;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.google.android.material.appbar.AppBarLayout;
import com.h6ah4i.android.widget.verticalseekbar.VerticalSeekBar;
import com.h6ah4i.android.widget.verticalseekbar.VerticalSeekBarWrapper;
import com.wsw.cospa.R;
import com.wsw.cospa.widget.TextInputSpinner;
import com.wsw.cospa.widget.view.FixedTextInputEditText;

/* loaded from: classes2.dex */
public class AddComicSourceActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private AddComicSourceActivity f20879do;

    @UiThread
    public AddComicSourceActivity_ViewBinding(AddComicSourceActivity addComicSourceActivity) {
        this(addComicSourceActivity, addComicSourceActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AddComicSourceActivity addComicSourceActivity = this.f20879do;
        if (addComicSourceActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f20879do = null;
        addComicSourceActivity.mToolbar = null;
        addComicSourceActivity.mAppBarLayout = null;
        addComicSourceActivity.etBookSourceType = null;
        addComicSourceActivity.etBookSingleThread = null;
        addComicSourceActivity.etBookDelayTime = null;
        addComicSourceActivity.etBookSourceUrl = null;
        addComicSourceActivity.etBookSourceRemark = null;
        addComicSourceActivity.etSourceName = null;
        addComicSourceActivity.etSourceGroup = null;
        addComicSourceActivity.etRuleFindUrl = null;
        addComicSourceActivity.etSearchUrl = null;
        addComicSourceActivity.etSearchList = null;
        addComicSourceActivity.etSearchUrlNext = null;
        addComicSourceActivity.etSearchAuthor = null;
        addComicSourceActivity.etSearchName = null;
        addComicSourceActivity.etSearchKind = null;
        addComicSourceActivity.etSearchLastChapter = null;
        addComicSourceActivity.etSearchCover = null;
        addComicSourceActivity.etSearchNoteUrl = null;
        addComicSourceActivity.etRuleBookName = null;
        addComicSourceActivity.etRuleBookAuthor = null;
        addComicSourceActivity.etRuleCoverUrl = null;
        addComicSourceActivity.etRuleIntroduce = null;
        addComicSourceActivity.etRuleBookKind = null;
        addComicSourceActivity.etRuleBookLastChapter = null;
        addComicSourceActivity.etRuleChapterList = null;
        addComicSourceActivity.etRuleChapterId = null;
        addComicSourceActivity.etRuleChapterUrl = null;
        addComicSourceActivity.etRuleChapterUrlNext = null;
        addComicSourceActivity.etRuleChapterParentId = null;
        addComicSourceActivity.etRuleChapterParentName = null;
        addComicSourceActivity.etRuleChapterName = null;
        addComicSourceActivity.etRuleContentUrl = null;
        addComicSourceActivity.etRuleBookContent = null;
        addComicSourceActivity.etRuleBookContentDecoder = null;
        addComicSourceActivity.etRuleContentUrlNext = null;
        addComicSourceActivity.etHttpUserAgent = null;
        addComicSourceActivity.tieLoginUrl = null;
        addComicSourceActivity.etloginUrlResult = null;
        addComicSourceActivity.rootView = null;
        addComicSourceActivity.mScrollView = null;
        addComicSourceActivity.addComicSeekBarWrapper = null;
        addComicSourceActivity.addComicSeekBarMainScrollThumb = null;
    }

    @UiThread
    public AddComicSourceActivity_ViewBinding(AddComicSourceActivity addComicSourceActivity, View view) {
        this.f20879do = addComicSourceActivity;
        addComicSourceActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        addComicSourceActivity.mAppBarLayout = (AppBarLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090299, "field 'mAppBarLayout'", AppBarLayout.class);
        addComicSourceActivity.etBookSourceType = (TextInputSpinner) Cnew.m10373case(view, R.id.arg_res_0x7f090170, "field 'etBookSourceType'", TextInputSpinner.class);
        addComicSourceActivity.etBookSingleThread = (TextInputSpinner) Cnew.m10373case(view, R.id.arg_res_0x7f09016e, "field 'etBookSingleThread'", TextInputSpinner.class);
        addComicSourceActivity.etBookDelayTime = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f09016d, "field 'etBookDelayTime'", FixedTextInputEditText.class);
        addComicSourceActivity.etBookSourceUrl = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090171, "field 'etBookSourceUrl'", FixedTextInputEditText.class);
        addComicSourceActivity.etBookSourceRemark = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f09016f, "field 'etBookSourceRemark'", FixedTextInputEditText.class);
        addComicSourceActivity.etSourceName = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f09019e, "field 'etSourceName'", FixedTextInputEditText.class);
        addComicSourceActivity.etSourceGroup = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f09019d, "field 'etSourceGroup'", FixedTextInputEditText.class);
        addComicSourceActivity.etRuleFindUrl = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090191, "field 'etRuleFindUrl'", FixedTextInputEditText.class);
        addComicSourceActivity.etSearchUrl = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f09019b, "field 'etSearchUrl'", FixedTextInputEditText.class);
        addComicSourceActivity.etSearchList = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090198, "field 'etSearchList'", FixedTextInputEditText.class);
        addComicSourceActivity.etSearchUrlNext = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f09019c, "field 'etSearchUrlNext'", FixedTextInputEditText.class);
        addComicSourceActivity.etSearchAuthor = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090193, "field 'etSearchAuthor'", FixedTextInputEditText.class);
        addComicSourceActivity.etSearchName = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090199, "field 'etSearchName'", FixedTextInputEditText.class);
        addComicSourceActivity.etSearchKind = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090196, "field 'etSearchKind'", FixedTextInputEditText.class);
        addComicSourceActivity.etSearchLastChapter = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090197, "field 'etSearchLastChapter'", FixedTextInputEditText.class);
        addComicSourceActivity.etSearchCover = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090195, "field 'etSearchCover'", FixedTextInputEditText.class);
        addComicSourceActivity.etSearchNoteUrl = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f09019a, "field 'etSearchNoteUrl'", FixedTextInputEditText.class);
        addComicSourceActivity.etRuleBookName = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090186, "field 'etRuleBookName'", FixedTextInputEditText.class);
        addComicSourceActivity.etRuleBookAuthor = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090181, "field 'etRuleBookAuthor'", FixedTextInputEditText.class);
        addComicSourceActivity.etRuleCoverUrl = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090190, "field 'etRuleCoverUrl'", FixedTextInputEditText.class);
        addComicSourceActivity.etRuleIntroduce = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090192, "field 'etRuleIntroduce'", FixedTextInputEditText.class);
        addComicSourceActivity.etRuleBookKind = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090184, "field 'etRuleBookKind'", FixedTextInputEditText.class);
        addComicSourceActivity.etRuleBookLastChapter = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090185, "field 'etRuleBookLastChapter'", FixedTextInputEditText.class);
        addComicSourceActivity.etRuleChapterList = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090188, "field 'etRuleChapterList'", FixedTextInputEditText.class);
        addComicSourceActivity.etRuleChapterId = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090187, "field 'etRuleChapterId'", FixedTextInputEditText.class);
        addComicSourceActivity.etRuleChapterUrl = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f09018c, "field 'etRuleChapterUrl'", FixedTextInputEditText.class);
        addComicSourceActivity.etRuleChapterUrlNext = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f09018d, "field 'etRuleChapterUrlNext'", FixedTextInputEditText.class);
        addComicSourceActivity.etRuleChapterParentId = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f09018a, "field 'etRuleChapterParentId'", FixedTextInputEditText.class);
        addComicSourceActivity.etRuleChapterParentName = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f09018b, "field 'etRuleChapterParentName'", FixedTextInputEditText.class);
        addComicSourceActivity.etRuleChapterName = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090189, "field 'etRuleChapterName'", FixedTextInputEditText.class);
        addComicSourceActivity.etRuleContentUrl = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f09018e, "field 'etRuleContentUrl'", FixedTextInputEditText.class);
        addComicSourceActivity.etRuleBookContent = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090182, "field 'etRuleBookContent'", FixedTextInputEditText.class);
        addComicSourceActivity.etRuleBookContentDecoder = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090183, "field 'etRuleBookContentDecoder'", FixedTextInputEditText.class);
        addComicSourceActivity.etRuleContentUrlNext = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f09018f, "field 'etRuleContentUrlNext'", FixedTextInputEditText.class);
        addComicSourceActivity.etHttpUserAgent = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f09016c, "field 'etHttpUserAgent'", FixedTextInputEditText.class);
        addComicSourceActivity.tieLoginUrl = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090176, "field 'tieLoginUrl'", FixedTextInputEditText.class);
        addComicSourceActivity.etloginUrlResult = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090177, "field 'etloginUrlResult'", FixedTextInputEditText.class);
        addComicSourceActivity.rootView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09036e, "field 'rootView'", RelativeLayout.class);
        addComicSourceActivity.mScrollView = (NestedScrollView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a7, "field 'mScrollView'", NestedScrollView.class);
        addComicSourceActivity.addComicSeekBarWrapper = (VerticalSeekBarWrapper) Cnew.m10373case(view, R.id.arg_res_0x7f090084, "field 'addComicSeekBarWrapper'", VerticalSeekBarWrapper.class);
        addComicSourceActivity.addComicSeekBarMainScrollThumb = (VerticalSeekBar) Cnew.m10373case(view, R.id.arg_res_0x7f090082, "field 'addComicSeekBarMainScrollThumb'", VerticalSeekBar.class);
    }
}
