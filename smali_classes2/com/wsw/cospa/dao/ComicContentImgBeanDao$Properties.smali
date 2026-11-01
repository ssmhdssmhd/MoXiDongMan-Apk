.class public Lcom/wsw/cospa/dao/ComicContentImgBeanDao$Properties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/dao/ComicContentImgBeanDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final break:Lorg/greenrobot/greendao/Property;

.field public static final case:Lorg/greenrobot/greendao/Property;

.field public static final catch:Lorg/greenrobot/greendao/Property;

.field public static final class:Lorg/greenrobot/greendao/Property;

.field public static final do:Lorg/greenrobot/greendao/Property;

.field public static final else:Lorg/greenrobot/greendao/Property;

.field public static final for:Lorg/greenrobot/greendao/Property;

.field public static final goto:Lorg/greenrobot/greendao/Property;

.field public static final if:Lorg/greenrobot/greendao/Property;

.field public static final new:Lorg/greenrobot/greendao/Property;

.field public static final this:Lorg/greenrobot/greendao/Property;

.field public static final try:Lorg/greenrobot/greendao/Property;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v6, Lorg/greenrobot/greendao/Property;

    const-class v2, Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "imgurl"

    const/4 v4, 0x1

    const-string v5, "IMGURL"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/wsw/cospa/dao/ComicContentImgBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 2
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    const-string v10, "indexPape"

    const/4 v11, 0x0

    const-string v12, "INDEX_PAPE"

    move-object v7, v0

    move-object v9, v13

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicContentImgBeanDao$Properties;->if:Lorg/greenrobot/greendao/Property;

    .line 3
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x2

    const-string v4, "maxPage"

    const/4 v5, 0x0

    const-string v6, "MAX_PAGE"

    move-object v1, v0

    move-object v3, v13

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicContentImgBeanDao$Properties;->for:Lorg/greenrobot/greendao/Property;

    .line 4
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x3

    const-string v4, "chapterIndex"

    const-string v6, "CHAPTER_INDEX"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicContentImgBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    .line 5
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x4

    const-string v10, "chapterContentUrl"

    const-string v12, "CHAPTER_CONTENT_URL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicContentImgBeanDao$Properties;->try:Lorg/greenrobot/greendao/Property;

    .line 6
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x5

    const-string v4, "chapterText"

    const-string v6, "CHAPTER_TEXT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicContentImgBeanDao$Properties;->case:Lorg/greenrobot/greendao/Property;

    .line 7
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x6

    const-string v10, "variable"

    const-string v12, "VARIABLE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicContentImgBeanDao$Properties;->else:Lorg/greenrobot/greendao/Property;

    .line 8
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x7

    const-string v4, "customVariable"

    const-string v6, "CUSTOM_VARIABLE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicContentImgBeanDao$Properties;->goto:Lorg/greenrobot/greendao/Property;

    .line 9
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x8

    const-string v10, "tag"

    const-string v12, "TAG"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicContentImgBeanDao$Properties;->this:Lorg/greenrobot/greendao/Property;

    .line 10
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x9

    const-string v4, "isDownload"

    const-string v6, "IS_DOWNLOAD"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicContentImgBeanDao$Properties;->break:Lorg/greenrobot/greendao/Property;

    .line 11
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0xa

    const-string v10, "localPath"

    const-string v12, "LOCAL_PATH"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicContentImgBeanDao$Properties;->catch:Lorg/greenrobot/greendao/Property;

    .line 12
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const/16 v2, 0xb

    const-string v4, "state"

    const-string v6, "STATE"

    move-object v1, v0

    move-object v3, v13

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicContentImgBeanDao$Properties;->class:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
