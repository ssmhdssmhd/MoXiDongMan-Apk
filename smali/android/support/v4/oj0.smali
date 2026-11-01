.class public final synthetic Landroid/support/v4/oj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnSlideRemoveListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/oj0;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    return-void
.end method


# virtual methods
.method public final onSlideRemove()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/oj0;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    invoke-static {v0}, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->break(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)V

    return-void
.end method
