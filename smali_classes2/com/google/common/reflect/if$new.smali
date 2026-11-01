.class public Lcom/google/common/reflect/if$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# instance fields
.field private final do:Ljava/lang/String;

.field public final if:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/reflect/if$new;->do:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/google/common/reflect/if$new;->if:Ljava/lang/ClassLoader;

    return-void
.end method

.method public static new(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/google/common/reflect/if$new;
    .locals 1

    const-string v0, ".class"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/reflect/if$if;

    invoke-direct {v0, p0, p1}, Lcom/google/common/reflect/if$if;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/reflect/if$new;

    invoke-direct {v0, p0, p1}, Lcom/google/common/reflect/if$new;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v0
.end method


# virtual methods
.method public final do()Lcom/google/common/io/new;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/reflect/if$new;->try()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/throws;->do(Ljava/net/URL;)Lcom/google/common/io/new;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/common/reflect/if$new;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/reflect/if$new;

    .line 3
    iget-object v0, p0, Lcom/google/common/reflect/if$new;->do:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/common/reflect/if$new;->do:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/reflect/if$new;->if:Ljava/lang/ClassLoader;

    iget-object p1, p1, Lcom/google/common/reflect/if$new;->if:Ljava/lang/ClassLoader;

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/if$new;->do:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/if$new;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final if(Ljava/nio/charset/Charset;)Lcom/google/common/io/goto;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/reflect/if$new;->try()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/io/throws;->if(Ljava/net/URL;Ljava/nio/charset/Charset;)Lcom/google/common/io/goto;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/if$new;->do:Ljava/lang/String;

    return-object v0
.end method

.method public final try()Ljava/net/URL;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/if$new;->if:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lcom/google/common/reflect/if$new;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    iget-object v1, p0, Lcom/google/common/reflect/if$new;->do:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
