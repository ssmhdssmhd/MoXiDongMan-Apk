.class public Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/dao/ComicShelfBeanDao;
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

.field public static final const:Lorg/greenrobot/greendao/Property;

.field public static final do:Lorg/greenrobot/greendao/Property;

.field public static final else:Lorg/greenrobot/greendao/Property;

.field public static final final:Lorg/greenrobot/greendao/Property;

.field public static final for:Lorg/greenrobot/greendao/Property;

.field public static final goto:Lorg/greenrobot/greendao/Property;

.field public static final if:Lorg/greenrobot/greendao/Property;

.field public static final import:Lorg/greenrobot/greendao/Property;

.field public static final new:Lorg/greenrobot/greendao/Property;

.field public static final super:Lorg/greenrobot/greendao/Property;

.field public static final this:Lorg/greenrobot/greendao/Property;

.field public static final throw:Lorg/greenrobot/greendao/Property;

.field public static final try:Lorg/greenrobot/greendao/Property;

.field public static final while:Lorg/greenrobot/greendao/Property;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lorg/greenrobot/greendao/Property;

    const-class v2, Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "noteUrl"

    const/4 v4, 0x1

    const-string v5, "NOTE_URL"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 2
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Integer;

    const/4 v8, 0x1

    const-string v10, "durChapter"

    const/4 v11, 0x0

    const-string v12, "DUR_CHAPTER"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->if:Lorg/greenrobot/greendao/Property;

    .line 3
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Integer;

    const/4 v2, 0x2

    const-string v4, "durChapterPage"

    const/4 v5, 0x0

    const-string v6, "DUR_CHAPTER_PAGE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->for:Lorg/greenrobot/greendao/Property;

    .line 4
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Long;

    const/4 v8, 0x3

    const-string v10, "finalDate"

    const-string v12, "FINAL_DATE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    .line 5
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Boolean;

    const/4 v2, 0x4

    const-string v4, "hasUpdate"

    const-string v6, "HAS_UPDATE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->try:Lorg/greenrobot/greendao/Property;

    .line 6
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Integer;

    const/4 v8, 0x5

    const-string v10, "newChapters"

    const-string v12, "NEW_CHAPTERS"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->case:Lorg/greenrobot/greendao/Property;

    .line 7
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x6

    const-string v4, "tag"

    const-string v6, "TAG"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->else:Lorg/greenrobot/greendao/Property;

    .line 8
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Integer;

    const/4 v8, 0x7

    const-string v10, "serialNumber"

    const-string v12, "SERIAL_NUMBER"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->goto:Lorg/greenrobot/greendao/Property;

    .line 9
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Long;

    const/16 v2, 0x8

    const-string v4, "finalRefreshData"

    const-string v6, "FINAL_REFRESH_DATA"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->this:Lorg/greenrobot/greendao/Property;

    .line 10
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Integer;

    const/16 v8, 0x9

    const-string v10, "group"

    const-string v12, "GROUP"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->break:Lorg/greenrobot/greendao/Property;

    .line 11
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xa

    const-string v4, "durChapterName"

    const-string v6, "DUR_CHAPTER_NAME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->catch:Lorg/greenrobot/greendao/Property;

    .line 12
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0xb

    const-string v10, "lastChapterName"

    const-string v12, "LAST_CHAPTER_NAME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->class:Lorg/greenrobot/greendao/Property;

    .line 13
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Integer;

    const/16 v2, 0xc

    const-string v4, "chapterListSize"

    const-string v6, "CHAPTER_LIST_SIZE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->const:Lorg/greenrobot/greendao/Property;

    .line 14
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0xd

    const-string v10, "customCoverPath"

    const-string v12, "CUSTOM_COVER_PATH"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->final:Lorg/greenrobot/greendao/Property;

    .line 15
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Boolean;

    const/16 v2, 0xe

    const-string v4, "allowUpdate"

    const-string v6, "ALLOW_UPDATE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->super:Lorg/greenrobot/greendao/Property;

    .line 16
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0xf

    const-string v10, "variable"

    const-string v12, "VARIABLE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->throw:Lorg/greenrobot/greendao/Property;

    .line 17
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x10

    const-string v4, "groupId"

    const-string v6, "GROUP_ID"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->while:Lorg/greenrobot/greendao/Property;

    .line 18
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Integer;

    const/16 v8, 0x11

    const-string v10, "readMode"

    const-string v12, "READ_MODE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->import:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
