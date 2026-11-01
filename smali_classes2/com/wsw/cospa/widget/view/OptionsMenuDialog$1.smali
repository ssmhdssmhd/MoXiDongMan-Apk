.class Lcom/wsw/cospa/widget/view/OptionsMenuDialog$1;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->clearShelf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Ljava/util/List<",
        "Lcom/wsw/cospa/bean/ComicShelfBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$1;->this$0:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$1;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 3
    invoke-static {}, Lcom/wsw/cospa/utils/case;->this()Lcom/wsw/cospa/utils/case;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/utils/case;->else()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$1$1;

    invoke-direct {v2, p0, v0}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$1$1;-><init>(Lcom/wsw/cospa/widget/view/OptionsMenuDialog$1;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    return-void
.end method
