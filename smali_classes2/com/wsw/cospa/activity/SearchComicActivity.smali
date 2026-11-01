.class public Lcom/wsw/cospa/activity/SearchComicActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/activity/SearchComicActivity$this;
    }
.end annotation


# instance fields
.field private break:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

.field private catch:Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;

.field private class:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private const:Landroidx/recyclerview/widget/GridLayoutManager;

.field private default:Z

.field public et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090194
    .end annotation
.end field

.field private extends:I

.field public fabSearchStop:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ab
    .end annotation
.end field

.field private final:Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

.field private finally:Lcom/wsw/cospa/bean/ComicSourceBean;

.field private goto:Lcom/wsw/cospa/model/SearchComicModel;

.field private import:Lcom/wsw/cospa/activity/SearchComicActivity$this;

.field public ivCleanHistory:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090236
    .end annotation
.end field

.field public ll_comic_shelf:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027a
    .end annotation
.end field

.field public ll_comic_source:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027b
    .end annotation
.end field

.field public mFloatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09029f
    .end annotation
.end field

.field public mFloatingButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a0
    .end annotation
.end field

.field public mFlowLayout:Lcom/wsw/cospa/widget/view/FlowLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d7
    .end annotation
.end field

.field public mFlowView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d6
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a4
    .end annotation
.end field

.field public mRefreshLayout:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a6
    .end annotation
.end field

.field private native:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private package:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private public:Lcom/wsw/cospa/widget/explosionfield/ExplosionField;

.field private return:I

.field public root_search_view:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09036f
    .end annotation
.end field

.field public scrollLayout:Lcom/gaoneng/library/AutoScrollBackLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090384
    .end annotation
.end field

.field public shelfRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903a2
    .end annotation
.end field

.field private static:I

.field private super:J

.field private switch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;"
        }
    .end annotation
.end field

.field public tbToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090428
    .end annotation
.end field

.field private this:Lcom/wsw/cospa/adapter/SearchComicAdapter;

.field private throw:Landroid/support/v4/o42;

.field private throws:Z

.field public tv_source_name:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b4
    .end annotation
.end field

.field private while:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->native:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->return:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->static:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->switch:Ljava/util/List;

    return-void
.end method

