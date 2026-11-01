.class Lcom/wsw/cospa/utils/protected;
.super Lcom/wsw/cospa/utils/DocumentFile;
.source "SourceFile"


# instance fields
.field private if:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/DocumentFile;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/DocumentFile;-><init>(Lcom/wsw/cospa/utils/DocumentFile;)V

    .line 2
    iput-object p2, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    return-void
.end method

.method private static default(Ljava/io/File;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 3
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    invoke-static {v4}, Lcom/wsw/cospa/utils/protected;->default(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 5
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static extends(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "application/octet-stream"

    return-object p0
.end method


# virtual methods
.method public case()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public catch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public const()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/utils/protected;->extends(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public do()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method

.method public else(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/protected;->public()[Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/wsw/cospa/utils/DocumentFile;->catch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public for(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1
    :goto_0
    new-instance p1, Lcom/wsw/cospa/utils/protected;

    invoke-direct {p1, p0, v0}, Lcom/wsw/cospa/utils/protected;-><init>(Lcom/wsw/cospa/utils/DocumentFile;Ljava/io/File;)V

    return-object p1
.end method

.method public if()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public native(Lcom/wsw/cospa/utils/DocumentFile$DocumentFileFilter;Ljava/util/Comparator;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/utils/DocumentFile$DocumentFileFilter;",
            "Ljava/util/Comparator<",
            "-",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 4
    new-instance v5, Lcom/wsw/cospa/utils/protected;

    invoke-direct {v5, p0, v4}, Lcom/wsw/cospa/utils/protected;-><init>(Lcom/wsw/cospa/utils/DocumentFile;Ljava/io/File;)V

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1, v5}, Lcom/wsw/cospa/utils/DocumentFile$DocumentFileFilter;->call(Lcom/wsw/cospa/utils/DocumentFile;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 7
    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    return-object v0
.end method

.method public new(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    :catch_0
    return-object p1

    .line 4
    :cond_0
    new-instance p1, Lcom/wsw/cospa/utils/protected;

    invoke-direct {p1, p0, v0}, Lcom/wsw/cospa/utils/protected;-><init>(Lcom/wsw/cospa/utils/DocumentFile;Ljava/io/File;)V

    return-object p1
.end method

.method public public()[Lcom/wsw/cospa/utils/DocumentFile;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    array-length v2, v0

    if-lez v2, :cond_1

    .line 3
    array-length v2, v0

    new-array v2, v2, [Lcom/wsw/cospa/utils/DocumentFile;

    .line 4
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 5
    new-instance v3, Lcom/wsw/cospa/utils/protected;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Lcom/wsw/cospa/utils/protected;-><init>(Lcom/wsw/cospa/utils/DocumentFile;Ljava/io/File;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 8
    array-length v2, v0

    new-array v2, v2, [Lcom/wsw/cospa/utils/DocumentFile;

    .line 9
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 10
    new-instance v3, Lcom/wsw/cospa/utils/protected;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Lcom/wsw/cospa/utils/protected;-><init>(Lcom/wsw/cospa/utils/DocumentFile;Ljava/io/File;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public static()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public super()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public switch()V
    .locals 0

    return-void
.end method

.method public throw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public throws(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public try()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-static {v0}, Lcom/wsw/cospa/utils/protected;->default(Ljava/io/File;)Z

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public while()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/protected;->if:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
