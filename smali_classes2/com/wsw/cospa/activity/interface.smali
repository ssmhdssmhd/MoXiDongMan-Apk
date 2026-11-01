.class public final synthetic Lcom/wsw/cospa/activity/interface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/VersionDialogActivity$case;

.field public final synthetic for:Landroid/content/Context;

.field public final synthetic if:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/VersionDialogActivity$case;Ljava/io/File;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/activity/interface;->do:Lcom/wsw/cospa/activity/VersionDialogActivity$case;

    iput-object p2, p0, Lcom/wsw/cospa/activity/interface;->if:Ljava/io/File;

    iput-object p3, p0, Lcom/wsw/cospa/activity/interface;->for:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/wsw/cospa/activity/interface;->do:Lcom/wsw/cospa/activity/VersionDialogActivity$case;

    iget-object v1, p0, Lcom/wsw/cospa/activity/interface;->if:Ljava/io/File;

    iget-object v2, p0, Lcom/wsw/cospa/activity/interface;->for:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/wsw/cospa/activity/VersionDialogActivity$case;->if(Lcom/wsw/cospa/activity/VersionDialogActivity$case;Ljava/io/File;Landroid/content/Context;)V

    return-void
.end method
