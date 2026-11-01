.class Lkotlin/io/else;
.super Lkotlin/io/case;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0014\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0001\u001a\n\u0010\u0005\u001a\u00020\u0003*\u00020\u0000\u001a\n\u0010\u0006\u001a\u00020\u0003*\u00020\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Ljava/io/File;",
        "Lkotlin/io/for;",
        "direction",
        "Lkotlin/io/if;",
        "transient",
        "synchronized",
        "instanceof",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xs = "kotlin/io/FilesKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/io/case;-><init>()V

    return-void
.end method

.method public static synthetic implements(Ljava/io/File;Lkotlin/io/for;ILjava/lang/Object;)Lkotlin/io/if;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 1
    sget-object p1, Lkotlin/io/for;->TOP_DOWN:Lkotlin/io/for;

    :cond_0
    invoke-static {p0, p1}, Lkotlin/io/else;->transient(Ljava/io/File;Lkotlin/io/for;)Lkotlin/io/if;

    move-result-object p0

    return-object p0
.end method

.method public static final instanceof(Ljava/io/File;)Lkotlin/io/if;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    const-string v0, "$this$walkBottomUp"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/io/for;->BOTTOM_UP:Lkotlin/io/for;

    invoke-static {p0, v0}, Lkotlin/io/else;->transient(Ljava/io/File;Lkotlin/io/for;)Lkotlin/io/if;

    move-result-object p0

    return-object p0
.end method

.method public static final synchronized(Ljava/io/File;)Lkotlin/io/if;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    const-string v0, "$this$walkTopDown"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/io/for;->TOP_DOWN:Lkotlin/io/for;

    invoke-static {p0, v0}, Lkotlin/io/else;->transient(Ljava/io/File;Lkotlin/io/for;)Lkotlin/io/if;

    move-result-object p0

    return-object p0
.end method

.method public static final transient(Ljava/io/File;Lkotlin/io/for;)Lkotlin/io/if;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .param p1    # Lkotlin/io/for;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    const-string v0, "$this$walk"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/io/if;

    invoke-direct {v0, p0, p1}, Lkotlin/io/if;-><init>(Ljava/io/File;Lkotlin/io/for;)V

    return-object v0
.end method
