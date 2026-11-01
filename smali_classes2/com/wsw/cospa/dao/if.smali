.class public Lcom/wsw/cospa/dao/if;
.super Lcom/wsw/cospa/dao/for$if;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/dao/for$if;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
    .locals 2

    .line 1
    new-instance p2, Lcom/wsw/cospa/dao/if$do;

    invoke-direct {p2, p0}, Lcom/wsw/cospa/dao/if$do;-><init>(Lcom/wsw/cospa/dao/if;)V

    const/16 p3, 0xc

    new-array p3, p3, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Lcom/wsw/cospa/dao/ChapterListBeanDao;

    aput-object v1, p3, v0

    const/4 v0, 0x1

    const-class v1, Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    aput-object v1, p3, v0

    const/4 v0, 0x2

    const-class v1, Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    aput-object v1, p3, v0

    const/4 v0, 0x3

    const-class v1, Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    aput-object v1, p3, v0

    const/4 v0, 0x4

    const-class v1, Lcom/wsw/cospa/dao/SearchComicBeanDao;

    aput-object v1, p3, v0

    const/4 v0, 0x5

    const-class v1, Lcom/wsw/cospa/dao/ComicContentBeanDao;

    aput-object v1, p3, v0

    const/4 v0, 0x6

    const-class v1, Lcom/wsw/cospa/dao/ComicContentImgBeanDao;

    aput-object v1, p3, v0

    const/4 v0, 0x7

    const-class v1, Lcom/wsw/cospa/dao/TaskDao;

    aput-object v1, p3, v0

    const/16 v0, 0x8

    const-class v1, Lcom/wsw/cospa/dao/CookieBeanDao;

    aput-object v1, p3, v0

    const/16 v0, 0x9

    const-class v1, Lcom/wsw/cospa/dao/RipeFileDao;

    aput-object v1, p3, v0

    const/16 v0, 0xa

    const-class v1, Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;

    aput-object v1, p3, v0

    const/16 v0, 0xb

    const-class v1, Lcom/wsw/cospa/dao/HistoryComicBeanDao;

    aput-object v1, p3, v0

    invoke-static {p1, p2, p3}, Lcom/github/yuweiguocn/library/greendao/MigrationHelper;->break(Lorg/greenrobot/greendao/database/Database;Lcom/github/yuweiguocn/library/greendao/MigrationHelper$ReCreateAllTableListener;[Ljava/lang/Class;)V

    return-void
.end method
