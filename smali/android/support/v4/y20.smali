.class public final synthetic Landroid/support/v4/y20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

.field public final synthetic for:Z

.field public final synthetic if:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/y20;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    iput-object p2, p0, Landroid/support/v4/y20;->if:Ljava/util/List;

    iput-boolean p3, p0, Landroid/support/v4/y20;->for:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/y20;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    iget-object v1, p0, Landroid/support/v4/y20;->if:Ljava/util/List;

    iget-boolean v2, p0, Landroid/support/v4/y20;->for:Z

    invoke-static {v0, v1, v2}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->return(Lcom/wsw/cospa/activity/DownloadTaskActivity;Ljava/util/List;Z)V

    return-void
.end method
