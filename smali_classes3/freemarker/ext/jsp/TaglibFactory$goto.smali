.class abstract Lfreemarker/ext/jsp/TaglibFactory$goto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/ext/jsp/TaglibFactory$TldLocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/TaglibFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "goto"
.end annotation


# instance fields
.field private final do:Ljava/net/URL;

.field private final for:Ljava/lang/String;

.field private final if:Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;

.field public final synthetic new:Lfreemarker/ext/jsp/TaglibFactory;


# direct methods
.method public constructor <init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/net/URL;Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$goto;->new:Lfreemarker/ext/jsp/TaglibFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 2
    invoke-static {p3}, Landroid/support/v4/w41;->check(Ljava/lang/Object;)V

    .line 3
    invoke-static {p4}, Landroid/support/v4/w41;->check(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iput-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$goto;->do:Ljava/net/URL;

    .line 5
    iput-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$goto;->if:Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;

    if-eqz p4, :cond_1

    const/4 p1, 0x0

    .line 6
    invoke-static {p4, p1}, Lfreemarker/ext/jsp/TaglibFactory;->catch(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$goto;->for:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$goto;->do:Ljava/net/URL;

    if-eqz v0, :cond_4

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$goto;->new:Lfreemarker/ext/jsp/TaglibFactory;

    iget-boolean v1, v1, Lfreemarker/ext/jsp/TaglibFactory;->else:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Test only"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$goto;->if:Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;

    if-nez v1, :cond_3

    .line 6
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_2

    .line 7
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 9
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 10
    :cond_2
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 11
    :cond_3
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->do()Lfreemarker/log/if;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open InputStream for URL (will try fallback stream): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfreemarker/ext/jsp/TaglibFactory$goto;->do:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/log/if;->case(Ljava/lang/String;)V

    .line 12
    :cond_4
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$goto;->for:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$goto;->do:Ljava/net/URL;

    if-eqz v0, :cond_c

    .line 14
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    const-string v2, "!/"

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    add-int/lit8 v2, v2, 0x2

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->if()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0, v1}, Lfreemarker/ext/jsp/TaglibFactory;->catch(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    .line 20
    :try_start_1
    iget-object v3, p0, Lfreemarker/ext/jsp/TaglibFactory$goto;->if:Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;

    invoke-interface {v3}, Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_8

    .line 21
    :try_start_2
    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    :cond_6
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 23
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lfreemarker/ext/jsp/TaglibFactory;->catch(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v4

    .line 24
    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find JAR entry "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 25
    :cond_8
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Jar\'s InputStreamFactory ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lfreemarker/ext/jsp/TaglibFactory$goto;->if:Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") says the resource doesn\'t exist."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_2
    move-exception v0

    move-object v3, v2

    :goto_1
    if-eqz v2, :cond_9

    .line 26
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_9
    if-eqz v3, :cond_a

    .line 27
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 28
    :cond_a
    throw v0

    .line 29
    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t extract jar entry path from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Nothing to deduce jar entry path from."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getXmlSystemId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$goto;->do:Ljava/net/URL;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$goto;->do:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jar:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$goto;->if:Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$goto;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
