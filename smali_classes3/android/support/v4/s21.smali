.class public Landroid/support/v4/s21;
.super Lorg/chromium/net/impl/if;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/if;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic break(Z)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/net/impl/if;->finally(Z)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic case(IJ)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/net/impl/if;->switch(IJ)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic class(Ljava/lang/String;)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/net/impl/if;->c(Ljava/lang/String;)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic const(Lorg/chromium/net/for$do$if;)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/net/impl/if;->d(Lorg/chromium/net/for$do$if;)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic do(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/net/impl/if;->while(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic else(Z)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/net/impl/if;->throws(Z)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic final(Ljava/lang/String;)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/net/impl/if;->f(Ljava/lang/String;)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public for()Lorg/chromium/net/case;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/chromium/net/impl/if;->continue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/chromium/net/impl/if;->catch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/net/impl/if;->h(Ljava/lang/String;)Lorg/chromium/net/impl/if;

    .line 3
    :cond_0
    new-instance v0, Lorg/chromium/net/impl/CronetUrlRequestContext;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;-><init>(Lorg/chromium/net/impl/if;)V

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lorg/chromium/net/impl/if;->final:J

    return-object v0
.end method

.method public bridge synthetic goto(Z)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/net/impl/if;->default(Z)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic if(Ljava/lang/String;II)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/net/impl/if;->import(Ljava/lang/String;II)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic new(Z)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/net/impl/if;->return(Z)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic super(I)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/net/impl/if;->g(I)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic this(Z)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/net/impl/if;->extends(Z)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic throw(Ljava/lang/String;)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/net/impl/if;->h(Ljava/lang/String;)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic try(Z)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/net/impl/if;->static(Z)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method
