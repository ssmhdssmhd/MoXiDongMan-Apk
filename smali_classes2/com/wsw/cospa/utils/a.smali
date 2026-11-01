.class Lcom/wsw/cospa/utils/a;
.super Lcom/wsw/cospa/utils/DocumentFile;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private case:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            ">;"
        }
    .end annotation
.end field

.field private for:Landroid/net/Uri;

.field private if:Landroid/content/Context;

.field private new:Ljava/lang/String;

.field private try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/DocumentFile;-><init>(Lcom/wsw/cospa/utils/DocumentFile;)V

    .line 7
    iput-object p2, p0, Lcom/wsw/cospa/utils/a;->if:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Lcom/wsw/cospa/utils/a;->for:Landroid/net/Uri;

    .line 9
    invoke-direct {p0}, Lcom/wsw/cospa/utils/a;->package()V

    return-void
.end method

.method private constructor <init>(Lcom/wsw/cospa/utils/DocumentFile;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/DocumentFile;-><init>(Lcom/wsw/cospa/utils/DocumentFile;)V

    .line 2
    iput-object p2, p0, Lcom/wsw/cospa/utils/a;->if:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/wsw/cospa/utils/a;->for:Landroid/net/Uri;

    .line 4
    iput-object p4, p0, Lcom/wsw/cospa/utils/a;->new:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/wsw/cospa/utils/a;->try:Ljava/lang/String;

    return-void
.end method

.method private default()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/a;->super()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->case:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/a;->finally()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static extends(Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method private finally()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/utils/a;->case:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->if:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->for:Landroid/net/Uri;

    invoke-static {v0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "document_id"

    const-string v4, "_display_name"

    const-string v5, "mime_type"

    .line 4
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/utils/a;->for:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v1, 0x1

    .line 7
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/wsw/cospa/utils/a;->case:Ljava/util/Map;

    new-instance v9, Lcom/wsw/cospa/utils/a;

    iget-object v5, p0, Lcom/wsw/cospa/utils/a;->if:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v9

    move-object v4, p0

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/wsw/cospa/utils/a;-><init>(Lcom/wsw/cospa/utils/DocumentFile;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v0}, Lcom/wsw/cospa/utils/a;->extends(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/wsw/cospa/utils/a;->extends(Ljava/lang/AutoCloseable;)V

    .line 10
    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private package()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/wsw/cospa/utils/a;->if:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/wsw/cospa/utils/a;->for:Landroid/net/Uri;

    const-string v1, "_display_name"

    const-string v4, "mime_type"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/utils/a;->new:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/utils/a;->try:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 5
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/wsw/cospa/utils/a;->extends(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/wsw/cospa/utils/a;->extends(Ljava/lang/AutoCloseable;)V

    .line 7
    throw v1
.end method


# virtual methods
.method public case()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->if:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/wsw/cospa/utils/a;->for:Landroid/net/Uri;

    const-string v3, "document_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-static {v0}, Lcom/wsw/cospa/utils/a;->extends(Ljava/lang/AutoCloseable;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/wsw/cospa/utils/a;->extends(Ljava/lang/AutoCloseable;)V

    .line 5
    throw v1
.end method

.method public catch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->new:Ljava/lang/String;

    return-object v0
.end method

.method public const()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->try:Ljava/lang/String;

    return-object v0
.end method

.method public do()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->if:Landroid/content/Context;

    iget-object v1, p0, Lcom/wsw/cospa/utils/a;->for:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public else(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/a;->default()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->case:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/utils/DocumentFile;

    return-object p1
.end method

.method public final()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->for:Landroid/net/Uri;

    return-object v0
.end method

.method public for(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/a;->default()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/a;->else(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/wsw/cospa/utils/a;->if:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/wsw/cospa/utils/a;->for:Landroid/net/Uri;

    const-string v3, "vnd.android.document/directory"

    invoke-static {v1, v2, v3, p1}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 4
    new-instance v1, Lcom/wsw/cospa/utils/a;

    iget-object v6, p0, Lcom/wsw/cospa/utils/a;->if:Landroid/content/Context;

    const-string v9, "vnd.android.document/directory"

    move-object v4, v1

    move-object v5, p0

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/wsw/cospa/utils/a;-><init>(Lcom/wsw/cospa/utils/DocumentFile;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->case:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v0, v1

    :catch_1
    :cond_2
    return-object v0
.end method

.method public if()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->if:Landroid/content/Context;

    iget-object v1, p0, Lcom/wsw/cospa/utils/a;->for:Landroid/net/Uri;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public native(Lcom/wsw/cospa/utils/DocumentFile$DocumentFileFilter;Ljava/util/Comparator;)Ljava/util/List;
    .locals 4
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
    invoke-direct {p0}, Lcom/wsw/cospa/utils/a;->default()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->case:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/wsw/cospa/utils/a;->case:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/utils/DocumentFile;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1, v2}, Lcom/wsw/cospa/utils/DocumentFile$DocumentFileFilter;->call(Lcom/wsw/cospa/utils/DocumentFile;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 9
    invoke-static {v1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    return-object v1
.end method

.method public new(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/a;->default()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/a;->else(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/wsw/cospa/utils/a;->if:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/wsw/cospa/utils/a;->for:Landroid/net/Uri;

    invoke-static {v2, v3, v1, p1}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 4
    new-instance v1, Lcom/wsw/cospa/utils/a;

    iget-object v6, p0, Lcom/wsw/cospa/utils/a;->if:Landroid/content/Context;

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p0

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/wsw/cospa/utils/a;-><init>(Lcom/wsw/cospa/utils/DocumentFile;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->case:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v0, v1

    :catch_1
    :cond_2
    return-object v0
.end method

.method public public()[Lcom/wsw/cospa/utils/DocumentFile;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/a;->default()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lcom/wsw/cospa/utils/DocumentFile;

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->case:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/wsw/cospa/utils/a;->case:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4
    new-array v3, v0, [Lcom/wsw/cospa/utils/DocumentFile;

    :goto_0
    if-eq v1, v0, :cond_1

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/utils/DocumentFile;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->if:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/utils/a;->for:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public super()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->try:Ljava/lang/String;

    const-string v1, "vnd.android.document/directory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public switch()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->case:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/a;->finally()V

    :cond_0
    return-void
.end method

.method public throw()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/a;->super()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public throws(Ljava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->if:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/utils/a;->for:Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/a;->for:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public try()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/a;->if:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/utils/a;->for:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/DocumentFile;->class()Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/a;

    iget-object v0, v0, Lcom/wsw/cospa/utils/a;->case:Ljava/util/Map;

    iget-object v1, p0, Lcom/wsw/cospa/utils/a;->new:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public while()J
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, p0, Lcom/wsw/cospa/utils/a;->if:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/wsw/cospa/utils/a;->for:Landroid/net/Uri;

    const-string v3, "_size"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v2}, Lcom/wsw/cospa/utils/a;->extends(Ljava/lang/AutoCloseable;)V

    return-wide v0

    :cond_0
    invoke-static {v2}, Lcom/wsw/cospa/utils/a;->extends(Ljava/lang/AutoCloseable;)V

    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 5
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-static {v2}, Lcom/wsw/cospa/utils/a;->extends(Ljava/lang/AutoCloseable;)V

    return-wide v0

    :goto_0
    invoke-static {v2}, Lcom/wsw/cospa/utils/a;->extends(Ljava/lang/AutoCloseable;)V

    .line 7
    throw v0
.end method
