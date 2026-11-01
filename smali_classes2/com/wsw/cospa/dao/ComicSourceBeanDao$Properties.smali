.class public Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/dao/ComicSourceBeanDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final a:Lorg/greenrobot/greendao/Property;

.field public static final abstract:Lorg/greenrobot/greendao/Property;

.field public static final b:Lorg/greenrobot/greendao/Property;

.field public static final break:Lorg/greenrobot/greendao/Property;

.field public static final c:Lorg/greenrobot/greendao/Property;

.field public static final case:Lorg/greenrobot/greendao/Property;

.field public static final catch:Lorg/greenrobot/greendao/Property;

.field public static final class:Lorg/greenrobot/greendao/Property;

.field public static final const:Lorg/greenrobot/greendao/Property;

.field public static final continue:Lorg/greenrobot/greendao/Property;

.field public static final d:Lorg/greenrobot/greendao/Property;

.field public static final default:Lorg/greenrobot/greendao/Property;

.field public static final do:Lorg/greenrobot/greendao/Property;

.field public static final else:Lorg/greenrobot/greendao/Property;

.field public static final extends:Lorg/greenrobot/greendao/Property;

.field public static final final:Lorg/greenrobot/greendao/Property;

.field public static final finally:Lorg/greenrobot/greendao/Property;

.field public static final for:Lorg/greenrobot/greendao/Property;

.field public static final goto:Lorg/greenrobot/greendao/Property;

.field public static final if:Lorg/greenrobot/greendao/Property;

.field public static final implements:Lorg/greenrobot/greendao/Property;

.field public static final import:Lorg/greenrobot/greendao/Property;

.field public static final instanceof:Lorg/greenrobot/greendao/Property;

.field public static final interface:Lorg/greenrobot/greendao/Property;

.field public static final native:Lorg/greenrobot/greendao/Property;

.field public static final new:Lorg/greenrobot/greendao/Property;

.field public static final package:Lorg/greenrobot/greendao/Property;

.field public static final private:Lorg/greenrobot/greendao/Property;

.field public static final protected:Lorg/greenrobot/greendao/Property;

.field public static final public:Lorg/greenrobot/greendao/Property;

.field public static final return:Lorg/greenrobot/greendao/Property;

.field public static final static:Lorg/greenrobot/greendao/Property;

.field public static final strictfp:Lorg/greenrobot/greendao/Property;

.field public static final super:Lorg/greenrobot/greendao/Property;

.field public static final switch:Lorg/greenrobot/greendao/Property;

.field public static final synchronized:Lorg/greenrobot/greendao/Property;

.field public static final this:Lorg/greenrobot/greendao/Property;

.field public static final throw:Lorg/greenrobot/greendao/Property;

.field public static final throws:Lorg/greenrobot/greendao/Property;

.field public static final transient:Lorg/greenrobot/greendao/Property;

.field public static final try:Lorg/greenrobot/greendao/Property;

.field public static final volatile:Lorg/greenrobot/greendao/Property;

