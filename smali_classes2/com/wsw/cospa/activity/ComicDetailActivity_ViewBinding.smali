.class public Lcom/wsw/cospa/activity/ComicDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/activity/ComicDetailActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/activity/ComicDetailActivity_ViewBinding;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/activity/ComicDetailActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09023a

    const-string v2, "field \'ivCover\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->ivCover:Landroid/widget/ImageView;

    .line 5
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0902ab

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 6
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f09003b

    const-string v2, "field \'ablDetails\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->ablDetails:Lcom/google/android/material/appbar/AppBarLayout;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09047a

    const-string v2, "field \'tvDescription\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvDescription:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090460

    const-string v2, "field \'tvAuthor\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAuthor:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090493

    const-string v2, "field \'tvLabel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvLabel:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904b6

    const-string v2, "field \'tvState\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvState:Landroid/widget/TextView;

    .line 11
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090115

    const-string v2, "field \'contentView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->contentView:Landroid/widget/RelativeLayout;

    .line 12
    const-class v0, Lcom/wang/avi/AVLoadingIndicatorView;

    const v1, 0x7f0902a2

    const-string v2, "field \'mIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wang/avi/AVLoadingIndicatorView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    .line 13
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09016a

    const-string v2, "field \'error_view\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->error_view:Landroid/widget/RelativeLayout;

    .line 14
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904a7

    const-string v2, "field \'tvRetry\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRetry:Landroid/widget/TextView;

    .line 15
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09016b

    const-string v2, "field \'tvErrorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvErrorView:Landroid/widget/TextView;

    .line 16
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f09046f

    const-string v2, "field \'tvComicName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvComicName:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f09045d

    const-string v2, "field \'tvAddBookshelf\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAddBookshelf:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0904a4

    const-string v2, "field \'tvRead\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRead:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090472

    const-string v2, "field \'tvCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvCount:Landroid/widget/TextView;

    .line 20
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09045f

    const-string v2, "field \'tvAsc\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAsc:Landroid/widget/TextView;

    .line 21
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0904a3

    const-string v2, "field \'tvRange\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRange:Landroid/widget/ImageView;

    .line 22
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0902a4

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->ivCover:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->ablDetails:Lcom/google/android/material/appbar/AppBarLayout;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvDescription:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAuthor:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvLabel:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvState:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->contentView:Landroid/widget/RelativeLayout;

    .line 11
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    .line 12
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->error_view:Landroid/widget/RelativeLayout;

    .line 13
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRetry:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvErrorView:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvComicName:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAddBookshelf:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRead:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvCount:Landroid/widget/TextView;

    .line 19
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAsc:Landroid/widget/TextView;

    .line 20
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRange:Landroid/widget/ImageView;

    .line 21
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
