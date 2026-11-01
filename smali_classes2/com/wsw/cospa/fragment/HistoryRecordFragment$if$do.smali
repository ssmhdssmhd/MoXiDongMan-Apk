.class Lcom/wsw/cospa/fragment/HistoryRecordFragment$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;->onCheckedChanged(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic for:Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;

.field public final synthetic if:Z


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if$do;->for:Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;

    iput p2, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if$do;->do:I

    iput-boolean p3, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if$do;->if:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if$do;->for:Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    iget v1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if$do;->do:I

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->goto(I)Lcom/wsw/cospa/bean/HistoryComicBean;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if$do;->if:Z

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/HistoryComicBean;->setChecked(Z)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if$do;->for:Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    iget v1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if$do;->do:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
