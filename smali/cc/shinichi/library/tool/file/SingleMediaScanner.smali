.class public Lcc/shinichi/library/tool/file/SingleMediaScanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc/shinichi/library/tool/file/SingleMediaScanner$ScanListener;
    }
.end annotation


# instance fields
.field private do:Landroid/media/MediaScannerConnection;

.field private for:Lcc/shinichi/library/tool/file/SingleMediaScanner$ScanListener;

.field private if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcc/shinichi/library/tool/file/SingleMediaScanner$ScanListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcc/shinichi/library/tool/file/SingleMediaScanner;->if:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcc/shinichi/library/tool/file/SingleMediaScanner;->for:Lcc/shinichi/library/tool/file/SingleMediaScanner$ScanListener;

    .line 4
    new-instance p2, Landroid/media/MediaScannerConnection;

    invoke-direct {p2, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object p2, p0, Lcc/shinichi/library/tool/file/SingleMediaScanner;->do:Landroid/media/MediaScannerConnection;

    .line 5
    invoke-virtual {p2}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/tool/file/SingleMediaScanner;->do:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcc/shinichi/library/tool/file/SingleMediaScanner;->if:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcc/shinichi/library/tool/file/SingleMediaScanner;->do:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 2
    iget-object p1, p0, Lcc/shinichi/library/tool/file/SingleMediaScanner;->for:Lcc/shinichi/library/tool/file/SingleMediaScanner$ScanListener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcc/shinichi/library/tool/file/SingleMediaScanner$ScanListener;->onScanFinish()V

    :cond_0
    return-void
.end method
