.class Lcom/wsw/cospa/fragment/HistoryRecordFragment$case$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/fragment/HistoryRecordFragment$case;->do(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/List;

.field public final synthetic if:Lcom/wsw/cospa/fragment/HistoryRecordFragment$case;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/fragment/HistoryRecordFragment$case;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$case$do;->if:Lcom/wsw/cospa/fragment/HistoryRecordFragment$case;

    iput-object p2, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$case$do;->do:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$case$do;->do:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$case$do;->if:Lcom/wsw/cospa/fragment/HistoryRecordFragment$case;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$case;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    invoke-virtual {v0}, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->import()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$case$do;->if:Lcom/wsw/cospa/fragment/HistoryRecordFragment$case;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$case;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    iget-object v1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$case$do;->do:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->refresh(Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$case$do;->if:Lcom/wsw/cospa/fragment/HistoryRecordFragment$case;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$case;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    invoke-virtual {v0}, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->native()V

    :goto_0
    return-void
.end method
