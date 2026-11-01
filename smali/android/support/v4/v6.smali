.class public final synthetic Landroid/support/v4/v6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/BackupActivity;

.field public final synthetic for:Lcom/wsw/cospa/widget/view/Option;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/BackupActivity;Ljava/lang/String;Lcom/wsw/cospa/widget/view/Option;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/v6;->do:Lcom/wsw/cospa/activity/BackupActivity;

    iput-object p2, p0, Landroid/support/v4/v6;->if:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/v6;->for:Lcom/wsw/cospa/widget/view/Option;

    return-void
.end method


# virtual methods
.method public final onConfirm(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/v6;->do:Lcom/wsw/cospa/activity/BackupActivity;

    iget-object v1, p0, Landroid/support/v4/v6;->if:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/v6;->for:Lcom/wsw/cospa/widget/view/Option;

    invoke-static {v0, v1, v2, p1}, Lcom/wsw/cospa/activity/BackupActivity;->static(Lcom/wsw/cospa/activity/BackupActivity;Ljava/lang/String;Lcom/wsw/cospa/widget/view/Option;Ljava/lang/String;)V

    return-void
.end method
