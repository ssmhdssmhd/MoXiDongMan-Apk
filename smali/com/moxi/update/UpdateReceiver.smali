.class public Lcom/moxi/update/UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :done

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :done

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "extra_download_id"

    const-wide/16 v3, -0x1

    invoke-virtual {p2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    if-nez v0, :done

    new-instance v5, Landroid/app/DownloadManager$Query;

    invoke-direct {v5}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v5, v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById(J)Landroid/app/DownloadManager$Query;

    invoke-virtual {v0, v5}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :done

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cleanup

    const-string v0, "status"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cleanup

    const-string v0, "update"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cleanup

    new-instance v1, Ljava/io/File;

    const-string v5, "moxi_update.apk"

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cleanup

    invoke-static {p1, v1}, Lcom/moxi/update/UpdateDownloader;->install(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cleanup
    if-nez v2, :done

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :done
    return-void

    :catch_0
    move-exception v0

    goto :cleanup
.end method