.method private synthetic a(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->break:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/SearchComicListAdapter;->case(I)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->R(Landroid/content/Context;ZLcom/wsw/cospa/bean/SearchComicBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic abstract(Lcom/wsw/cospa/activity/SearchComicActivity;Lcom/wsw/cospa/bean/ComicSourceBean;)Lcom/wsw/cospa/bean/ComicSourceBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->finally:Lcom/wsw/cospa/bean/ComicSourceBean;

    return-object p1
.end method

.method private synthetic b(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->this:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/SearchComicAdapter;->try(I)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->R(Landroid/content/Context;ZLcom/wsw/cospa/bean/SearchComicBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->this:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/SearchComicAdapter;->try(I)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->R(Landroid/content/Context;ZLcom/wsw/cospa/bean/SearchComicBean;)V

    return-void
.end method

.method public static synthetic continue(Lcom/wsw/cospa/activity/SearchComicActivity;)Landroid/support/v4/o42;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->throw:Landroid/support/v4/o42;

    return-object p0
.end method

.method private synthetic d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->break:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/SearchComicListAdapter;->case(I)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->R(Landroid/content/Context;ZLcom/wsw/cospa/bean/SearchComicBean;)V

    return-void
.end method

.method public static synthetic default(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/model/SearchComicModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->goto:Lcom/wsw/cospa/model/SearchComicModel;

    return-object p0
.end method

.method private e(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFlowView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFlowView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->ll_comic_shelf:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRefreshLayout:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFlowView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFlowView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->ll_comic_shelf:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRefreshLayout:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->static:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->break:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    invoke-virtual {p1}, Lcom/wsw/cospa/adapter/SearchComicListAdapter;->clearList()V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->this:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    invoke-virtual {p1}, Lcom/wsw/cospa/adapter/SearchComicAdapter;->clearList()V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollTo(II)V

    :goto_1
    return-void
.end method

.method public static synthetic extends(Lcom/wsw/cospa/activity/SearchComicActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->while:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic finally(Lcom/wsw/cospa/activity/SearchComicActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->while:Ljava/lang/String;

    return-object p1
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "searchKey"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private i()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFloatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->final()V

    .line 2
    iget v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->static:I

    const-string v1, "search_mode_key"

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 3
    new-instance v0, Lcom/wsw/cospa/adapter/SearchComicAdapter;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/adapter/SearchComicAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->this:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->final:Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->this:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->const:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->this:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->this:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    iget-object v2, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->switch:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/SearchComicAdapter;->refresh(Ljava/util/List;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->this:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    new-instance v2, Landroid/support/v4/vs1;

    invoke-direct {v2, p0}, Landroid/support/v4/vs1;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/SearchComicAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    .line 14
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->else(Ljava/lang/String;I)V

    .line 15
    iput v2, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->static:I

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFloatingButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFloatingButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const-string v1, "\u5217\u8868\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_1
    new-instance v0, Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/adapter/SearchComicListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->break:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->final:Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 24
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->break:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 25
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->class:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 26
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->break:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 27
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->break:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    iget-object v2, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->while:Ljava/lang/String;

    iget-object v3, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->switch:Ljava/util/List;

    invoke-virtual {v0, v2, v3}, Lcom/wsw/cospa/adapter/SearchComicListAdapter;->final(Ljava/lang/String;Ljava/util/List;)V

    .line 28
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->break:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    new-instance v2, Landroid/support/v4/ts1;

    invoke-direct {v2, p0}, Landroid/support/v4/ts1;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/SearchComicListAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    .line 29
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/v02;->else(Ljava/lang/String;I)V

    .line 30
    iput v4, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->static:I

    .line 31
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFloatingButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFloatingButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const-string v1, "\u8868\u683c\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTitle(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static synthetic implements(Landroid/view/View;ILcom/wsw/cospa/widget/view/FlowLayout;)V
    .locals 0

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/SearchComicActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->a(I)V

    return-void
.end method

.method private synthetic instanceof(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/wsw/cospa/activity/SearchSourceView;

    new-instance v0, Lcom/wsw/cospa/activity/SearchComicActivity$new;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/SearchComicActivity$new;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V

    invoke-direct {p1, p0, v0}, Lcom/wsw/cospa/activity/SearchSourceView;-><init>(Landroid/app/Activity;Lcom/wsw/cospa/activity/SearchSourceView$onSourceFilterListener;)V

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/activity/SearchSourceView;->goto()Landroid/widget/PopupWindow;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->tbToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/activity/SearchSourceView;->native(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic interface(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/activity/SearchComicActivity$this;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->import:Lcom/wsw/cospa/activity/SearchComicActivity$this;

    return-object p0
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/SearchComicActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->d(I)V

    return-void
.end method

.method public static synthetic package(Lcom/wsw/cospa/activity/SearchComicActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->super:J

    return-wide v0
.end method

.method public static synthetic private(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/bean/ComicSourceBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->finally:Lcom/wsw/cospa/bean/ComicSourceBean;

    return-object p0
.end method

.method public static synthetic protected(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->catch:Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;

    return-object p0
.end method

.method public static synthetic public(Landroid/view/View;ILcom/wsw/cospa/widget/view/FlowLayout;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/activity/SearchComicActivity;->implements(Landroid/view/View;ILcom/wsw/cospa/widget/view/FlowLayout;)V

    return-void
.end method

.method public static synthetic return(Lcom/wsw/cospa/activity/SearchComicActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->b(I)V

    return-void
.end method

.method public static synthetic static(Lcom/wsw/cospa/activity/SearchComicActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->c(I)V

    return-void
.end method

.method public static synthetic strictfp(Lcom/wsw/cospa/activity/SearchComicActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->native:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic switch(Lcom/wsw/cospa/activity/SearchComicActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->instanceof(Landroid/view/View;)V

    return-void
.end method

.method private synthetic synchronized(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    if-nez p2, :cond_1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->while:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->return:I

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/SearchComicActivity;->h()V

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic throws(Lcom/wsw/cospa/activity/SearchComicActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/activity/SearchComicActivity;->synchronized(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic transient(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/widget/explosionfield/ExplosionField;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->public:Lcom/wsw/cospa/widget/explosionfield/ExplosionField;

    return-object p0
.end method

.method public static synthetic volatile(Lcom/wsw/cospa/activity/SearchComicActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->native:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public case()V
    .locals 4

    .line 1
    new-instance v0, Lcom/wsw/cospa/model/SearchComicModel;

    invoke-direct {v0, p0, p0}, Lcom/wsw/cospa/model/SearchComicModel;-><init>(Landroid/app/Activity;Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->goto:Lcom/wsw/cospa/model/SearchComicModel;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->super:J

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->goto:Lcom/wsw/cospa/model/SearchComicModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/model/SearchComicModel;->interface(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->goto:Lcom/wsw/cospa/model/SearchComicModel;

    iget-wide v2, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->super:J

    invoke-virtual {v0, v2, v3}, Lcom/wsw/cospa/model/SearchComicModel;->protected(J)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFlowLayout:Lcom/wsw/cospa/widget/view/FlowLayout;

    sget-object v2, Landroid/support/v4/ws1;->do:Landroid/support/v4/ws1;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/widget/view/FlowLayout;->setOnItemClickListener(Lcom/wsw/cospa/widget/view/FlowLayout$OnItemClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFlowView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRefreshLayout:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->ll_comic_shelf:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    invoke-static {p0}, Landroid/support/v4/o42;->new(Landroid/content/Context;)Landroid/support/v4/o42;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->throw:Landroid/support/v4/o42;

    .line 10
    invoke-virtual {v0}, Landroid/support/v4/o42;->try()[Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->native:Ljava/util/List;

    .line 12
    new-instance v2, Lcom/wsw/cospa/activity/SearchComicActivity$this;

    invoke-direct {v2, p0, v0}, Lcom/wsw/cospa/activity/SearchComicActivity$this;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity;Ljava/util/List;)V

    iput-object v2, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->import:Lcom/wsw/cospa/activity/SearchComicActivity$this;

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFlowLayout:Lcom/wsw/cospa/widget/view/FlowLayout;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/widget/view/FlowLayout;->setAdapter(Lcom/wsw/cospa/widget/view/FlowAdapter;)V

    .line 14
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v2, "block_comic"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    const-class v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/wsw/cospa/utils/package;->for(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->package:Ljava/util/List;

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "searchKey"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    iput v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->return:I

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->while:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/SearchComicActivity;->h()V

    :cond_0
    return-void
.end method

.method public checkIsExist(Lcom/wsw/cospa/bean/SearchComicBean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public f(Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 4
    invoke-static {p1, v0}, Landroid/support/v4/j10;->if(Landroid/view/View;Z)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->fabSearchStop:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->switch()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    const-string v0, "input_method"

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    .line 6
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    invoke-static {v0}, Landroid/support/v4/j10;->do(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRefreshLayout:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->startRefresh()V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFlowView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRefreshLayout:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->ll_comic_shelf:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->throw:Landroid/support/v4/o42;

    iget-object v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->while:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/o42;->case(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->throw:Landroid/support/v4/o42;

    iget-object v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->while:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/o42;->do(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->throw:Landroid/support/v4/o42;

    invoke-virtual {v0}, Landroid/support/v4/o42;->try()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->native:Ljava/util/List;

    .line 16
    iget-object v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->import:Lcom/wsw/cospa/activity/SearchComicActivity$this;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/widget/view/FlowAdapter;->refresh(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public loadMoreFinish(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRefreshLayout:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->finishLoading()V

    :cond_0
    return-void
.end method

.method public loadMoreSearchBook(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 2
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->throws:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->package:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/SearchComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->while:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->while:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->package:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/SearchComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v3

    .line 14
    iget-object v4, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->while:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->while:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->package:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 19
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v2

    .line 20
    iget-object v3, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->package:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 21
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 22
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    :cond_8
    iget p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->static:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    .line 24
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->break:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    iget-object v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->while:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wsw/cospa/adapter/SearchComicListAdapter;->new(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_3

    .line 25
    :cond_9
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->this:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    iget-object v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->while:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wsw/cospa/adapter/SearchComicAdapter;->new(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_3
    return-void
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c0041

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    invoke-static {v0}, Landroid/support/v4/j10;->do(Landroid/view/View;)V

    .line 2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090236

    if-eq p1, v0, :cond_2

    const v0, 0x7f0902a0

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->static:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->break:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    invoke-virtual {p1}, Lcom/wsw/cospa/adapter/SearchComicListAdapter;->getList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->switch:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->this:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    invoke-virtual {p1}, Lcom/wsw/cospa/adapter/SearchComicAdapter;->getList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->switch:Ljava/util/List;

    .line 5
    :goto_0
    invoke-direct {p0}, Lcom/wsw/cospa/activity/SearchComicActivity;->i()V

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->throw:Landroid/support/v4/o42;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/support/v4/o42;->if()V

    const-string p1, "\u6e05\u9664\u6210\u529f"

    .line 8
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->throw:Landroid/support/v4/o42;

    invoke-virtual {p1}, Landroid/support/v4/o42;->try()[Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->native:Ljava/util/List;

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->import:Lcom/wsw/cospa/activity/SearchComicActivity$this;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/view/FlowAdapter;->refresh(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/wsw/cospa/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->goto:Lcom/wsw/cospa/model/SearchComicModel;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/model/SearchComicModel;->abstract()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {p0}, Landroid/support/v4/jh0;->do(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->for()V

    :cond_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/SearchComicActivity;->this()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "searchKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->return:I

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->while:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/SearchComicActivity;->h()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 2
    :sswitch_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 3
    iget v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->static:I

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->break:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/SearchComicListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->switch:Ljava/util/List;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->this:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/SearchComicAdapter;->getList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->switch:Ljava/util/List;

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/wsw/cospa/activity/SearchComicActivity;->i()V

    goto :goto_1

    .line 7
    :sswitch_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->while:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iput v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->return:I

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/SearchComicActivity;->h()V

    return v1

    .line 11
    :sswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 12
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    const-string v2, "pref_precise_search"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 13
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->throws:Z

    goto :goto_1

    .line 14
    :sswitch_3
    invoke-static {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->A(Landroid/content/Context;)V

    goto :goto_1

    .line 15
    :sswitch_4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/SearchComicActivity;->onBackPressed()V

    return v1

    .line 16
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_4
        0x7f09006b -> :sswitch_3
        0x7f090078 -> :sswitch_2
        0x7f090227 -> :sswitch_1
        0x7f090228 -> :sswitch_0
        0x7f090229 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    invoke-static {v0}, Landroid/support/v4/j10;->do(Landroid/view/View;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "pref_precise_search"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->throws:Z

    const v0, 0x7f090078

    .line 2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->throws:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "search_mode_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->static:I

    if-ne v0, v2, :cond_0

    const v0, 0x7f090229

    .line 4
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f090228

    .line 5
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 6
    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 7
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public refreshFinish(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRefreshLayout:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->finishRefresh()V

    :cond_0
    return-void
.end method

.method public refreshSearchBook()V
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "search_mode_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->static:I

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->switch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->static:I

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->break:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/SearchComicListAdapter;->clearList()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->this:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/SearchComicAdapter;->clearList()V

    :goto_0
    return-void
.end method

.method public searchBookError(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public this()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->scrollLayout:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-virtual {v0}, Lcom/gaoneng/library/AutoScrollBackLayout;->this()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->tbToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/synchronized;->for(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;)V

    .line 5
    invoke-static {p0}, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->attach2Window(Landroid/app/Activity;)Lcom/wsw/cospa/widget/explosionfield/ExplosionField;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->public:Lcom/wsw/cospa/widget/explosionfield/ExplosionField;

    .line 6
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v2, "pref_precise_search"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->throws:Z

    .line 7
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->class:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 9
    new-instance v0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->catch:Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->shelfRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->shelfRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->catch:Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->catch:Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;

    new-instance v4, Lcom/wsw/cospa/activity/SearchComicActivity$do;

    invoke-direct {v4, p0}, Lcom/wsw/cospa/activity/SearchComicActivity$do;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->setOnSearchComicListener(Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$OnSearchComicListener;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->fabSearchStop:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->class()V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->fabSearchStop:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v4, Lcom/wsw/cospa/activity/SearchComicActivity$if;

    invoke-direct {v4, p0}, Lcom/wsw/cospa/activity/SearchComicActivity$if;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-static {p0}, Landroid/support/v4/j10;->super(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->default:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 16
    iput v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->extends:I

    goto :goto_0

    .line 17
    :cond_0
    iput v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->extends:I

    .line 18
    :goto_0
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->extends:I

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->const:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 19
    new-instance v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;-><init>(I)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->final:Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->ivCleanHistory:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFloatingButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFloatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    new-instance v1, Lcom/wsw/cospa/activity/SearchComicActivity$for;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/SearchComicActivity$for;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setOnFloatingActionsMenuUpdateListener(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;)V

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->ll_comic_source:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/support/v4/qs1;

    invoke-direct {v1, p0}, Landroid/support/v4/qs1;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRefreshLayout:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    iget-object v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->setRefreshDataView(Landroid/view/View;)V

    .line 25
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRefreshLayout:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    new-instance v1, Lcom/wsw/cospa/activity/SearchComicActivity$try;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/SearchComicActivity$try;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->setOnRefreshListener(Lcom/wsw/cospa/widget/view/refresh/JFengRefreshListener;)V

    .line 26
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    new-instance v1, Lcom/wsw/cospa/activity/SearchComicActivity$case;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/SearchComicActivity$case;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 27
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    new-instance v1, Lcom/wsw/cospa/activity/SearchComicActivity$else;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/SearchComicActivity$else;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/SearchEditText;->setOnClearTextListener(Lcom/wsw/cospa/widget/view/SearchEditText$onClearTextListener;)V

    .line 28
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    new-instance v1, Landroid/support/v4/rs1;

    invoke-direct {v1, p0}, Landroid/support/v4/rs1;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 29
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    new-instance v1, Lcom/wsw/cospa/activity/SearchComicActivity$goto;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/SearchComicActivity$goto;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    const/16 v1, 0xa

    .line 31
    invoke-virtual {v0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 32
    iget-object v3, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 33
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v3, "search_mode_key"

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->static:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 34
    new-instance v0, Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/adapter/SearchComicListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->break:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    .line 35
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->class:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 36
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 37
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 38
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->break:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 39
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 40
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->break:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 41
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->break:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    new-instance v1, Landroid/support/v4/ss1;

    invoke-direct {v1, p0}, Landroid/support/v4/ss1;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/SearchComicListAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFloatingButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFloatingButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const-string v1, "\u8868\u683c\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 44
    :cond_1
    new-instance v0, Lcom/wsw/cospa/adapter/SearchComicAdapter;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/adapter/SearchComicAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->this:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    .line 45
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->const:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 46
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->final:Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 47
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 48
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 49
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->this:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 50
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 51
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->this:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 52
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->this:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    new-instance v1, Landroid/support/v4/us1;

    invoke-direct {v1, p0}, Landroid/support/v4/us1;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/SearchComicAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFloatingButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFloatingButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const-string v1, "\u5217\u8868\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTitle(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
