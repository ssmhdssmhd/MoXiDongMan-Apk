.class Lcom/wsw/cospa/fragment/HistoryRecordFragment$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$new;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$new;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->else()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/HistoryComicBean;

    .line 4
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/HistoryComicBean;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$new;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->else()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/HistoryComicBean;

    .line 10
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/HistoryComicBean;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/HistoryComicBean;->setChecked(Z)V

    .line 12
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$new;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->refresh(Ljava/util/List;)V

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$new;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p1, p1, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->tv_select_all:Landroid/widget/TextView;

    const-string v0, "\u5168\u9009"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 15
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$new;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->else()Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/HistoryComicBean;

    .line 18
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/HistoryComicBean;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/HistoryComicBean;->setChecked(Z)V

    .line 20
    :cond_5
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$new;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->refresh(Ljava/util/List;)V

    .line 22
    iget-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$new;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p1, p1, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->tv_select_all:Landroid/widget/TextView;

    const-string v0, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method
