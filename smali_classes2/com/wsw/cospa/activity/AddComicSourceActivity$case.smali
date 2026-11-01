.class Lcom/wsw/cospa/activity/AddComicSourceActivity$case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/AddComicSourceActivity;->private()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/AddComicSourceActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$case;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 0

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$case;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-virtual {v0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    return-void
.end method

.method public onConfirm()V
    .locals 0

    return-void
.end method