.field public static final while:Lorg/greenrobot/greendao/Property;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v6, Lorg/greenrobot/greendao/Property;

    const-class v2, Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "bookSourceType"

    const/4 v4, 0x0

    const-string v5, "BOOK_SOURCE_TYPE"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 2
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x1

    const-string v10, "bookSingleThread"

    const/4 v11, 0x0

    const-string v12, "BOOK_SINGLE_THREAD"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->if:Lorg/greenrobot/greendao/Property;

    .line 3
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x2

    const-string v4, "bookDelayTime"

    const/4 v5, 0x0

    const-string v6, "BOOK_DELAY_TIME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->for:Lorg/greenrobot/greendao/Property;

    .line 4
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x3

    const-string v10, "bookSourceUrl"

    const/4 v11, 0x1

    const-string v12, "BOOK_SOURCE_URL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    .line 5
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x4

    const-string v4, "bookSourceName"

    const-string v6, "BOOK_SOURCE_NAME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->try:Lorg/greenrobot/greendao/Property;

    .line 6
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x5

    const-string v10, "bookSourceGroup"

    const/4 v11, 0x0

    const-string v12, "BOOK_SOURCE_GROUP"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->case:Lorg/greenrobot/greendao/Property;

    .line 7
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x6

    const-string v4, "checkUrl"

    const-string v6, "CHECK_URL"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->else:Lorg/greenrobot/greendao/Property;

    .line 8
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Long;

    const/4 v8, 0x7

    const-string v10, "lastUpdateTime"

    const-string v12, "LAST_UPDATE_TIME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->goto:Lorg/greenrobot/greendao/Property;

    .line 9
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x8

    const-string v4, "serialNumber"

    const-string v6, "SERIAL_NUMBER"

    move-object v1, v0

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->this:Lorg/greenrobot/greendao/Property;

    .line 10
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const/16 v2, 0x9

    const-string v4, "weight"

    const-string v6, "WEIGHT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->break:Lorg/greenrobot/greendao/Property;

    .line 11
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v9, 0xa

    const-string v11, "enable"

    const/4 v12, 0x0

    const-string v13, "ENABLE"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->catch:Lorg/greenrobot/greendao/Property;

    .line 12
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xb

    const-string v4, "ruleFindUrl"

    const-string v6, "RULE_FIND_URL"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->class:Lorg/greenrobot/greendao/Property;

    .line 13
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0xc

    const-string v10, "ruleSearchUrl"

    const/4 v11, 0x0

    const-string v12, "RULE_SEARCH_URL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->const:Lorg/greenrobot/greendao/Property;

    .line 14
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xd

    const-string v4, "ruleSearchList"

    const-string v6, "RULE_SEARCH_LIST"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->final:Lorg/greenrobot/greendao/Property;

    .line 15
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0xe

    const-string v10, "ruleSearchUrlNext"

    const-string v12, "RULE_SEARCH_URL_NEXT"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->super:Lorg/greenrobot/greendao/Property;

    .line 16
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xf

    const-string v4, "ruleSearchName"

    const-string v6, "RULE_SEARCH_NAME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->throw:Lorg/greenrobot/greendao/Property;

    .line 17
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x10

    const-string v10, "ruleSearchAuthor"

    const-string v12, "RULE_SEARCH_AUTHOR"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->while:Lorg/greenrobot/greendao/Property;

    .line 18
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x11

    const-string v4, "ruleSearchKind"

    const-string v6, "RULE_SEARCH_KIND"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->import:Lorg/greenrobot/greendao/Property;

    .line 19
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x12

    const-string v10, "ruleSearchLastChapter"

    const-string v12, "RULE_SEARCH_LAST_CHAPTER"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->native:Lorg/greenrobot/greendao/Property;

    .line 20
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x13

    const-string v4, "ruleSearchCoverUrl"

    const-string v6, "RULE_SEARCH_COVER_URL"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->public:Lorg/greenrobot/greendao/Property;

    .line 21
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x14

    const-string v10, "ruleSearchNoteUrl"

    const-string v12, "RULE_SEARCH_NOTE_URL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->return:Lorg/greenrobot/greendao/Property;

    .line 22
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x15

    const-string v4, "ruleBookName"

    const-string v6, "RULE_BOOK_NAME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->static:Lorg/greenrobot/greendao/Property;

    .line 23
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x16

    const-string v10, "ruleBookAuthor"

    const-string v12, "RULE_BOOK_AUTHOR"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->switch:Lorg/greenrobot/greendao/Property;

    .line 24
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x17

    const-string v4, "ruleChapterId"

    const-string v6, "RULE_CHAPTER_ID"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->throws:Lorg/greenrobot/greendao/Property;

    .line 25
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x18

    const-string v10, "ruleChapterUrl"

    const-string v12, "RULE_CHAPTER_URL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->default:Lorg/greenrobot/greendao/Property;

    .line 26
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x19

    const-string v4, "ruleChapterUrlNext"

    const-string v6, "RULE_CHAPTER_URL_NEXT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->extends:Lorg/greenrobot/greendao/Property;

    .line 27
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x1a

    const-string v10, "ruleChapterParentId"

    const-string v12, "RULE_CHAPTER_PARENT_ID"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->finally:Lorg/greenrobot/greendao/Property;

    .line 28
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x1b

    const-string v4, "ruleChapterParentName"

    const-string v6, "RULE_CHAPTER_PARENT_NAME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->package:Lorg/greenrobot/greendao/Property;

    .line 29
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x1c

    const-string v10, "ruleCoverUrl"

    const-string v12, "RULE_COVER_URL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->private:Lorg/greenrobot/greendao/Property;

    .line 30
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x1d

    const-string v4, "ruleIntroduce"

    const-string v6, "RULE_INTRODUCE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->abstract:Lorg/greenrobot/greendao/Property;

    .line 31
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x1e

    const-string v10, "ruleChapterList"

    const-string v12, "RULE_CHAPTER_LIST"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->continue:Lorg/greenrobot/greendao/Property;

    .line 32
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x1f

    const-string v4, "ruleChapterName"

    const-string v6, "RULE_CHAPTER_NAME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->strictfp:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x20

    const-string v10, "ruleContentUrl"

    const-string v12, "RULE_CONTENT_URL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->volatile:Lorg/greenrobot/greendao/Property;

    .line 34
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x21

    const-string v4, "ruleContentUrlNext"

    const-string v6, "RULE_CONTENT_URL_NEXT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->interface:Lorg/greenrobot/greendao/Property;

    .line 35
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x22

    const-string v10, "ruleBookContent"

    const-string v12, "RULE_BOOK_CONTENT"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->protected:Lorg/greenrobot/greendao/Property;

    .line 36
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x23

    const-string v4, "ruleBookContentDecoder"

    const-string v6, "RULE_BOOK_CONTENT_DECODER"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->transient:Lorg/greenrobot/greendao/Property;

    .line 37
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x24

    const-string v10, "httpUserAgent"

    const-string v12, "HTTP_USER_AGENT"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->implements:Lorg/greenrobot/greendao/Property;

    .line 38
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x25

    const-string v4, "ruleBookKind"

    const-string v6, "RULE_BOOK_KIND"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->instanceof:Lorg/greenrobot/greendao/Property;

    .line 39
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x26

    const-string v10, "ruleBookLastChapter"

    const-string v12, "RULE_BOOK_LAST_CHAPTER"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->synchronized:Lorg/greenrobot/greendao/Property;

    .line 40
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x27

    const-string v4, "ruleBookUrlPattern"

    const-string v6, "RULE_BOOK_URL_PATTERN"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->a:Lorg/greenrobot/greendao/Property;

    .line 41
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x28

    const-string v10, "loginUrl"

    const-string v12, "LOGIN_URL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->b:Lorg/greenrobot/greendao/Property;

    .line 42
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x29

    const-string v4, "loginUrlResult"

    const-string v6, "LOGIN_URL_RESULT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->c:Lorg/greenrobot/greendao/Property;

    .line 43
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x2a

    const-string v10, "sourceRemark"

    const-string v12, "SOURCE_REMARK"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->d:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
