package com.wsw.cospa.widget.view;

import android.content.Context;
import android.support.v4.j10;
import android.support.v4.y8;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.futuremind.recyclerviewfastscroll.FastScroller;
import com.futuremind.recyclerviewfastscroll.SectionTitleProvider;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.gyf.immersionbar.Celse;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.ChapterBrowseActivity;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicShelfBean;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ChapterBottomSheet {
    private ComicShelfBean bookShelfBean;
    private BottomSheetDialog dialog;
    private LinearLayoutManager layoutManager;
    private BaseActivity mActivity;
    private ChapterAdapter mAdapter;
    private Context mContext;
    private FastScroller mFastScroller;
    private RecyclerView mRecyclerView;
    private TextView mTitle;
    private View mView;

    public class ChapterAdapter extends RecyclerView.Adapter<ChapterViewHolder> implements SectionTitleProvider {
        private List<ChapterListBean> chapters = new ArrayList();
        private int selectIndex;

        public class ChapterViewHolder extends RecyclerView.ViewHolder {

            @BindView(R.id.arg_res_0x7f090398)
            public ImageView selectLine;

            @BindView(R.id.arg_res_0x7f090468)
            public TextView tvChapter;

            public ChapterViewHolder(View view) throws NoSuchMethodException, SecurityException {
                super(view);
                ButterKnife.m10352case(this, view);
            }
        }

        public class ChapterViewHolder_ViewBinding implements Unbinder {
            private ChapterViewHolder target;

            @UiThread
            public ChapterViewHolder_ViewBinding(ChapterViewHolder chapterViewHolder, View view) {
                this.target = chapterViewHolder;
                chapterViewHolder.selectLine = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090398, "field 'selectLine'", ImageView.class);
                chapterViewHolder.tvChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090468, "field 'tvChapter'", TextView.class);
            }

            @Override // butterknife.Unbinder
            @CallSuper
            public void unbind() {
                ChapterViewHolder chapterViewHolder = this.target;
                if (chapterViewHolder == null) {
                    throw new IllegalStateException("Bindings already cleared.");
                }
                this.target = null;
                chapterViewHolder.selectLine = null;
                chapterViewHolder.tvChapter = null;
            }
        }

        public ChapterAdapter() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(int i, View view) {
            try {
                ChapterListBean chapterList = ChapterBottomSheet.this.bookShelfBean.getChapterList(i);
                ChapterBottomSheet.this.bookShelfBean.setDurChapter(Integer.valueOf(chapterList.getDurChapterIndex()));
                ChapterBottomSheet.this.bookShelfBean.setDurChapterPage(0);
                String str = System.currentTimeMillis() + "_chapter";
                String str2 = System.currentTimeMillis() + "_shelf";
                y8.m9768for().m9771new(str2, ChapterBottomSheet.this.bookShelfBean);
                y8.m9768for().m9771new(str, chapterList);
                ChapterBrowseActivity.y1(ChapterBottomSheet.this.mContext, str, str2, 0);
                ChapterBottomSheet.this.dismiss();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.chapters.size();
        }

        @Override // com.futuremind.recyclerviewfastscroll.SectionTitleProvider
        public String getSectionTitle(int i) {
            return String.valueOf(this.chapters.get(i).getDurChapterIndex());
        }

        public void refresh(List<ChapterListBean> list) {
            this.chapters.clear();
            this.chapters.addAll(list);
            notifyDataSetChanged();
        }

        public void refreshPosition(int i) {
            this.selectIndex = i;
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull ChapterViewHolder chapterViewHolder, final int i) {
            chapterViewHolder.tvChapter.setText(this.chapters.get(i).getDurChapterName());
            if (this.selectIndex == i) {
                chapterViewHolder.selectLine.setVisibility(0);
            } else {
                chapterViewHolder.selectLine.setVisibility(4);
            }
            chapterViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.lh
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f3656do.lambda$onBindViewHolder$0(i, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public ChapterViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
            return new ChapterViewHolder(LayoutInflater.from(ChapterBottomSheet.this.mContext).inflate(R.layout.arg_res_0x7f0c004f, viewGroup, false));
        }
    }

    public ChapterBottomSheet(Context context) {
        this.mContext = context;
        this.mActivity = (BaseActivity) context;
        initView();
    }

    public static void moveToPosition(LinearLayoutManager linearLayoutManager, RecyclerView recyclerView, int i) {
        if (linearLayoutManager == null || recyclerView == null) {
            return;
        }
        int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        if (i <= iFindFirstVisibleItemPosition) {
            recyclerView.scrollToPosition(i);
            return;
        }
        if (i <= iFindLastVisibleItemPosition) {
            recyclerView.scrollBy(0, recyclerView.getChildAt(i - iFindFirstVisibleItemPosition).getTop());
        } else if (i > 0) {
            recyclerView.scrollToPosition(i - 1);
        } else {
            recyclerView.scrollToPosition(i);
        }
    }

    public void dismiss() {
        BottomSheetDialog bottomSheetDialog = this.dialog;
        if (bottomSheetDialog == null || !bottomSheetDialog.isShowing()) {
            return;
        }
        this.dialog.dismiss();
        Celse.m22694interface(this.mActivity, this.dialog);
    }

    public void initData(ComicShelfBean comicShelfBean) {
        this.bookShelfBean = comicShelfBean;
        this.mAdapter.refresh(comicShelfBean.getChapterList());
    }

    public void initView() {
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.arg_res_0x7f0c005f, (ViewGroup) null, false);
        this.mView = viewInflate;
        this.mTitle = (TextView) viewInflate.findViewById(R.id.arg_res_0x7f0904be);
        this.mRecyclerView = (RecyclerView) this.mView.findViewById(R.id.arg_res_0x7f0902a4);
        this.mFastScroller = (FastScroller) this.mView.findViewById(R.id.arg_res_0x7f0901b1);
        BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(this.mContext, R.style.arg_res_0x7f1200fa);
        this.dialog = bottomSheetDialog;
        bottomSheetDialog.setContentView(this.mView);
        this.dialog.setCancelable(true);
        this.dialog.setCanceledOnTouchOutside(true);
        BottomSheetBehavior bottomSheetBehaviorM12860extends = BottomSheetBehavior.m12860extends((View) this.mView.getParent());
        double dM3656goto = j10.m3656goto();
        Double.isNaN(dM3656goto);
        bottomSheetBehaviorM12860extends.n((int) (dM3656goto * 0.5d));
        this.dialog.getWindow().setWindowAnimations(R.style.arg_res_0x7f12035e);
        this.mAdapter = new ChapterAdapter();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.mContext);
        this.layoutManager = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        this.mRecyclerView.setLayoutManager(this.layoutManager);
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mFastScroller.setRecyclerView(this.mRecyclerView);
    }

    public boolean isShow() {
        BottomSheetDialog bottomSheetDialog = this.dialog;
        if (bottomSheetDialog != null) {
            return bottomSheetDialog.isShowing();
        }
        return false;
    }

    public void refresh(int i) {
        this.mAdapter.refreshPosition(i);
        moveToPosition(this.layoutManager, this.mRecyclerView, i);
    }

    public void show() {
        BottomSheetDialog bottomSheetDialog = this.dialog;
        if (bottomSheetDialog == null || bottomSheetDialog.isShowing()) {
            return;
        }
        this.dialog.show();
        Celse.l2(this.mActivity, this.dialog).b0();
    }
}
