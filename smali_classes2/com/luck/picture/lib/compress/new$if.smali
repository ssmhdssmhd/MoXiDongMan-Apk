.class public Lcom/luck/picture/lib/compress/new$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/compress/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private break:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field private case:Lcom/luck/picture/lib/compress/OnCompressListener;

.field private do:Landroid/content/Context;

.field private else:Lcom/luck/picture/lib/compress/CompressionPredicate;

.field private for:Z

.field private goto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/compress/InputStreamProvider;",
            ">;"
        }
    .end annotation
.end field

.field private if:Ljava/lang/String;

.field private new:I

.field private this:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private try:Lcom/luck/picture/lib/compress/OnRenameListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/luck/picture/lib/compress/new$if;->new:I

    .line 3
    iput-object p1, p0, Lcom/luck/picture/lib/compress/new$if;->do:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/compress/new$if;->this:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/compress/new$if;->break:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/compress/new$if;->goto:Ljava/util/List;

    return-void
.end method

.method private break()Lcom/luck/picture/lib/compress/new;
    .locals 2

    .line 1
    new-instance v0, Lcom/luck/picture/lib/compress/new;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/luck/picture/lib/compress/new;-><init>(Lcom/luck/picture/lib/compress/new$if;Lcom/luck/picture/lib/compress/new$do;)V

    return-object v0
.end method

