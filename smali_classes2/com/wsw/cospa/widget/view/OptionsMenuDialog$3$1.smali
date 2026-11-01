.class Lcom/wsw/cospa/widget/view/OptionsMenuDialog$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/view/OptionsMenuDialog$3;->onConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/wsw/cospa/widget/view/OptionsMenuDialog$3;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/OptionsMenuDialog$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$3$1;->this$1:Lcom/wsw/cospa/widget/view/OptionsMenuDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$3$1;->this$1:Lcom/wsw/cospa/widget/view/OptionsMenuDialog$3;

    iget-object v0, v0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$3;->this$0:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    invoke-static {v0}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->access$000(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->k(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method
