.class public final Lcom/google/common/io/throws;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/throws$if;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Ljava/net/URL;Ljava/nio/charset/Charset;Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/nio/charset/Charset;",
            "Lcom/google/common/io/LineProcessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/io/throws;->if(Ljava/net/URL;Ljava/nio/charset/Charset;)Lcom/google/common/io/goto;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/common/io/goto;->while(Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static do(Ljava/net/URL;)Lcom/google/common/io/new;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/io/throws$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/io/throws$if;-><init>(Ljava/net/URL;Lcom/google/common/io/throws$do;)V

    return-object v0
.end method

.method public static else(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/io/throws$do;

    invoke-direct {v0}, Lcom/google/common/io/throws$do;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/common/io/throws;->case(Ljava/net/URL;Ljava/nio/charset/Charset;Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static for(Ljava/net/URL;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/io/throws;->do(Ljava/net/URL;)Lcom/google/common/io/new;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/io/new;->else(Ljava/io/OutputStream;)J

    return-void
.end method

.method public static goto(Ljava/net/URL;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/io/throws;->do(Ljava/net/URL;)Lcom/google/common/io/new;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/io/new;->super()[B

    move-result-object p0

    return-object p0
.end method

.method public static if(Ljava/net/URL;Ljava/nio/charset/Charset;)Lcom/google/common/io/goto;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/io/throws;->do(Ljava/net/URL;)Lcom/google/common/io/new;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/io/new;->do(Ljava/nio/charset/Charset;)Lcom/google/common/io/goto;

    move-result-object p0

    return-object p0
.end method

.method public static new(Ljava/lang/Class;Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/URL;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "resource %s relative to %s not found."

    .line 3
    invoke-static {v1, v2, p1, p0}, Landroid/support/v4/af1;->default(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static this(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/io/throws;->if(Ljava/net/URL;Ljava/nio/charset/Charset;)Lcom/google/common/io/goto;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/io/goto;->final()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/google/common/io/throws;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/base/super;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "resource %s not found."

    .line 4
    invoke-static {v1, v2, p0}, Landroid/support/v4/af1;->return(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
