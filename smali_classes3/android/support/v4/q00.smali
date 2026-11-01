.class public Landroid/support/v4/q00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/ricecode/similarity/SimilarityStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private do(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v1, -0x1

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method


# virtual methods
.method public score(Ljava/lang/String;Ljava/lang/String;)D
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/q00;->do(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 2
    invoke-direct {p0, p2}, Landroid/support/v4/q00;->do(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    .line 4
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    .line 5
    invoke-interface {p1, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    return-wide p1
.end method
