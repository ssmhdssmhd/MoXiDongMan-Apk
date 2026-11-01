.class public final Lcom/google/common/reflect/if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/if$for;,
        Lcom/google/common/reflect/if$try;,
        Lcom/google/common/reflect/if$if;,
        Lcom/google/common/reflect/if$new;
    }
.end annotation


# static fields
.field private static final for:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Lcom/google/common/reflect/if$if;",
            ">;"
        }
    .end annotation
.end field

.field private static final if:Ljava/util/logging/Logger;

.field private static final new:Lcom/google/common/base/Splitter;

.field private static final try:Ljava/lang/String; = ".class"


# instance fields
.field private final do:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/reflect/if$new;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/reflect/if;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/if;->if:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lcom/google/common/reflect/if$do;

    invoke-direct {v0}, Lcom/google/common/reflect/if$do;-><init>()V

    sput-object v0, Lcom/google/common/reflect/if;->for:Lcom/google/common/base/Predicate;

    const-string v0, " "

    .line 3
    invoke-static {v0}, Lcom/google/common/base/Splitter;->catch(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->else()Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/if;->new:Lcom/google/common/base/Splitter;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/g1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/reflect/if$new;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/reflect/if;->do:Lcom/google/common/collect/g1;

    return-void
.end method

.method public static break(Ljava/net/URL;)Ljava/io/File;
    .locals 2
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/af1;->new(Z)V

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic do()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/reflect/if;->if:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static for(Ljava/lang/ClassLoader;)Lcom/google/common/reflect/if;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/reflect/if$for;

    invoke-direct {v0}, Lcom/google/common/reflect/if$for;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/common/reflect/if$try;->else(Ljava/lang/ClassLoader;)V

    .line 3
    new-instance p0, Lcom/google/common/reflect/if;

    invoke-virtual {v0}, Lcom/google/common/reflect/if$for;->class()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/if;-><init>(Lcom/google/common/collect/g1;)V

    return-object p0
.end method

.method public static synthetic if()Lcom/google/common/base/Splitter;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/reflect/if;->new:Lcom/google/common/base/Splitter;

    return-object v0
.end method

.method public static try(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public case()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/reflect/if$new;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/if;->do:Lcom/google/common/collect/g1;

    return-object v0
.end method

.method public else()Lcom/google/common/collect/g1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/reflect/if$if;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/if;->do:Lcom/google/common/collect/g1;

    invoke-static {v0}, Lcom/google/common/collect/t;->import(Ljava/lang/Iterable;)Lcom/google/common/collect/t;

    move-result-object v0

    const-class v1, Lcom/google/common/reflect/if$if;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/t;->final(Ljava/lang/Class;)Lcom/google/common/collect/t;

    move-result-object v0

    sget-object v1, Lcom/google/common/reflect/if;->for:Lcom/google/common/base/Predicate;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/t;->const(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/t;->strictfp()Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method

.method public goto(Ljava/lang/String;)Lcom/google/common/collect/g1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/reflect/if$if;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/common/collect/g1;->builder()Lcom/google/common/collect/g1$do;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/google/common/reflect/if;->else()Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/g1;->iterator()Landroid/support/v4/ac2;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/reflect/if$if;

    .line 4
    invoke-virtual {v2}, Lcom/google/common/reflect/if$if;->goto()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/common/collect/g1$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/g1$do;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/g1$do;->final()Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1
.end method

.method public new()Lcom/google/common/collect/g1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/reflect/if$if;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/if;->do:Lcom/google/common/collect/g1;

    invoke-static {v0}, Lcom/google/common/collect/t;->import(Ljava/lang/Iterable;)Lcom/google/common/collect/t;

    move-result-object v0

    const-class v1, Lcom/google/common/reflect/if$if;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/t;->final(Ljava/lang/Class;)Lcom/google/common/collect/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/t;->strictfp()Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method

.method public this(Ljava/lang/String;)Lcom/google/common/collect/g1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/reflect/if$if;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/common/collect/g1;->builder()Lcom/google/common/collect/g1$do;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/google/common/reflect/if;->else()Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/g1;->iterator()Landroid/support/v4/ac2;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/reflect/if$if;

    .line 5
    invoke-virtual {v2}, Lcom/google/common/reflect/if$if;->else()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/common/collect/g1$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/g1$do;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/g1$do;->final()Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1
.end method
