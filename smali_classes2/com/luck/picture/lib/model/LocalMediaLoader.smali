.class public Lcom/luck/picture/lib/model/LocalMediaLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/model/LocalMediaLoader$LocalMediaLoadListener;
    }
.end annotation


# static fields
.field private static final break:Ljava/lang/String; = "!=\'image/gif\'"

.field private static final catch:I = 0x1f4

.field private static final class:[Ljava/lang/String;

.field private static final const:Ljava/lang/String; = "media_type=? AND _size>0"

.field private static final else:Landroid/net/Uri;

.field private static final final:Ljava/lang/String; = "media_type=? AND _size>0 AND mime_type!=\'image/gif\'"

.field private static final goto:Ljava/lang/String; = "_id DESC"

.field private static final super:[Ljava/lang/String;

.field private static final this:Ljava/lang/String; = "duration"


# instance fields
.field private case:Z

.field private do:I

.field private for:Z

.field private if:Landroid/content/Context;

.field private new:J

.field private try:J


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "external"

    .line 1
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/model/LocalMediaLoader;->else:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "_data"

    const-string v3, "mime_type"

    const-string v4, "width"

    const-string v5, "height"

    const-string v6, "duration"

    .line 2
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/model/LocalMediaLoader;->class:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x3

    .line 4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/luck/picture/lib/model/LocalMediaLoader;->super:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->if:Landroid/content/Context;

    .line 3
    iput p2, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->do:I

    .line 4
    iput-boolean p3, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->for:Z

    .line 5
    iput-wide p4, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->new:J

    .line 6
    iput-wide p6, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->try:J

    .line 7
    invoke-static {}, Landroid/support/v4/ps1;->do()Z

    move-result p1

    iput-boolean p1, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->case:Z

    return-void
.end method

.method public static synthetic break()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/luck/picture/lib/model/LocalMediaLoader;->super:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic case(Lcom/luck/picture/lib/model/LocalMediaLoader;Ljava/lang/String;Ljava/util/List;)Lcom/luck/picture/lib/entity/LocalMediaFolder;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/model/LocalMediaLoader;->while(Ljava/lang/String;Ljava/util/List;)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic catch(I)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/luck/picture/lib/model/LocalMediaLoader;->return(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic class(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/luck/picture/lib/model/LocalMediaLoader;->public(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic const()Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Lcom/luck/picture/lib/model/LocalMediaLoader;->else:Landroid/net/Uri;

    return-object v0
.end method

.method public static synthetic do(Lcom/luck/picture/lib/entity/LocalMediaFolder;Lcom/luck/picture/lib/entity/LocalMediaFolder;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/luck/picture/lib/model/LocalMediaLoader;->static(Lcom/luck/picture/lib/entity/LocalMediaFolder;Lcom/luck/picture/lib/entity/LocalMediaFolder;)I

    move-result p0

    return p0
.end method

.method public static synthetic else(Lcom/luck/picture/lib/model/LocalMediaLoader;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/model/LocalMediaLoader;->throws(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic final()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/luck/picture/lib/model/LocalMediaLoader;->class:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic for(Lcom/luck/picture/lib/model/LocalMediaLoader;JJ)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/luck/picture/lib/model/LocalMediaLoader;->throw(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic goto(Lcom/luck/picture/lib/model/LocalMediaLoader;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->for:Z

    return p0
.end method

.method public static synthetic if(Lcom/luck/picture/lib/model/LocalMediaLoader;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->do:I

    return p0
.end method

.method private import(J)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/luck/picture/lib/model/LocalMediaLoader;->else:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static native(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(media_type=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, " AND mime_type!=\'image/gif\'"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " OR "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "media_type=? AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") AND "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_size"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic new(Lcom/luck/picture/lib/model/LocalMediaLoader;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->case:Z

    return p0
.end method

.method private static public(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media_type=? AND _size>0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static return(I)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method private static synthetic static(Lcom/luck/picture/lib/entity/LocalMediaFolder;Lcom/luck/picture/lib/entity/LocalMediaFolder;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->new()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->new()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->for()I

    move-result p0

    .line 3
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->for()I

    move-result p1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    if-ge p0, p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public static synthetic super(Lcom/luck/picture/lib/model/LocalMediaLoader;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->if:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic this(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/luck/picture/lib/model/LocalMediaLoader;->native(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private throw(JJ)Ljava/lang/String;
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->new:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :cond_0
    cmp-long v4, p1, v2

    if-eqz v4, :cond_1

    .line 2
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 3
    :cond_1
    sget-object p1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->try:J

    .line 4
    invoke-static {p3, p4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, p2, v4

    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->try:J

    .line 5
    invoke-static {p3, p4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    cmp-long v5, p3, v2

    if-nez v5, :cond_2

    const-string p3, ""

    goto :goto_0

    :cond_2
    const-string p3, "="

    :goto_0
    aput-object p3, p2, v4

    const/4 p3, 0x2

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p2, p3

    const-string p3, "%d <%s duration and duration <= %d"

    .line 7
    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private throws(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/nu0;->do:Landroid/support/v4/nu0;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static synthetic try(Lcom/luck/picture/lib/model/LocalMediaLoader;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/model/LocalMediaLoader;->import(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private while(Ljava/lang/String;Ljava/util/List;)Lcom/luck/picture/lib/entity/LocalMediaFolder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 4
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->try()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 5
    :cond_1
    new-instance v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->const(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->final(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->break(Ljava/lang/String;)V

    .line 9
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method


# virtual methods
.method public switch(Lcom/luck/picture/lib/model/LocalMediaLoader$LocalMediaLoadListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/luck/picture/lib/model/LocalMediaLoader$do;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/model/LocalMediaLoader$do;-><init>(Lcom/luck/picture/lib/model/LocalMediaLoader;Lcom/luck/picture/lib/model/LocalMediaLoader$LocalMediaLoadListener;)V

    invoke-static {v0}, Lcom/luck/picture/lib/rxbus2/if;->else(Lcom/luck/picture/lib/rxbus2/if$new;)V

    return-void
.end method