.method public static synthetic case(Lcom/luck/picture/lib/compress/new$if;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/compress/new$if;->goto:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic do(Lcom/luck/picture/lib/compress/new$if;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/compress/new$if;->this:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic else(Lcom/luck/picture/lib/compress/new$if;)Lcom/luck/picture/lib/compress/OnCompressListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/compress/new$if;->case:Lcom/luck/picture/lib/compress/OnCompressListener;

    return-object p0
.end method

.method public static synthetic for(Lcom/luck/picture/lib/compress/new$if;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/compress/new$if;->do:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic goto(Lcom/luck/picture/lib/compress/new$if;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/luck/picture/lib/compress/new$if;->new:I

    return p0
.end method

.method public static synthetic if(Lcom/luck/picture/lib/compress/new$if;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/compress/new$if;->break:Ljava/util/List;

    return-object p0
.end method

.method private import(Lcom/luck/picture/lib/entity/LocalMedia;)Lcom/luck/picture/lib/compress/new$if;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new$if;->goto:Ljava/util/List;

    new-instance v1, Lcom/luck/picture/lib/compress/new$if$if;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/compress/new$if$if;-><init>(Lcom/luck/picture/lib/compress/new$if;Lcom/luck/picture/lib/entity/LocalMedia;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static synthetic new(Lcom/luck/picture/lib/compress/new$if;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/compress/new$if;->if:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic this(Lcom/luck/picture/lib/compress/new$if;)Lcom/luck/picture/lib/compress/CompressionPredicate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/compress/new$if;->else:Lcom/luck/picture/lib/compress/CompressionPredicate;

    return-object p0
.end method

.method public static synthetic try(Lcom/luck/picture/lib/compress/new$if;)Lcom/luck/picture/lib/compress/OnRenameListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/compress/new$if;->try:Lcom/luck/picture/lib/compress/OnRenameListener;

    return-object p0
.end method


# virtual methods
.method public catch(Lcom/luck/picture/lib/compress/CompressionPredicate;)Lcom/luck/picture/lib/compress/new$if;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/compress/new$if;->else:Lcom/luck/picture/lib/compress/CompressionPredicate;

    return-object p0
.end method

.method public class(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/compress/new$if;->break()Lcom/luck/picture/lib/compress/new;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/compress/new$if$try;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/compress/new$if$try;-><init>(Lcom/luck/picture/lib/compress/new$if;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/luck/picture/lib/compress/new$if;->do:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/luck/picture/lib/compress/new;->new(Lcom/luck/picture/lib/compress/new;Lcom/luck/picture/lib/compress/InputStreamProvider;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public const()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/compress/new$if;->break()Lcom/luck/picture/lib/compress/new;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/compress/new$if;->do:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/luck/picture/lib/compress/new;->try(Lcom/luck/picture/lib/compress/new;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public default(Z)Lcom/luck/picture/lib/compress/new$if;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/luck/picture/lib/compress/new$if;->for:Z

    return-object p0
.end method

.method public extends(Lcom/luck/picture/lib/compress/OnRenameListener;)Lcom/luck/picture/lib/compress/new$if;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/compress/new$if;->try:Lcom/luck/picture/lib/compress/OnRenameListener;

    return-object p0
.end method

.method public final(I)Lcom/luck/picture/lib/compress/new$if;
    .locals 0

    .line 1
    iput p1, p0, Lcom/luck/picture/lib/compress/new$if;->new:I

    return-object p0
.end method

.method public finally(Ljava/lang/String;)Lcom/luck/picture/lib/compress/new$if;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/compress/new$if;->if:Ljava/lang/String;

    return-object p0
.end method

.method public native(Ljava/io/File;)Lcom/luck/picture/lib/compress/new$if;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new$if;->goto:Ljava/util/List;

    new-instance v1, Lcom/luck/picture/lib/compress/new$if$do;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/compress/new$if$do;-><init>(Lcom/luck/picture/lib/compress/new$if;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public public(Ljava/lang/String;)Lcom/luck/picture/lib/compress/new$if;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new$if;->goto:Ljava/util/List;

    new-instance v1, Lcom/luck/picture/lib/compress/new$if$for;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/compress/new$if$for;-><init>(Lcom/luck/picture/lib/compress/new$if;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public return(Ljava/util/List;)Lcom/luck/picture/lib/compress/new$if;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/luck/picture/lib/compress/new$if;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/compress/new$if;->public(Ljava/lang/String;)Lcom/luck/picture/lib/compress/new$if;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Ljava/io/File;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/compress/new$if;->native(Ljava/io/File;)Lcom/luck/picture/lib/compress/new$if;

    goto :goto_0

    .line 6
    :cond_1
    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 7
    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/compress/new$if;->throw(Landroid/net/Uri;)Lcom/luck/picture/lib/compress/new$if;

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incoming data type exception, it must be String, File, Uri or Bitmap"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object p0
.end method

.method public static(Ljava/util/List;)Lcom/luck/picture/lib/compress/new$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)",
            "Lcom/luck/picture/lib/compress/new$if;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/compress/new$if;->break:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 3
    invoke-direct {p0, v0}, Lcom/luck/picture/lib/compress/new$if;->import(Lcom/luck/picture/lib/entity/LocalMedia;)Lcom/luck/picture/lib/compress/new$if;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public super()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/compress/new$if;->break()Lcom/luck/picture/lib/compress/new;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/compress/new$if;->do:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/luck/picture/lib/compress/new;->for(Lcom/luck/picture/lib/compress/new;Landroid/content/Context;)V

    return-void
.end method

.method public switch(I)Lcom/luck/picture/lib/compress/new$if;
    .locals 0

    return-object p0
.end method

.method public throw(Landroid/net/Uri;)Lcom/luck/picture/lib/compress/new$if;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new$if;->goto:Ljava/util/List;

    new-instance v1, Lcom/luck/picture/lib/compress/new$if$new;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/compress/new$if$new;-><init>(Lcom/luck/picture/lib/compress/new$if;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public throws(Lcom/luck/picture/lib/compress/OnCompressListener;)Lcom/luck/picture/lib/compress/new$if;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/compress/new$if;->case:Lcom/luck/picture/lib/compress/OnCompressListener;

    return-object p0
.end method

.method public while(Lcom/luck/picture/lib/compress/InputStreamProvider;)Lcom/luck/picture/lib/compress/new$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new$if;->goto:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
