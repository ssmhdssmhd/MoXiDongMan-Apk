.class public final synthetic Landroid/support/v4/s9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# instance fields
.field public final synthetic do:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/s9;->do:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/s9;->do:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/wsw/cospa/utils/this;->do(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
