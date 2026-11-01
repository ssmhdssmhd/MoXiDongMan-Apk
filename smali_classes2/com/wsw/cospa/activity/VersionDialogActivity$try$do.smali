.class Lcom/wsw/cospa/activity/VersionDialogActivity$try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/VersionDialogActivity$try;->do(JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/VersionDialogActivity$try;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/VersionDialogActivity$try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$try$do;->do:Lcom/wsw/cospa/activity/VersionDialogActivity$try;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "\u66f4\u65b0\u5931\u8d25"

    .line 1
    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method
