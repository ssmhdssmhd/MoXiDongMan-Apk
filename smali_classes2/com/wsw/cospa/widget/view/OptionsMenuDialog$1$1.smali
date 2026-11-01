.class Lcom/wsw/cospa/widget/view/OptionsMenuDialog$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/view/OptionsMenuDialog$1;->onNext(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/wsw/cospa/widget/view/OptionsMenuDialog$1;

.field public final synthetic val$shelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/OptionsMenuDialog$1;Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$1$1;->this$1:Lcom/wsw/cospa/widget/view/OptionsMenuDialog$1;

    iput-object p2, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$1$1;->val$shelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$1$1;->val$shelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->k(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method
