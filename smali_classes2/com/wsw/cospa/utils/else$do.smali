.class Lcom/wsw/cospa/utils/else$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/utils/else;->catch(Lcom/wsw/cospa/activity/HomeActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/HomeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/else$do;->do:Lcom/wsw/cospa/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/else$do;->do:Lcom/wsw/cospa/activity/HomeActivity;

    invoke-static {v0}, Lcom/wsw/cospa/utils/else;->break(Lcom/wsw/cospa/activity/HomeActivity;)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/else$do;->do:Lcom/wsw/cospa/activity/HomeActivity;

    invoke-static {v0}, Lcom/wsw/cospa/utils/else;->break(Lcom/wsw/cospa/activity/HomeActivity;)V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/else$do;->do:Lcom/wsw/cospa/activity/HomeActivity;

    invoke-static {v0}, Lcom/wsw/cospa/utils/else;->break(Lcom/wsw/cospa/activity/HomeActivity;)V

    return-void
.end method
