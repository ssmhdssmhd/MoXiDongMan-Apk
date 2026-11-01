package com.wsw.cospa.widget.view;

import android.content.Context;
import android.support.v4.j10;
import android.support.v4.y8;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
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
import com.gaoneng.library.AutoScrollBackLayout;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.ChapterBrowseActivity;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.widget.view.FlowLayout;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class CatalogLayout extends RelativeLayout implements FlowLayout.OnItemClickListener {
    private static final int ANIMATION_TIME = 300;
    private ComicShelfBean bookShelfBean;
    private boolean isShow;
    private LinearLayoutManager layoutManager;
    private ChapterAdapter mAdapter;
    private FastScroller mFastScroller;
    private RecyclerView mRecyclerView;
    private TextView mTitle;
    private int reqWidth;

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
            ChapterListBean chapterList = CatalogLayout.this.bookShelfBean.getChapterList(i);
            CatalogLayout.this.bookShelfBean.setDurChapter(Integer.valueOf(chapterList.getDurChapterIndex()));
            CatalogLayout.this.bookShelfBean.setDurChapterPage(0);
            String str = System.currentTimeMillis() + "_chapter";
            String str2 = System.currentTimeMillis() + "_shelf";
            y8.m9768for().m9771new(str2, CatalogLayout.this.bookShelfBean);
            y8.m9768for().m9771new(str, chapterList);
            ChapterBrowseActivity.y1(CatalogLayout.this.getContext(), str, str2, 0);
            CatalogLayout.this.setVisibility(8);
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
            chapterViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.sf
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f6138do.lambda$onBindViewHolder$0(i, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public ChapterViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
            return new ChapterViewHolder(LayoutInflater.from(CatalogLayout.this.getContext()).inflate(R.layout.arg_res_0x7f0c004f, viewGroup, false));
        }
    }

    public class TagFlowAdapter extends FlowAdapter<ChapterListBean> {
        public TagFlowAdapter(List<ChapterListBean> list) {
            super(list);
        }

        @Override // com.wsw.cospa.widget.view.FlowAdapter
        public View getView(int i, FlowLayout flowLayout) {
            TextView textView = (TextView) LayoutInflater.from(flowLayout.getContext()).inflate(R.layout.arg_res_0x7f0c004e, (ViewGroup) flowLayout, false);
            textView.setBackground(CatalogLayout.this.getResources().getDrawable(R.drawable.arg_res_0x7f08008e));
            textView.setWidth(CatalogLayout.this.reqWidth);
            textView.setText(getItem(i).getDurChapterName());
            return textView;
        }
    }

    public CatalogLayout(Context context) {
        this(context, null);
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

    public void initData(ComicShelfBean comicShelfBean) {
        this.bookShelfBean = comicShelfBean;
        this.mAdapter.refresh(comicShelfBean.getChapterList());
    }

    public boolean isShow() {
        return this.isShow;
    }

    @Override // android.view.View
    public void onFinishInflate() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onFinishInflate();
        this.mTitle = (TextView) getChildAt(0);
        AutoScrollBackLayout autoScrollBackLayout = (AutoScrollBackLayout) getChildAt(1);
        this.mRecyclerView = (RecyclerView) autoScrollBackLayout.findViewById(R.id.arg_res_0x7f0902a4);
        this.mFastScroller = (FastScroller) autoScrollBackLayout.findViewById(R.id.arg_res_0x7f0901b1);
        autoScrollBackLayout.m12373this();
        this.mAdapter = new ChapterAdapter();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        this.layoutManager = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        this.mRecyclerView.setLayoutManager(this.layoutManager);
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mFastScroller.setRecyclerView(this.mRecyclerView);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = j10.m3656goto() / 2;
        setLayoutParams(layoutParams);
        this.reqWidth = (j10.m3649catch() - (((int) j10.m3660new(getContext(), 12.0f)) * 5)) / 4;
    }

    @Override // com.wsw.cospa.widget.view.FlowLayout.OnItemClickListener
    public void onItemClick(View view, int i, FlowLayout flowLayout) {
        ChapterListBean chapterList = this.bookShelfBean.getChapterList(i);
        String str = System.currentTimeMillis() + "_chapter";
        String str2 = System.currentTimeMillis() + "_shelf";
        y8.m9768for().m9771new(str2, this.bookShelfBean);
        y8.m9768for().m9771new(str, chapterList);
        ChapterBrowseActivity.y1(getContext(), str, str2, i);
        setVisibility(8);
    }

    public void refresh(int i) {
        this.mAdapter.refreshPosition(i);
        moveToPosition(this.layoutManager, this.mRecyclerView, i);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i == 0) {
            super.setVisibility(0);
            AnimationSet animationSet = new AnimationSet(true);
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, j10.m3660new(getContext(), 240.0f), 0.0f);
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            animationSet.addAnimation(translateAnimation);
            animationSet.addAnimation(alphaAnimation);
            animationSet.setDuration(300L);
            startAnimation(animationSet);
            this.isShow = true;
            return;
        }
        if (i == 4) {
            super.setVisibility(4);
            return;
        }
        if (i != 8) {
            return;
        }
        super.setVisibility(8);
        AnimationSet animationSet2 = new AnimationSet(true);
        TranslateAnimation translateAnimation2 = new TranslateAnimation(0.0f, 0.0f, 0.0f, j10.m3660new(getContext(), 240.0f));
        AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
        animationSet2.addAnimation(translateAnimation2);
        animationSet2.addAnimation(alphaAnimation2);
        animationSet2.setDuration(300L);
        startAnimation(animationSet2);
        this.isShow = false;
    }

    public CatalogLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CatalogLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.reqWidth = 0;
    }
}
