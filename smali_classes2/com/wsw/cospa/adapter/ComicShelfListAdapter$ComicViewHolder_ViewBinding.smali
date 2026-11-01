.class public Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder_ViewBinding;->do:Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;

    .line 3
    const-class v0, Lcom/wsw/cospa/widget/view/RoundImageView;

    const v1, 0x7f09023a

    const-string v2, "field \'ivCover\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/RoundImageView;

    iput-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904a0

    const-string v2, "field \'tvOrigin\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvOrigin:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09046f

    const-string v2, "field \'tvComicName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvComicName:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090494

    const-string v2, "field \'tvLastChapter\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvLastChapter:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904a5

    const-string v2, "field \'tvReadChapter\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvReadChapter:Landroid/widget/TextView;

    .line 8
    const-class v0, Lcom/wsw/cospa/widget/BadgeView;

    const v1, 0x7f0900da

    const-string v2, "field \'unRead\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/BadgeView;

    iput-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->unRead:Lcom/wsw/cospa/widget/BadgeView;

    .line 9
    const-class v0, Lcom/wang/avi/AVLoadingIndicatorView;

    const v1, 0x7f0902a2

    const-string v2, "field \'loadingView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wang/avi/AVLoadingIndicatorView;

    iput-object p2, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->loadingView:Lcom/wang/avi/AVLoadingIndicatorView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder_ViewBinding;->do:Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder_ViewBinding;->do:Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvOrigin:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvComicName:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvLastChapter:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvReadChapter:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->unRead:Lcom/wsw/cospa/widget/BadgeView;

    .line 9
    iput-object v1, v0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->loadingView:Lcom/wang/avi/AVLoadingIndicatorView;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
