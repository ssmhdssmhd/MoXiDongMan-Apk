.class Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/fragment/HistoryRecordFragment;->case()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if$do;

    invoke-direct {v1, p0, p1, p2}, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if$do;-><init>(Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;IZ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->goto(I)Lcom/wsw/cospa/bean/HistoryComicBean;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->setChecked(Z)V

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p2, p2, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object p2, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p2, p2, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-virtual {p2}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->else()Ljava/util/List;

    move-result-object p2

    .line 9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/HistoryComicBean;

    .line 10
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/HistoryComicBean;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_3

    .line 13
    iget-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p1, p1, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->tv_select_all:Landroid/widget/TextView;

    const-string p2, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p1, p1, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->tv_select_all:Landroid/widget/TextView;

    const-string p2, "\u5168\u9009"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
