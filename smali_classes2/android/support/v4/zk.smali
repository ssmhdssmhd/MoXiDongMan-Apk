.class public Landroid/support/v4/zk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static do:Z = false

.field private static final for:Ljava/lang/String; = "UTF-8"

.field private static if:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/support/v4/zk;->try(Ljava/lang/String;)V

    return-void
.end method

.method public static for(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9

    const-string v0, "UTF-8"

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Landroid/support/v4/dm2;

    invoke-direct {v1}, Landroid/support/v4/dm2;-><init>()V

    .line 2
    sget-object v2, Landroid/support/v4/yk;->do:Landroid/support/v4/yk;

    invoke-virtual {v1, v2}, Landroid/support/v4/dm2;->Init(Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;)V

    .line 3
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x400

    new-array v3, p0, [B

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v2, v3, v5, p0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v1, v3, v7}, Landroid/support/v4/dm2;->this([BI)Z

    move-result v4

    :cond_2
    if-nez v4, :cond_1

    if-nez v6, :cond_1

    .line 6
    invoke-virtual {v1, v3, v7, v5}, Landroid/support/v4/dm2;->DoIt([BIZ)Z

    move-result v6

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/pm2;->do()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 9
    :goto_1
    sget-boolean p0, Landroid/support/v4/zk;->do:Z

    if-eqz p0, :cond_4

    .line 10
    sget-object p0, Landroid/support/v4/zk;->if:Ljava/lang/String;

    return-object p0

    :cond_4
    if-eqz v4, :cond_5

    return-object v0

    .line 11
    :cond_5
    invoke-virtual {v1}, Landroid/support/v4/pm2;->else()[Ljava/lang/String;

    move-result-object p0

    .line 12
    array-length v1, p0

    if-lez v1, :cond_6

    aget-object v1, p0, v5

    const-string v2, "nomatch"

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 13
    aget-object p0, p0, v5

    return-object p0

    :cond_6
    return-object v0
.end method

.method public static if(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Landroid/support/v4/zk;->for(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string p0, "UTF-8"

    return-object p0
.end method

.method public static new(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/support/v4/zk;->if(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic try(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Landroid/support/v4/zk;->do:Z

    .line 2
    sput-object p0, Landroid/support/v4/zk;->if:Ljava/lang/String;

    return-void
.end method
