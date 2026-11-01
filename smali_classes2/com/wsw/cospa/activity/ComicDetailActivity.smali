.class public Lcom/wsw/cospa/activity/ComicDetailActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/wsw/cospa/event/RefreshBookDetailMessageObserver;


# static fields
.field private static final abstract:Ljava/lang/String;

.field private static final continue:I = 0x2

.field private static final strictfp:I = 0x1

.field private static final volatile:I


# instance fields
.field public ablDetails:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09003b
    .end annotation
.end field

.field private break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

.field private catch:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

.field private class:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;

.field private const:Z

.field public contentView:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090115
    .end annotation
.end field

.field private default:Ljava/lang/String;

.field public error_view:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016a
    .end annotation
.end field

.field private extends:Ljava/lang/String;

.field private final:Lcom/wsw/cospa/bean/ComicShelfBean;

.field private finally:Ljava/lang/String;

.field private goto:Lcom/wsw/cospa/bean/SearchComicBean;

.field private import:Z

.field public ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09023a
    .end annotation
.end field

.field public mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a2
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a4
    .end annotation
.end field

.field public mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ab
    .end annotation
.end field

.field private native:Lcom/wsw/cospa/widget/ChangeSourceDialog;

.field private package:Ljava/lang/Integer;

.field private private:Ljava/lang/Integer;

.field private public:Landroidx/recyclerview/widget/GridLayoutManager;

.field private return:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;"
        }
    .end annotation
.end field

.field private static:Z

.field private super:Z

.field private switch:I

.field private this:Lcom/wsw/cospa/bean/ComicShelfBean;

.field private throw:Lcom/wsw/cospa/bean/ComicInfoBean;

.field private throws:Landroid/content/Intent;

.field public tvAddBookshelf:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09045d
    .end annotation
.end field

.field public tvAsc:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09045f
    .end annotation
.end field

.field public tvAuthor:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090460
    .end annotation
.end field

.field public tvComicName:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09046f
    .end annotation
.end field

.field public tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090472
    .end annotation
.end field

.field public tvDescription:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09047a
    .end annotation
.end field

.field public tvErrorView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016b
    .end annotation
.end field

.field public tvLabel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090493
    .end annotation
.end field

.field public tvRange:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a3
    .end annotation
.end field

.field public tvRead:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a4
    .end annotation
.end field

.field public tvRetry:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a7
    .end annotation
.end field

.field public tvState:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b6
    .end annotation
.end field

.field private while:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->const:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->final:Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 4
    iput v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    .line 5
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->import:Z

    const v1, 0x186a1

    .line 6
    iput v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->switch:I

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->package:Ljava/lang/Integer;

    return-void
.end method

