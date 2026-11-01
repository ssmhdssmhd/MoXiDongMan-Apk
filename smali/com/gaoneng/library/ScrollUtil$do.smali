.class final Lcom/gaoneng/library/ScrollUtil$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaoneng/library/ScrollUtil;->if(Landroid/widget/AbsListView;Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/widget/AbsListView;

.field public final synthetic if:Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gaoneng/library/ScrollUtil$do;->do:Landroid/widget/AbsListView;

    iput-object p2, p0, Lcom/gaoneng/library/ScrollUtil$do;->if:Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gaoneng/library/ScrollUtil$do;->do:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 2
    iget-object v0, p0, Lcom/gaoneng/library/ScrollUtil$do;->if:Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;->scrollComplete()V

    :cond_0
    return-void
.end method
