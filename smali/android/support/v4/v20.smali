.class public final synthetic Landroid/support/v4/v20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/DownloadTaskActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/v20;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/v20;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    check-cast p1, Landroid/support/v4/gp1;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->import(Lcom/wsw/cospa/activity/DownloadTaskActivity;Landroid/support/v4/gp1;)V

    return-void
.end method
