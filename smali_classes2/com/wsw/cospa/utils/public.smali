.class public Lcom/wsw/cospa/utils/public;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private case(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/DownloadTaskByte.json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/utils/public;->do(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2
    array-length v0, p1

    if-lez v0, :cond_5

    .line 3
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/wsw/cospa/model/throw;->else()Lcom/wsw/cospa/model/throw;

    move-result-object p1

    .line 5
    invoke-static {v0}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6
    invoke-static {v0}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 8
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 10
    new-instance v2, Lcom/wsw/cospa/utils/public$goto;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/utils/public$goto;-><init>(Lcom/wsw/cospa/utils/public;)V

    .line 11
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/Task;

    .line 15
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getNoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getComicInfoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1, v1}, Lcom/wsw/cospa/model/throw;->break(Ljava/lang/Iterable;)V

    goto/16 :goto_2

    .line 20
    :cond_2
    invoke-static {v0}, Landroid/support/v4/fz;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 22
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 23
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 25
    new-instance v2, Lcom/wsw/cospa/utils/public$this;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/utils/public$this;-><init>(Lcom/wsw/cospa/utils/public;)V

    .line 26
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 27
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/Task;

    .line 30
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 31
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getNoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 32
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getComicInfoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 33
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    :cond_4
    invoke-virtual {p1, v1}, Lcom/wsw/cospa/model/throw;->break(Ljava/lang/Iterable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static do(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_1
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 5
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 10
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0

    :catch_1
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private else(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/HistoryComicByte.json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/utils/public;->do(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    array-length v0, p1

    if-lez v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 4
    invoke-static {v0}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-static {v0}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    .line 9
    new-instance v1, Lcom/wsw/cospa/utils/public$break;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/utils/public$break;-><init>(Lcom/wsw/cospa/utils/public;)V

    .line 10
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 12
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->b(Ljava/util/List;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v0}, Landroid/support/v4/fz;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 16
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/wsw/cospa/utils/public$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/utils/public$do;-><init>(Lcom/wsw/cospa/utils/public;)V

    .line 19
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 20
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 21
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->b(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private for(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/ComicShelfByte.json"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/documentfile/provider/DocumentFile;->fromFile(Ljava/io/File;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/static;->catch(Landroidx/documentfile/provider/DocumentFile;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4
    invoke-static {p1}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 8
    new-instance v3, Lcom/wsw/cospa/utils/public$if;

    invoke-direct {v3, p0}, Lcom/wsw/cospa/utils/public$if;-><init>(Lcom/wsw/cospa/utils/public;)V

    .line 9
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 10
    invoke-virtual {v0, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 12
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 13
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v3

    new-array v4, v2, [Lcom/wsw/cospa/bean/ComicShelfBean;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 15
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object v3

    new-array v4, v2, [Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-static {p1}, Landroid/support/v4/fz;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 19
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 21
    new-instance v3, Lcom/wsw/cospa/utils/public$for;

    invoke-direct {v3, p0}, Lcom/wsw/cospa/utils/public$for;-><init>(Lcom/wsw/cospa/utils/public;)V

    .line 22
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 23
    invoke-virtual {v0, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 25
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 26
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v3

    new-array v4, v2, [Lcom/wsw/cospa/bean/ComicShelfBean;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    .line 27
    :cond_4
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 28
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object v3

    new-array v4, v2, [Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    :cond_5
    return-void
.end method

.method public static if()Lcom/wsw/cospa/utils/public;
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/public;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/public;-><init>()V

    return-object v0
.end method

.method private new(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/ComicShelfGroupByte.json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/utils/public;->do(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    array-length v0, p1

    if-lez v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 4
    invoke-static {v0}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-static {v0}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    .line 9
    new-instance v1, Lcom/wsw/cospa/utils/public$new;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/utils/public$new;-><init>(Lcom/wsw/cospa/utils/public;)V

    .line 10
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 13
    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->volatile(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v0}, Landroid/support/v4/fz;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 17
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/wsw/cospa/utils/public$try;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/utils/public$try;-><init>(Lcom/wsw/cospa/utils/public;)V

    .line 20
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 23
    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->volatile(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private try(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/ComicSourceByte.json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/utils/public;->do(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    array-length v0, p1

    if-lez v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 4
    invoke-static {v0}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-static {v0}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    .line 9
    new-instance v1, Lcom/wsw/cospa/utils/public$case;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/utils/public$case;-><init>(Lcom/wsw/cospa/utils/public;)V

    .line 10
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 12
    invoke-static {p1}, Lcom/wsw/cospa/model/do;->extends(Ljava/util/List;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v0}, Landroid/support/v4/fz;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 16
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/wsw/cospa/utils/public$else;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/utils/public$else;-><init>(Lcom/wsw/cospa/utils/public;)V

    .line 19
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 20
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 21
    invoke-static {p1}, Lcom/wsw/cospa/model/do;->extends(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public goto()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/support/v4/wq;->native:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/public;->try(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/public;->for(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/public;->new(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/public;->case(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/public;->else(Ljava/lang/String;)V

    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public this(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/public;->try(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/public;->for(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/public;->new(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/public;->case(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/public;->else(Ljava/lang/String;)V

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method
