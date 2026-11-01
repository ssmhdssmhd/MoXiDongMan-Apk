.class public Lcom/wsw/cospa/widget/OriginChooseDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/OriginChooseDialog$ChapterViewHolder;,
        Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;,
        Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;
    }
.end annotation


# instance fields
.field private click:Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;

.field private mContext:Landroid/app/Activity;

.field private originAdapter:Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;

.field private rvOrigin:Landroidx/recyclerview/widget/RecyclerView;

.field private searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

.field private searchComicModel:Lcom/wsw/cospa/model/SearchComicModel;

.field private searchTime:J

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private tvComicName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->mContext:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/OriginChooseDialog;)Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->click:Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;

    return-object p0
.end method

.method public static synthetic do(Lcom/wsw/cospa/widget/OriginChooseDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/widget/OriginChooseDialog;->lambda$initData$0()V

    return-void
.end method

.method private getOriginList(Lcom/wsw/cospa/bean/SearchComicBean;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/wsw/cospa/bean/SearchComicBean;->setChecked(Ljava/lang/Boolean;)V

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 6
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->extends(Lcom/wsw/cospa/bean/SearchComicBean;)Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    .line 8
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 9
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v6}, Lcom/wsw/cospa/bean/SearchComicBean;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private initData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->tvComicName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/SearchComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/SearchComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->originAdapter:Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;

    iget-object v1, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-direct {p0, v1}, Lcom/wsw/cospa/widget/OriginChooseDialog;->getOriginList(Lcom/wsw/cospa/bean/SearchComicBean;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->refresh(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Landroid/support/v4/m81;

    invoke-direct {v1, p0}, Landroid/support/v4/m81;-><init>(Lcom/wsw/cospa/widget/OriginChooseDialog;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f09046f

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->tvComicName:Landroid/widget/TextView;

    const v0, 0x7f090378

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->rvOrigin:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0903e7

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 5
    new-instance v0, Lcom/wsw/cospa/model/SearchComicModel;

    iget-object v1, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/wsw/cospa/model/SearchComicModel;-><init>(Landroid/app/Activity;Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->searchComicModel:Lcom/wsw/cospa/model/SearchComicModel;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->searchTime:J

    .line 7
    iget-object v2, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->searchComicModel:Lcom/wsw/cospa/model/SearchComicModel;

    invoke-virtual {v2, v0, v1}, Lcom/wsw/cospa/model/SearchComicModel;->protected(J)V

    .line 8
    new-instance v0, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;

    iget-object v1, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->mContext:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;-><init>(Lcom/wsw/cospa/widget/OriginChooseDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->originAdapter:Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->rvOrigin:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->rvOrigin:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->originAdapter:Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0601c6
        0x7f0601c7
        0x7f0601c8
        0x7f0601c9
    .end array-data
.end method

.method private synthetic lambda$initData$0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->searchComicModel:Lcom/wsw/cospa/model/SearchComicModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/model/SearchComicModel;->interface(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->searchComicModel:Lcom/wsw/cospa/model/SearchComicModel;

    iget-object v1, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->searchTime:J

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wsw/cospa/model/SearchComicModel;->continue(Ljava/lang/String;JLjava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public checkIsExist(Lcom/wsw/cospa/bean/SearchComicBean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadMoreFinish(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method public loadMoreSearchBook(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/SearchComicBean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/SearchComicBean;->setChecked(Ljava/lang/Boolean;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->originAdapter:Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->setOrigin(Lcom/wsw/cospa/bean/SearchComicBean;)V

    .line 6
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v1, p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->o(Lcom/wsw/cospa/bean/SearchComicBean;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0076

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/widget/OriginChooseDialog;->initView()V

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/widget/OriginChooseDialog;->initData()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->searchComicModel:Lcom/wsw/cospa/model/SearchComicModel;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/model/SearchComicModel;->abstract()V

    :cond_0
    return-void
.end method

.method public refreshFinish(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method public refreshSearchBook()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->originAdapter:Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/OriginChooseDialog$OriginAdapter;->clearList()V

    return-void
.end method

.method public searchBookError(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method public setOnChooseOriginListener(Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/OriginChooseDialog;->click:Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    .line 3
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
