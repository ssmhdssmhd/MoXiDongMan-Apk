.class Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->case()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;->do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;->if(IZ)V

    return-void
.end method

.method private synthetic if(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;->do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->static(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;)Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;->do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->static(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;)Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->new()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 4
    invoke-virtual {v0, p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->setChecked(Z)V

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;->do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->static(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;)Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;->do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;->do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/wsw/cospa/activity/native;

    invoke-direct {v1, p0, p1, p2}, Lcom/wsw/cospa/activity/native;-><init>(Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;IZ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;->do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->static(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;)Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;->do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->static(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;)Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->new()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 6
    invoke-virtual {v0, p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->setChecked(Z)V

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;->do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->static(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;)Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 8
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object p2, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;->do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->static(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;)Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->new()Ljava/util/List;

    move-result-object p2

    .line 10
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 11
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;->do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->tv_select_comic:Landroid/widget/TextView;

    const-string p2, "\u5168\u9009"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 15
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_5

    .line 16
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;->do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->tv_select_comic:Landroid/widget/TextView;

    const-string p2, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method
