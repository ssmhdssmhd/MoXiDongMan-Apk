.class Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->startRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout$2;->this$0:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout$2;->this$0:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout$2;->this$0:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    invoke-static {v0}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->access$200(Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;)Lcom/wsw/cospa/widget/view/refresh/JFengRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout$2;->this$0:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    invoke-static {v0}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->access$200(Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;)Lcom/wsw/cospa/widget/view/refresh/JFengRefreshListener;

    move-result-object v0

    invoke-interface {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    :cond_0
    return-void
.end method
