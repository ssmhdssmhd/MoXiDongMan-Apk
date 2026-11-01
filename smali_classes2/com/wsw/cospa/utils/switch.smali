.class public Lcom/wsw/cospa/utils/switch;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/DocumentFile;->final()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    new-instance p1, Ljava/io/BufferedInputStream;

    const/16 v4, 0x2000

    invoke-direct {p1, p2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-direct {p2, p0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-array v1, v4, [B

    .line 4
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 5
    invoke-virtual {p2, v1, v3, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array p0, v0, [Ljava/io/Closeable;

    aput-object p1, p0, v3

    aput-object p2, p0, v2

    .line 7
    invoke-static {p0}, Lcom/wsw/cospa/utils/switch;->do([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object p2, v1

    :goto_1
    move-object v1, p1

    goto :goto_2

    :cond_1
    :try_start_3
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object p2, p0, v3

    .line 8
    invoke-static {p0}, Lcom/wsw/cospa/utils/switch;->do([Ljava/io/Closeable;)V

    .line 9
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    move-object p2, v1

    :goto_2
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v1, p1, v3

    aput-object p2, p1, v2

    .line 10
    invoke-static {p1}, Lcom/wsw/cospa/utils/switch;->do([Ljava/io/Closeable;)V

    .line 11
    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static varargs case(Lcom/wsw/cospa/utils/DocumentFile;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/DocumentFile;->super()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/DocumentFile;->public()[Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 4
    invoke-virtual {v4}, Lcom/wsw/cospa/utils/DocumentFile;->throw()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v4}, Lcom/wsw/cospa/utils/DocumentFile;->catch()Ljava/lang/String;

    move-result-object v4

    .line 6
    array-length v5, p1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p1, v6

    .line 7
    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 8
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static catch(Lcom/wsw/cospa/bean/ChapterListBean;Lcom/wsw/cospa/bean/ComicContentImgBean;Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p3}, Lcom/wsw/cospa/utils/DocumentFile;->final()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2
    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v5, 0x2000

    invoke-direct {v4, p4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    new-instance p4, Ljava/io/BufferedOutputStream;

    invoke-direct {p4, p2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v1, 0x800

    :try_start_2
    new-array v1, v1, [B

    .line 4
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 5
    invoke-virtual {p4, v1, v3, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 7
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object p2

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIndexPape()I

    move-result v1

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Lcom/wsw/cospa/dao/DatabaseHelper;->g(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 9
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/bean/ComicContentImgBean;

    .line 10
    invoke-virtual {p0, v2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setIsDownload(Z)V

    .line 11
    invoke-virtual {p3}, Lcom/wsw/cospa/utils/DocumentFile;->final()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setLocalPath(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/wsw/cospa/dao/DatabaseHelper;->k(Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1, v2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setIsDownload(Z)V

    .line 14
    invoke-virtual {p3}, Lcom/wsw/cospa/utils/DocumentFile;->final()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setLocalPath(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->package(Lcom/wsw/cospa/bean/ComicContentImgBean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v4, p0, v3

    aput-object p4, p0, v2

    .line 16
    invoke-static {p0}, Lcom/wsw/cospa/utils/switch;->do([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p4, v1

    :goto_2
    move-object v1, v4

    goto :goto_3

    :cond_2
    :try_start_3
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object p4, p0, v3

    .line 17
    invoke-static {p0}, Lcom/wsw/cospa/utils/switch;->do([Ljava/io/Closeable;)V

    .line 18
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    move-object p4, v1

    :goto_3
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v1, p1, v3

    aput-object p4, p1, v2

    .line 19
    invoke-static {p1}, Lcom/wsw/cospa/utils/switch;->do([Ljava/io/Closeable;)V

    .line 20
    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static class(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/DocumentFile;->final()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p0, :cond_0

    .line 2
    :try_start_1
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array p2, v2, [Ljava/io/Closeable;

    aput-object p0, p2, v1

    aput-object p1, p2, v0

    .line 5
    invoke-static {p2}, Lcom/wsw/cospa/utils/switch;->do([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 6
    :cond_0
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    move-object p1, v3

    :goto_0
    move-object v3, p0

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object p1, v3

    :goto_1
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v3, p0, v1

    aput-object p1, p0, v0

    .line 7
    invoke-static {p0}, Lcom/wsw/cospa/utils/switch;->do([Ljava/io/Closeable;)V

    .line 8
    throw p2
.end method

.method private static varargs do([Ljava/io/Closeable;)V
    .locals 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static else(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;I)[C
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/DocumentFile;->final()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 2
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    new-array v4, p2, [C

    .line 4
    invoke-virtual {p1, v4, v3, p2}, Ljava/io/BufferedReader;->read([CII)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v5, p2, :cond_1

    new-array p2, v2, [Ljava/io/Closeable;

    aput-object p0, p2, v3

    aput-object p1, p2, v1

    .line 5
    invoke-static {p2}, Lcom/wsw/cospa/utils/switch;->do([Ljava/io/Closeable;)V

    return-object v4

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object p1, v0

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, v0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :cond_1
    new-array p2, v2, [Ljava/io/Closeable;

    aput-object p0, p2, v3

    aput-object p1, p2, v1

    invoke-static {p2}, Lcom/wsw/cospa/utils/switch;->do([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object p1, v0

    goto :goto_3

    :catch_2
    move-exception p2

    move-object p0, v0

    move-object p1, p0

    .line 6
    :goto_0
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    new-array p2, v2, [Ljava/io/Closeable;

    aput-object p0, p2, v3

    aput-object p1, p2, v1

    .line 7
    invoke-static {p2}, Lcom/wsw/cospa/utils/switch;->do([Ljava/io/Closeable;)V

    :goto_1
    return-object v0

    :catchall_2
    move-exception p2

    :goto_2
    move-object v0, p0

    :goto_3
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v0, p0, v3

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/wsw/cospa/utils/switch;->do([Ljava/io/Closeable;)V

    .line 8
    throw p2
.end method

.method public static varargs for(Lcom/wsw/cospa/utils/DocumentFile;[Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2
    invoke-virtual {p0, v2}, Lcom/wsw/cospa/utils/DocumentFile;->else(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static goto(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/DocumentFile;->final()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 2
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    .line 4
    invoke-static {v3}, Lcom/wsw/cospa/utils/switch;->do([Ljava/io/Closeable;)V

    return-object v0

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_2

    :catch_1
    move-exception v4

    move-object p1, v0

    goto :goto_0

    :cond_0
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object p0, p1, v2

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/wsw/cospa/utils/switch;->do([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object p1, v0

    move-object v0, p0

    move-object p0, p1

    goto :goto_2

    :catch_2
    move-exception v4

    move-object p0, v0

    move-object p1, p0

    .line 5
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    .line 6
    invoke-static {v3}, Lcom/wsw/cospa/utils/switch;->do([Ljava/io/Closeable;)V

    :goto_1
    return-object v0

    :catchall_2
    move-exception v0

    :goto_2
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    invoke-static {v3}, Lcom/wsw/cospa/utils/switch;->do([Ljava/io/Closeable;)V

    .line 7
    throw v0
.end method

.method public static if(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/DocumentFile;->super()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/DocumentFile;->public()[Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 3
    invoke-virtual {v3}, Lcom/wsw/cospa/utils/DocumentFile;->throw()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/wsw/cospa/utils/DocumentFile;->catch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public static new(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/DocumentFile;->else(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/utils/DocumentFile;->throw()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/DocumentFile;->new(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    return-object p0
.end method

.method public static this(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/DocumentFile;->final()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 2
    invoke-static {p0, p2, p1}, Lcom/wsw/cospa/utils/switch;->break(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Ljava/io/InputStream;)V

    return-void
.end method

.method public static try(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/DocumentFile;->else(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/utils/DocumentFile;->super()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/DocumentFile;->for(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    return-object p0
.end method
