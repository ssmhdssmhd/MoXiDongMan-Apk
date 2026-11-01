.class public final Lkotlin/random/new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u001a\u000c\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007\u001a\u000c\u0010\u0003\u001a\u00020\u0000*\u00020\u0001H\u0007\u001a\t\u0010\u0004\u001a\u00020\u0000H\u0081\u0008\u001a\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlin/random/try;",
        "Ljava/util/Random;",
        "do",
        "if",
        "for",
        "",
        "hi26",
        "low27",
        "",
        "new",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public static final do(Lkotlin/random/try;)Ljava/util/Random;
    .locals 1
    .param p0    # Lkotlin/random/try;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/iz1;
        version = "1.3"
    .end annotation

    .annotation build Landroid/support/v4/m41;
    .end annotation

    const-string v0, "$this$asJavaRandom"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lkotlin/random/do;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlin/random/do;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/random/do;->getImpl()Ljava/util/Random;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/random/if;

    invoke-direct {v0, p0}, Lkotlin/random/if;-><init>(Lkotlin/random/try;)V

    :goto_1
    return-object v0
.end method

.method private static final for()Lkotlin/random/try;
    .locals 1
    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/ae1;->do:Lkotlin/internal/do;

    invoke-virtual {v0}, Lkotlin/internal/do;->if()Lkotlin/random/try;

    move-result-object v0

    return-object v0
.end method

.method public static final if(Ljava/util/Random;)Lkotlin/random/try;
    .locals 1
    .param p0    # Ljava/util/Random;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/iz1;
        version = "1.3"
    .end annotation

    .annotation build Landroid/support/v4/m41;
    .end annotation

    const-string v0, "$this$asKotlinRandom"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lkotlin/random/if;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlin/random/if;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/random/if;->getImpl()Lkotlin/random/try;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/random/for;

    invoke-direct {v0, p0}, Lkotlin/random/for;-><init>(Ljava/util/Random;)V

    :goto_1
    return-object v0
.end method

.method public static final new(II)D
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x1b

    shl-long/2addr v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    long-to-double p0, v0

    const-wide/high16 v0, 0x20000000000000L

    long-to-double v0, v0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    return-wide p0
.end method
