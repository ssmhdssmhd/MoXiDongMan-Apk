.class final Lcom/google/common/collect/h3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/h3$if;,
        Lcom/google/common/collect/h3$do;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/h3;->new(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static for(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lcom/google/common/collect/Multiset$Entry;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;)TE;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic if(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/h3;->for(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static new(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;)TE;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