.method private D()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->import:Z

    if-nez v0, :cond_0

    .line 2
    iput v2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    const-string v3, "\uff08\u5171%s\u4e2a\u7ae0\u8282\uff09\uff5c\uff08\u7b2c%s\u7ae0\u8282\uff09"

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_3

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/wsw/cospa/widget/ListTree;

    invoke-direct {v0}, Lcom/wsw/cospa/widget/ListTree;-><init>()V

    .line 5
    new-instance v5, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-direct {v5, p0, v0}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;-><init>(Landroid/content/Context;Lcom/wsw/cospa/widget/ListTree;)V

    iput-object v5, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->catch:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRange:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800e8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->catch:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v0, :cond_7

    .line 10
    iget-object v5, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->catch:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->refresh(Ljava/util/List;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    if-eqz v0, :cond_2

    .line 12
    iget-object v5, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvCount:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->catch:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->break(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->U()V

    .line 15
    new-instance v0, Landroid/support/v4/dn;

    invoke-direct {v0, p0}, Landroid/support/v4/dn;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->class:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;

    .line 16
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->catch:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->this(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;)V

    goto/16 :goto_0

    .line 17
    :cond_3
    new-instance v0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    .line 18
    iget v5, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    invoke-virtual {v0, v5}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->goto(I)V

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRange:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800e7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v0, p0, v4, v4, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->public:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 21
    iget-object v5, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v0, :cond_7

    .line 24
    iget-object v5, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->refresh(Ljava/util/List;)V

    .line 25
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    if-eqz v0, :cond_4

    .line 26
    iget-object v5, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvCount:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->this(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 28
    :cond_4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->U()V

    .line 29
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    new-instance v1, Landroid/support/v4/hn;

    invoke-direct {v1, p0}, Landroid/support/v4/hn;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    goto/16 :goto_0

    .line 30
    :cond_5
    new-instance v0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    .line 31
    iget v5, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    invoke-virtual {v0, v5}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->goto(I)V

    .line 32
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRange:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800e6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v5, 0x4

    invoke-direct {v0, p0, v5, v4, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->public:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 34
    iget-object v5, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 35
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 36
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v0, :cond_7

    .line 37
    iget-object v5, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->refresh(Ljava/util/List;)V

    .line 38
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    if-eqz v0, :cond_6

    .line 39
    iget-object v5, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvCount:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->this(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 41
    :cond_6
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->U()V

    .line 42
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    new-instance v1, Landroid/support/v4/fn;

    invoke-direct {v1, p0}, Landroid/support/v4/fn;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private static synthetic E(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/model/while;->goto(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method

.method private synthetic F(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->a()I

    move-result p1

    const/4 p4, 0x1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->setFinalDate(Ljava/lang/Long;)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->n(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 6
    iput-boolean p4, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->const:Z

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAddBookshelf:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p2, "\u79fb\u9664\u4e66\u67b6"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRead:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p2, "\u5f00\u59cb\u9605\u8bfb"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-static {}, Landroid/support/v4/im1;->case()Landroid/support/v4/im1;

    move-result-object p1

    new-array p2, p4, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    const/4 v0, 0x0

    aput-object p4, p2, v0

    invoke-virtual {p1, p2}, Landroid/support/v4/im1;->if([Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u5f53\u524d\u6f2b\u753b\u65e0\u6cd5\u83b7\u53d6\u7ae0\u8282\uff0c\u8bf7\u6362\u6e90\uff01"

    .line 11
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sub-int/2addr p1, p4

    .line 12
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 13
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->u(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    .line 14
    :goto_0
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic G(Lcom/wsw/cospa/bean/ComicShelfBean;Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/wsw/cospa/dao/ComicInfoBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/wsw/cospa/dao/ComicInfoBeanDao$Properties;->try:Lorg/greenrobot/greendao/Property;

    aput-object v3, v1, v2

    .line 3
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 5
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wsw/cospa/dao/do;->finally(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getGroupBean()Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/wsw/cospa/bean/ComicShelfBean;->setGroupId(J)V

    .line 8
    invoke-virtual {p0, v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->setGroupBean(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    .line 9
    :cond_0
    invoke-static {v1}, Lcom/wsw/cospa/dao/do;->k(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 10
    invoke-static {p0}, Lcom/wsw/cospa/dao/do;->n(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic H(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/model/while;->goto(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method

.method private synthetic I(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ChapterListBean;

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->w(Lcom/wsw/cospa/bean/ChapterListBean;I)V

    return-void
.end method

.method private synthetic J(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ChapterListBean;

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->w(Lcom/wsw/cospa/bean/ChapterListBean;I)V

    return-void
.end method

.method private synthetic K(Lcom/wsw/cospa/bean/ChapterListBean;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/wsw/cospa/activity/ComicDetailActivity;->w(Lcom/wsw/cospa/bean/ChapterListBean;I)V

    return-void
.end method

.method private synthetic L(Lcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->native:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isLocal"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "SearchComic"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic M(Lcom/wsw/cospa/bean/ChapterListBean;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/wsw/cospa/activity/ComicDetailActivity;->w(Lcom/wsw/cospa/bean/ChapterListBean;I)V

    return-void
.end method

.method private synthetic N(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ChapterListBean;

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->w(Lcom/wsw/cospa/bean/ChapterListBean;I)V

    return-void
.end method

.method private synthetic O(Lcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V
    .locals 0

    :try_start_0
    const-string p2, "\u7f16\u8f91\u56fe\u6e90"

    .line 1
    invoke-static {p0, p2, p1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->i(Landroid/app/Activity;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static R(Landroid/content/Context;ZLcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isLocal"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "SearchComic"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static S(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isLocal"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "noteUrl"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic a(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->catch:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    return-object p1
.end method

.method public static synthetic abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    return-object p0
.end method

.method public static synthetic b(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->class:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;

    return-object p0
.end method

.method public static synthetic c(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->class:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;

    return-object p1
.end method

.method public static synthetic continue(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)Lcom/wsw/cospa/bean/ComicShelfBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    return-object p1
.end method

.method public static synthetic d(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ChapterListBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/ComicDetailActivity;->w(Lcom/wsw/cospa/bean/ChapterListBean;I)V

    return-void
.end method

.method public static synthetic default(Lcom/wsw/cospa/bean/ComicShelfBean;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->G(Lcom/wsw/cospa/bean/ComicShelfBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic e(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterGridAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    return-object p0
.end method

.method public static synthetic extends(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/activity/ComicDetailActivity;->F(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/adapter/ChapterGridAdapter;)Lcom/wsw/cospa/adapter/ChapterGridAdapter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    return-object p1
.end method

.method public static synthetic finally(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->H(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/wsw/cospa/activity/ComicDetailActivity;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->public:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method public static synthetic h(Lcom/wsw/cospa/activity/ComicDetailActivity;Landroidx/recyclerview/widget/GridLayoutManager;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->public:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p1
.end method

.method public static synthetic i(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->finally:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic implements(Lcom/wsw/cospa/activity/ComicDetailActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->super:Z

    return p0
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/ComicDetailActivity;->O(Lcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic instanceof(Lcom/wsw/cospa/activity/ComicDetailActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->const:Z

    return p1
.end method

.method public static synthetic interface(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/SearchComicBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->goto:Lcom/wsw/cospa/bean/SearchComicBean;

    return-object p0
.end method

.method public static synthetic j(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->default:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic k(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->package:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic l(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->private:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic m(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    return-object p0
.end method

.method public static synthetic n(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ComicInfoBean;)Lcom/wsw/cospa/bean/ComicInfoBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    return-object p1
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/ComicDetailActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->I(I)V

    return-void
.end method

.method public static synthetic o(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->return:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic p(Lcom/wsw/cospa/activity/ComicDetailActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->return:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic package(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ChapterListBean;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/activity/ComicDetailActivity;->M(Lcom/wsw/cospa/bean/ChapterListBean;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic protected(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/SearchComicBean;)Lcom/wsw/cospa/bean/SearchComicBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->goto:Lcom/wsw/cospa/bean/SearchComicBean;

    return-object p1
.end method

.method public static synthetic public(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->L(Lcom/wsw/cospa/bean/SearchComicBean;)V

    return-void
.end method

.method public static synthetic q(Lcom/wsw/cospa/activity/ComicDetailActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->import:Z

    return p0
.end method

.method public static synthetic r(Lcom/wsw/cospa/activity/ComicDetailActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->import:Z

    return p1
.end method

.method public static synthetic return(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ChapterListBean;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/activity/ComicDetailActivity;->K(Lcom/wsw/cospa/bean/ChapterListBean;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic s(Lcom/wsw/cospa/activity/ComicDetailActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    return p0
.end method

.method public static synthetic static(Lcom/wsw/cospa/activity/ComicDetailActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->N(I)V

    return-void
.end method

.method public static synthetic strictfp(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->extends:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic switch(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->E(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic synchronized(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->catch:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    return-object p0
.end method

.method public static synthetic t(Lcom/wsw/cospa/activity/ComicDetailActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    return p1
.end method

.method public static synthetic throws(Lcom/wsw/cospa/activity/ComicDetailActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->J(I)V

    return-void
.end method

.method public static synthetic transient(Lcom/wsw/cospa/activity/ComicDetailActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->D()V

    return-void
.end method

.method public static synthetic volatile()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract:Ljava/lang/String;

    return-object v0
.end method

.method private w(Lcom/wsw/cospa/bean/ChapterListBean;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    const-string v1, "_shelf"

    const-string v2, "_chapter"

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract:Ljava/lang/String;

    const-string v6, "bookShelfBean \u4e3a\u7a7a2"

    invoke-static {v0, v6}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v0

    const-string v6, "comic_shelf_key"

    invoke-virtual {v0, v6}, Landroid/support/v4/y8;->if(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicShelfBean;

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throws:Landroid/content/Intent;

    const-string v6, "noteUrl"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v6, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-nez v6, :cond_0

    .line 7
    invoke-static {v0}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->extends(Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 9
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    .line 10
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/ComicDetailActivity$else;

    invoke-direct {v1, p0, p1, p2}, Lcom/wsw/cospa/activity/ComicDetailActivity$else;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ChapterListBean;I)V

    .line 11
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    goto/16 :goto_0

    .line 12
    :cond_0
    invoke-virtual {v6, v5}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapterPage(Ljava/lang/Integer;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapter(Ljava/lang/Integer;)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapterName(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Landroid/support/v4/im1;->case()Landroid/support/v4/im1;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/support/v4/im1;->if([Ljava/lang/Object;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v2

    iget-object v3, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    invoke-static {p0, v0, v1, p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->x1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v0, v5}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapterPage(Ljava/lang/Integer;)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapter(Ljava/lang/Integer;)V

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapterName(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Landroid/support/v4/im1;->case()Landroid/support/v4/im1;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/support/v4/im1;->if([Ljava/lang/Object;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v2

    iget-object v3, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    invoke-static {p0, v0, v1, p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->x1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public A(Lcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->Q()V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/wsw/cospa/utils/while;->case(Lcom/wsw/cospa/bean/SearchComicBean;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/model/while;->else(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/bn;->do:Landroid/support/v4/bn;

    .line 4
    invoke-virtual {p1, v0}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 5
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    .line 6
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v0, Lcom/wsw/cospa/activity/ComicDetailActivity$new;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/ComicDetailActivity$new;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    .line 7
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public B()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->catch:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ListTreeAdapter;->getItemCount()I

    move-result v0

    return v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->error_view:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->contentView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->error_view:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->contentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public Q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->error_view:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->contentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public T(Lcom/wsw/cospa/bean/ComicInfoBean;)V
    .locals 8

    const/high16 v0, 0x435c0000    # 220.0f

    .line 1
    :try_start_0
    invoke-static {p0, v0}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v0

    float-to-int v5, v0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDetails path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/model/do;->abstract(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->ivCover:Landroid/widget/ImageView;

    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v4

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getCoverHeader()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getDefaultUserAgent(Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/wsw/cospa/utils/finally;->new(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->ivCover:Landroid/widget/ImageView;

    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v4

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->goto:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/SearchComicBean;->getCoverHeader()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getDefaultUserAgent(Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/wsw/cospa/utils/finally;->new(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILjava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/wsw/cospa/utils/synchronized;->else(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v2, Lcom/wsw/cospa/activity/ComicDetailActivity$break;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/activity/ComicDetailActivity$break;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5168\u90e8\u7ae0\u8282\uff08\u5171"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u4e2a\u7ae0\u8282\uff09"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvDescription:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getIntroduce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAuthor:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f5c\u8005\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAuthor:Landroid/widget/TextView;

    new-instance v2, Lcom/wsw/cospa/activity/ComicDetailActivity$catch;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/activity/ComicDetailActivity$catch;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 14
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    :goto_1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 18
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvState:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getKind()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvState:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvState:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const/4 v1, 0x5

    .line 21
    invoke-static {v1}, Landroid/support/v4/h30;->case(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    .line 22
    invoke-static {v1}, Landroid/support/v4/h30;->case(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    .line 23
    iget-object v4, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvState:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 25
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvLabel:Landroid/widget/TextView;

    new-instance v2, Landroid/support/v4/cn;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/cn;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvComicName:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "\u6362\u6e90"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->finally(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->final:Lcom/wsw/cospa/bean/ComicShelfBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "\u5f00\u59cb\u9605\u8bfb"

    if-eqz p1, :cond_5

    .line 28
    :try_start_1
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1, p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->const:Z

    .line 30
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAddBookshelf:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "\u79fb\u9664\u4e66\u67b6"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->final:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result p1

    if-gtz p1, :cond_4

    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->final:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapterPage()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_3

    .line 32
    :cond_3
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRead:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 33
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRead:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "\u7ee7\u7eed\u9605\u8bfb"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 34
    :cond_5
    iput-boolean v3, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->const:Z

    .line 35
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAddBookshelf:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "\u52a0\u5165\u4e66\u67b6"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRead:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public U()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAsc:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->switch:I

    const v2, 0x186a1

    const v3, 0x7f06008d

    if-ne v1, v2, :cond_1

    const-string v1, "\u6b63\u5e8f\u2b07"

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAsc:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const-string v1, "\u5012\u5e8f\u2b06"

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAsc:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public case()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->super:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->Q()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throws:Landroid/content/Intent;

    const-string v1, "noteUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->extends(Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    .line 6
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/ComicDetailActivity$case;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/ComicDetailActivity$case;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    .line 7
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->Q()V

    .line 9
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v0

    const-string v1, "comic_shelf_key"

    invoke-virtual {v0, v1}, Landroid/support/v4/y8;->if(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicShelfBean;

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throws:Landroid/content/Intent;

    const-string v1, "SearchComic"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/SearchComicBean;

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->goto:Lcom/wsw/cospa/bean/SearchComicBean;

    .line 11
    invoke-static {v0}, Lcom/wsw/cospa/utils/while;->case(Lcom/wsw/cospa/bean/SearchComicBean;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/model/do;->abstract(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterParentId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->import:Z

    .line 15
    :cond_3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v2, "chapter_mode_key"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->private()V

    :goto_1
    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c0029

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->case()V

    goto/16 :goto_1

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRead:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "\u5f00\u59cb\u9605\u8bfb"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "_shelf"

    const-string v2, "_chapter"

    const-string v3, "\u5f53\u524d\u6f2b\u753b\u65e0\u6cd5\u83b7\u53d6\u7ae0\u8282\uff0c\u8bf7\u6362\u6e90\uff01"

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v3

    iget-object v4, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v3, v0, v4}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-static {p0, v2, v0, v1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->x1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 11
    :cond_0
    invoke-static {v3}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->final:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->final:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v1

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->final:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ee7\u7eed\u9605\u8bfb : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->final:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->final:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v1

    .line 18
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-static {p0, p1, v0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->w1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 20
    :cond_2
    invoke-static {v3}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 21
    :sswitch_2
    iget p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    const-string v0, "chapter_mode_key"

    if-eqz p1, :cond_d

    const-string v3, "\uff08\u5171%s\u4e2a\u7ae0\u8282\uff09\uff5c\uff08\u7b2c%s\u7ae0\u8282\uff09"

    const-string v4, "noteUrl"

    const-string v5, "comic_shelf_key"

    const v6, 0x7f0800e6

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq p1, v2, :cond_8

    if-eq p1, v8, :cond_3

    goto/16 :goto_1

    .line 22
    :cond_3
    iput v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    .line 23
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    iget v9, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    invoke-virtual {p1, v0, v9}, Landroid/support/v4/v02;->else(Ljava/lang/String;I)V

    .line 24
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-nez p1, :cond_4

    .line 25
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/support/v4/y8;->if(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-nez p1, :cond_15

    .line 26
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throws:Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15

    .line 28
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->extends(Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 29
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    .line 30
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v0, Lcom/wsw/cospa/activity/ComicDetailActivity$if;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/ComicDetailActivity$if;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    .line 31
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    goto/16 :goto_1

    .line 32
    :cond_4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRange:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    if-nez p1, :cond_6

    .line 34
    new-instance p1, Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    invoke-direct {p1, p0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    .line 35
    iget v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->goto(I)V

    .line 36
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    if-eqz p1, :cond_5

    .line 37
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvCount:Landroid/widget/TextView;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result p1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->this(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 39
    :cond_5
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->U()V

    .line 40
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    new-instance v0, Landroid/support/v4/gn;

    invoke-direct {v0, p0}, Landroid/support/v4/gn;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    .line 41
    :cond_6
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->refresh(Ljava/util/List;)V

    .line 42
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->this(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 43
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->public:Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez p1, :cond_7

    .line 44
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p1, p0, v7, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->public:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 45
    :cond_7
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    iget v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->goto(I)V

    .line 46
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->public:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 47
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->public:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 48
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_1

    .line 49
    :cond_8
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->import:Z

    if-nez p1, :cond_9

    .line 50
    iput v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    .line 51
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    iget v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->else(Ljava/lang/String;I)V

    .line 52
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRange:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    iget v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->goto(I)V

    .line 54
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->public:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 55
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 56
    :cond_9
    iput v8, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    .line 57
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    iget v6, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    invoke-virtual {p1, v0, v6}, Landroid/support/v4/v02;->else(Ljava/lang/String;I)V

    .line 58
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-nez p1, :cond_a

    .line 59
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/support/v4/y8;->if(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-nez p1, :cond_15

    .line 60
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throws:Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 62
    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->extends(Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 63
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    .line 64
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v0, Lcom/wsw/cospa/activity/ComicDetailActivity$do;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/ComicDetailActivity$do;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    .line 65
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    goto/16 :goto_1

    .line 66
    :cond_a
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRange:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0800e8

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 68
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->catch:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    if-nez p1, :cond_c

    .line 69
    new-instance p1, Lcom/wsw/cospa/widget/ListTree;

    invoke-direct {p1}, Lcom/wsw/cospa/widget/ListTree;-><init>()V

    .line 70
    new-instance v0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-direct {v0, p0, p1}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;-><init>(Landroid/content/Context;Lcom/wsw/cospa/widget/ListTree;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->catch:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    .line 71
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    if-eqz p1, :cond_b

    .line 72
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvCount:Landroid/widget/TextView;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result p1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->catch:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->break(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 74
    :cond_b
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->U()V

    .line 75
    new-instance p1, Landroid/support/v4/en;

    invoke-direct {p1, p0}, Landroid/support/v4/en;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->class:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;

    .line 76
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->catch:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->this(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;)V

    .line 77
    :cond_c
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->catch:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->refresh(Ljava/util/List;)V

    .line 78
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->catch:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->break(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 79
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->catch:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_1

    .line 80
    :cond_d
    iput v2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    .line 81
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    iget v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->else(Ljava/lang/String;I)V

    .line 82
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRange:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    iget v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->while:I

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->goto(I)V

    .line 84
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->public:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 85
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 86
    :sswitch_3
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getIntroduce()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 87
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getIntroduce()Ljava/lang/String;

    move-result-object p1

    .line 88
    new-instance v1, Lcom/wsw/cospa/utils/DialogTool$new;

    invoke-direct {v1, v0, v0, p1}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance p1, Lcom/wsw/cospa/utils/DialogTool$try;

    invoke-direct {p1, v0, v0}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, v2}, Lcom/wsw/cospa/utils/DialogTool$try;->if(Z)V

    .line 91
    new-instance v0, Lcom/wsw/cospa/activity/ComicDetailActivity$final;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/ComicDetailActivity$final;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    invoke-static {p0, v1, p1, v0}, Lcom/wsw/cospa/utils/DialogTool;->o(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    goto/16 :goto_1

    .line 92
    :sswitch_4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->goto:Lcom/wsw/cospa/bean/SearchComicBean;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 93
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "systemMode"

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 94
    invoke-static {}, Lcom/wsw/cospa/base/BaseActivity;->class()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_0

    .line 95
    :cond_e
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->catch()Z

    move-result p1

    if-eqz p1, :cond_f

    :goto_0
    const/4 v1, 0x1

    .line 96
    :cond_f
    new-instance p1, Lcom/wsw/cospa/widget/ChangeSourceDialog;

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->goto:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-direct {p1, p0, v1, v0}, Lcom/wsw/cospa/widget/ChangeSourceDialog;-><init>(Landroid/content/Context;ILcom/wsw/cospa/bean/SearchComicBean;)V

    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->native:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    .line 97
    new-instance v0, Landroid/support/v4/in;

    invoke-direct {v0, p0}, Landroid/support/v4/in;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->setOnChooseOriginListener(Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;)V

    .line 98
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->native:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->show()V

    goto/16 :goto_1

    .line 99
    :sswitch_5
    iget p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->switch:I

    const v0, 0x186a1

    if-ne p1, v0, :cond_11

    const p1, 0x186a2

    .line 100
    iput p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->switch:I

    .line 101
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    if-eqz v0, :cond_10

    .line 102
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->else(I)V

    .line 103
    :cond_10
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->U()V

    goto/16 :goto_1

    .line 104
    :cond_11
    iput v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->switch:I

    .line 105
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->break:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    if-eqz p1, :cond_12

    .line 106
    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->else(I)V

    .line 107
    :cond_12
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->U()V

    goto :goto_1

    .line 108
    :sswitch_6
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->const:Z

    const-string v1, "\u53d6\u6d88"

    const-string v2, "\u6e29\u99a8\u63d0\u793a"

    if-eqz p1, :cond_13

    .line 109
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    .line 110
    new-instance v3, Lcom/wsw/cospa/utils/DialogTool$new;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u662f\u5426\u5c06"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u79fb\u9664\u4e66\u67b6\uff1f"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v2, v0, p1}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance p1, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string v0, "\u786e\u8ba4"

    invoke-direct {p1, v0, v1}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/wsw/cospa/activity/ComicDetailActivity$class;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/ComicDetailActivity$class;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    invoke-static {p0, v3, p1, v0}, Lcom/wsw/cospa/utils/DialogTool;->o(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    goto :goto_1

    .line 113
    :cond_13
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->final(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 114
    new-instance p1, Lcom/wsw/cospa/utils/DialogTool$new;

    const-string v3, "\u662f\u5426\u8986\u76d6\u4e66\u67b6\u4e2d\u540c\u540d\u6f2b\u753b\uff1f\u8986\u76d6\u5c06\u4e0d\u4f1a\u8bb0\u5fc6\u9605\u8bfb\u8fdb\u5ea6"

    invoke-direct {p1, v2, v0, v3}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string v2, "\u8986\u76d6"

    invoke-direct {v0, v2, v1}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v1, Lcom/wsw/cospa/activity/ComicDetailActivity$const;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/ComicDetailActivity$const;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    invoke-static {p0, p1, v0, v1}, Lcom/wsw/cospa/utils/DialogTool;->o(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    goto :goto_1

    .line 117
    :cond_14
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->x()V

    :cond_15
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09045d -> :sswitch_6
        0x7f09045f -> :sswitch_5
        0x7f09046f -> :sswitch_4
        0x7f09047a -> :sswitch_3
        0x7f0904a3 -> :sswitch_2
        0x7f0904a4 -> :sswitch_1
        0x7f0904a7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->native:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->native:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->onStop()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->native:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->dismiss()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->return:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iput-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->return:Ljava/util/List;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    if-eqz v0, :cond_2

    .line 8
    iput-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v0, :cond_3

    .line 10
    iput-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->final:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v0, :cond_4

    .line 12
    iput-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->final:Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->goto:Lcom/wsw/cospa/bean/SearchComicBean;

    if-eqz v0, :cond_5

    .line 14
    iput-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->goto:Lcom/wsw/cospa/bean/SearchComicBean;

    .line 15
    :cond_5
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v0

    const-string v1, "comic_shelf"

    invoke-virtual {v0, v1}, Landroid/support/v4/y8;->do(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Landroid/support/v4/im1;->case()Landroid/support/v4/im1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->new(Ljava/lang/Object;)V

    .line 17
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v0

    const-string v1, "comic_shelf_key"

    invoke-virtual {v0, v1}, Landroid/support/v4/y8;->do(Ljava/lang/String;)V

    .line 18
    invoke-super {p0}, Lcom/wsw/cospa/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throws:Landroid/content/Intent;

    const-string v0, "SearchComic"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/SearchComicBean;

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->goto:Lcom/wsw/cospa/bean/SearchComicBean;

    const-string v0, "isLocal"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->super:Z

    .line 6
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->case()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09014a

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    const-string v1, "comic_shelf_key"

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {p0}, Lcom/wsw/cospa/activity/ChapterActivity;->interface(Landroid/content/Context;)V

    return v2

    .line 6
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900fe

    if-ne v0, v1, :cond_2

    .line 7
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->this(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    goto/16 :goto_1

    .line 8
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090079

    if-ne v0, v1, :cond_3

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->default:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->extends:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->finally:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->package:Ljava/lang/Integer;

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapterPage()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->private:Ljava/lang/Integer;

    .line 14
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/activity/ComicDetailActivity$this;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/ComicDetailActivity$this;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->runInTx(Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->case()V

    goto/16 :goto_1

    .line 16
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09038a

    if-ne v0, v1, :cond_5

    .line 17
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getAuthor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->g(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    return v2

    .line 21
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09039d

    if-ne v0, v1, :cond_6

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v0, :cond_9

    .line 23
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    .line 24
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    .line 25
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getIntroduce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 28
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "\u5206\u4eab"

    .line 29
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 30
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090446

    if-ne v0, v1, :cond_8

    .line 31
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 32
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    const-string v1, ""

    .line 33
    :goto_0
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0, v2}, Lcom/wsw/cospa/activity/WebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 34
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090312

    if-ne v0, v1, :cond_9

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/utils/while;->goto(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v0

    const-string v1, "\u7f16\u8f91\u56fe\u6e90"

    .line 36
    invoke-static {p0, v1, v0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->i(Landroid/app/Activity;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    :cond_9
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRefreshBookDetailMessage(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->finally(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->final:Lcom/wsw/cospa/bean/ComicShelfBean;

    const-string v0, "\u5f00\u59cb\u9605\u8bfb"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 3
    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v2, p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->const:Z

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAddBookshelf:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "\u79fb\u9664\u4e66\u67b6"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->final:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result p1

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->final:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapterPage()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRead:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRead:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "\u7ee7\u7eed\u9605\u8bfb"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 9
    :cond_2
    iput-boolean v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->const:Z

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAddBookshelf:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "\u52a0\u5165\u4e66\u67b6"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRead:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/hw;->goto()Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 13
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p1, v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->rx()Lorg/greenrobot/greendao/rx/RxQuery;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/rx/RxQuery;->unique()Lrx/Observable;

    move-result-object p1

    invoke-static {}, Landroid/support/v4/ds1;->try()Lrx/if;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->e4(Lrx/if;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/wsw/cospa/activity/ComicDetailActivity$try;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/ComicDetailActivity$try;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    invoke-virtual {p1, v0}, Lrx/Observable;->b4(Lrx/functions/Action1;)Lrx/Subscription;

    :cond_3
    return-void
.end method

.method public private()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/model/while;->else(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/kn;->do:Landroid/support/v4/kn;

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    .line 4
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public this()V
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const-string v1, "\u6f2b\u753b\u8be6\u60c5"

    invoke-static {p0, v0, v1}, Lcom/wsw/cospa/utils/synchronized;->new(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/support/v4/im1;->case()Landroid/support/v4/im1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->for(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAddBookshelf:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRead:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvComicName:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRetry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRange:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAsc:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->U()V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throws:Landroid/content/Intent;

    const-string v1, "isLocal"

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->super:Z

    return-void
.end method

.method public u(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->setGroupId(J)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setGroupBean(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setFinalDate(Ljava/lang/Long;)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->n(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->const:Z

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAddBookshelf:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "\u79fb\u9664\u4e66\u67b6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRead:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "\u5f00\u59cb\u9605\u8bfb"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-static {}, Landroid/support/v4/im1;->case()Landroid/support/v4/im1;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-virtual {v0, p1}, Landroid/support/v4/im1;->if([Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u5f53\u524d\u6f2b\u753b\u65e0\u6cd5\u83b7\u53d6\u7ae0\u8282\uff0c\u8bf7\u6362\u6e90\uff01"

    .line 12
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->goto:Lcom/wsw/cospa/bean/SearchComicBean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/SearchComicBean;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->goto:Lcom/wsw/cospa/bean/SearchComicBean;

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/SearchComicBean;->setAuthor(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->goto:Lcom/wsw/cospa/bean/SearchComicBean;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/SearchComicBean;->setCoverUrl(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->goto:Lcom/wsw/cospa/bean/SearchComicBean;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getIntroduce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/SearchComicBean;->setIntroduce(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->goto:Lcom/wsw/cospa/bean/SearchComicBean;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/SearchComicBean;->setName(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->goto:Lcom/wsw/cospa/bean/SearchComicBean;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/SearchComicBean;->setKind(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->goto:Lcom/wsw/cospa/bean/SearchComicBean;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/SearchComicBean;->setNoteUrl(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->goto:Lcom/wsw/cospa/bean/SearchComicBean;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/SearchComicBean;->setOrigin(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->goto:Lcom/wsw/cospa/bean/SearchComicBean;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->throw:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/SearchComicBean;->setTag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public x()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/do;->h()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getGroupId()J

    move-result-wide v2

    const-string v4, "\u5168\u90e8"

    .line 4
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 7
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 8
    invoke-virtual {v5}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getGroupName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 10
    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 11
    new-instance v4, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    invoke-direct {v4, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;-><init>(Landroid/content/Context;)V

    const-string v5, "\u9009\u62e9\u4e66\u67b6"

    .line 12
    invoke-virtual {v4, v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->volatile(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    .line 13
    new-instance v5, Landroid/support/v4/an;

    invoke-direct {v5, p0, v4, v0}, Landroid/support/v4/an;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;)V

    invoke-virtual {v4, v1, v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->synchronized([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    const-wide/16 v0, 0x0

    cmp-long v5, v2, v0

    if-lez v5, :cond_1

    long-to-int v0, v2

    .line 14
    invoke-virtual {v4, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->b(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    .line 15
    :cond_1
    invoke-virtual {v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->interface()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    goto :goto_1

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setFinalDate(Ljava/lang/Long;)V

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->n(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->const:Z

    .line 21
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAddBookshelf:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "\u79fb\u9664\u4e66\u67b6"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRead:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "\u5f00\u59cb\u9605\u8bfb"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-static {}, Landroid/support/v4/im1;->case()Landroid/support/v4/im1;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity;->this:Lcom/wsw/cospa/bean/ComicShelfBean;

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Landroid/support/v4/im1;->if([Ljava/lang/Object;)V

    .line 24
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string v0, "\u5f53\u524d\u6f2b\u753b\u65e0\u6cd5\u83b7\u53d6\u7ae0\u8282\uff0c\u8bf7\u6362\u6e90\uff01"

    .line 25
    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public y(Lcom/wsw/cospa/bean/SearchComicBean;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->super(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method public z(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Landroid/support/v4/jn;

    invoke-direct {v0, p1}, Landroid/support/v4/jn;-><init>(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    .line 3
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/ComicDetailActivity$for;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity$for;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method
