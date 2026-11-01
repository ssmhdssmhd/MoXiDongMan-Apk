.class Lcom/wsw/cospa/activity/ComicDetailActivity$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ComicDetailActivity;->onRefreshBookDetailMessage(Lcom/wsw/cospa/bean/ComicShelfBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lcom/wsw/cospa/bean/ComicSourceBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ComicDetailActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity$try;->do(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    return-void
.end method

.method public do(Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/case;->this()Lcom/wsw/cospa/utils/case;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/case;->throw()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity$try$do;-><init>(Lcom/wsw/cospa/activity/ComicDetailActivity$try;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
