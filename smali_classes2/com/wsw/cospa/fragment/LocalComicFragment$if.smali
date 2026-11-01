.class Lcom/wsw/cospa/fragment/LocalComicFragment$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/fragment/LocalComicFragment;->onLongClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/bean/RipeFile;

.field public final synthetic if:Lcom/wsw/cospa/fragment/LocalComicFragment;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/fragment/LocalComicFragment;Lcom/wsw/cospa/bean/RipeFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/LocalComicFragment$if;->if:Lcom/wsw/cospa/fragment/LocalComicFragment;

    iput-object p2, p0, Lcom/wsw/cospa/fragment/LocalComicFragment$if;->do:Lcom/wsw/cospa/bean/RipeFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 0

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onConfirm()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->catch()Lcom/wsw/cospa/dao/RipeFileDao;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/wsw/cospa/bean/RipeFile;

    iget-object v2, p0, Lcom/wsw/cospa/fragment/LocalComicFragment$if;->do:Lcom/wsw/cospa/bean/RipeFile;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx([Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/LocalComicFragment$if;->if:Lcom/wsw/cospa/fragment/LocalComicFragment;

    invoke-virtual {v0}, Lcom/wsw/cospa/fragment/LocalComicFragment;->this()V

    return-void
.end method
