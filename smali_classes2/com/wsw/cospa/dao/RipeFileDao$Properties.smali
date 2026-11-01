.class public Lcom/wsw/cospa/dao/RipeFileDao$Properties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/dao/RipeFileDao;
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

.field public static final new:Lorg/greenrobot/greendao/Property;

.field public static final this:Lorg/greenrobot/greendao/Property;

.field public static final try:Lorg/greenrobot/greendao/Property;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v6, Lorg/greenrobot/greendao/Property;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    const-string v3, "isSelected"

    const/4 v4, 0x0

    const-string v5, "IS_SELECTED"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/wsw/cospa/dao/RipeFileDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 2
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x1

    const-string v10, "name"

    const/4 v11, 0x0

    const-string v12, "NAME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/RipeFileDao$Properties;->if:Lorg/greenrobot/greendao/Property;

    .line 3
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x2

    const-string v4, "size"

    const/4 v5, 0x0

    const-string v6, "SIZE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/RipeFileDao$Properties;->for:Lorg/greenrobot/greendao/Property;

    .line 4
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x3

    const-string v10, "date"

    const-string v12, "DATE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/RipeFileDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    .line 5
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x4

    const-string v4, "suffix"

    const-string v6, "SUFFIX"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/RipeFileDao$Properties;->try:Lorg/greenrobot/greendao/Property;

    .line 6
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x5

    const-string v10, "path"

    const/4 v11, 0x1

    const-string v12, "PATH"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/RipeFileDao$Properties;->case:Lorg/greenrobot/greendao/Property;

    .line 7
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Boolean;

    const/4 v2, 0x6

    const-string v4, "isDirectory"

    const-string v6, "IS_DIRECTORY"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/RipeFileDao$Properties;->else:Lorg/greenrobot/greendao/Property;

    .line 8
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Integer;

    const/4 v8, 0x7

    const-string v10, "childCount"

    const/4 v11, 0x0

    const-string v12, "CHILD_COUNT"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/RipeFileDao$Properties;->goto:Lorg/greenrobot/greendao/Property;

    .line 9
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x8

    const-string v4, "indexPape"

    const-string v6, "INDEX_PAPE"

    move-object v1, v0

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/RipeFileDao$Properties;->this:Lorg/greenrobot/greendao/Property;

    .line 10
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const/16 v2, 0x9

    const-string v4, "maxPage"

    const-string v6, "MAX_PAGE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/RipeFileDao$Properties;->break:Lorg/greenrobot/greendao/Property;

    .line 11
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v10, Ljava/lang/String;

    const/16 v9, 0xa

    const-string v11, "parentName"

    const/4 v12, 0x0

    const-string v13, "PARENT_NAME"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/RipeFileDao$Properties;->catch:Lorg/greenrobot/greendao/Property;

    .line 12
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xb

    const-string v4, "parentPath"

    const-string v6, "PARENT_PATH"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/RipeFileDao$Properties;->class:Lorg/greenrobot/greendao/Property;

    .line 13
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0xc

    const-string v10, "currPagePath"

    const/4 v11, 0x0

    const-string v12, "CURR_PAGE_PATH"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/RipeFileDao$Properties;->const:Lorg/greenrobot/greendao/Property;

    .line 14
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xd

    const-string v4, "rootPath"

    const-string v6, "ROOT_PATH"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wsw/cospa/dao/RipeFileDao$Properties;->final:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
