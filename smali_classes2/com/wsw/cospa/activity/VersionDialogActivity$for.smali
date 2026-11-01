.class Lcom/wsw/cospa/activity/VersionDialogActivity$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/VersionDialogActivity;->native(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/io/File;

.field public final synthetic if:Lcom/wsw/cospa/activity/VersionDialogActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/VersionDialogActivity;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$for;->if:Lcom/wsw/cospa/activity/VersionDialogActivity;

    iput-object p2, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$for;->do:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$for;->if:Lcom/wsw/cospa/activity/VersionDialogActivity;

    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$for;->do:Ljava/io/File;

    invoke-static {p1, v0}, Landroid/support/v4/z2;->native(Landroid/content/Context;Ljava/io/File;)Z

    return-void
.end method
