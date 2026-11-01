.class public final Lcom/google/zxing/multi/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/Reader;


# instance fields
.field private final do:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/zxing/multi/do;->do:Lcom/google/zxing/Reader;

    return-void
.end method

.method private static do([Landroid/support/v4/yn1;II)V
    .locals 5

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 2
    aget-object v1, p0, v0

    .line 3
    new-instance v2, Landroid/support/v4/yn1;

    invoke-virtual {v1}, Landroid/support/v4/yn1;->for()F

    move-result v3

    int-to-float v4, p1

    add-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/support/v4/yn1;->new()F

    move-result v1

    int-to-float v4, p2

    add-float/2addr v1, v4

    invoke-direct {v2, v3, v1}, Landroid/support/v4/yn1;-><init>(FF)V

    aput-object v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/for;)Landroid/support/v4/wn1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;,
            Landroid/support/v4/ll;,
            Landroid/support/v4/ld0;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/do;->decode(Lcom/google/zxing/for;Ljava/util/Map;)Landroid/support/v4/wn1;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lcom/google/zxing/for;Ljava/util/Map;)Landroid/support/v4/wn1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/for;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "*>;)",
            "Landroid/support/v4/wn1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;,
            Landroid/support/v4/ll;,
            Landroid/support/v4/ld0;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/for;->try()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/google/zxing/for;->new()I

    move-result v1

    .line 4
    div-int/lit8 v0, v0, 0x2

    .line 5
    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/google/zxing/multi/do;->do:Lcom/google/zxing/Reader;

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/google/zxing/for;->do(IIII)Lcom/google/zxing/for;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/for;Ljava/util/Map;)Landroid/support/v4/wn1;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/j41; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 7
    :catch_0
    :try_start_1
    iget-object v3, p0, Lcom/google/zxing/multi/do;->do:Lcom/google/zxing/Reader;

    invoke-virtual {p1, v0, v2, v0, v1}, Lcom/google/zxing/for;->do(IIII)Lcom/google/zxing/for;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/for;Ljava/util/Map;)Landroid/support/v4/wn1;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Landroid/support/v4/wn1;->case()[Landroid/support/v4/yn1;

    move-result-object v4

    invoke-static {v4, v0, v2}, Lcom/google/zxing/multi/do;->do([Landroid/support/v4/yn1;II)V
    :try_end_1
    .catch Landroid/support/v4/j41; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 9
    :catch_1
    :try_start_2
    iget-object v3, p0, Lcom/google/zxing/multi/do;->do:Lcom/google/zxing/Reader;

    invoke-virtual {p1, v2, v1, v0, v1}, Lcom/google/zxing/for;->do(IIII)Lcom/google/zxing/for;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/for;Ljava/util/Map;)Landroid/support/v4/wn1;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Landroid/support/v4/wn1;->case()[Landroid/support/v4/yn1;

    move-result-object v4

    invoke-static {v4, v2, v1}, Lcom/google/zxing/multi/do;->do([Landroid/support/v4/yn1;II)V
    :try_end_2
    .catch Landroid/support/v4/j41; {:try_start_2 .. :try_end_2} :catch_2

    return-object v3

    .line 11
    :catch_2
    :try_start_3
    iget-object v2, p0, Lcom/google/zxing/multi/do;->do:Lcom/google/zxing/Reader;

    invoke-virtual {p1, v0, v1, v0, v1}, Lcom/google/zxing/for;->do(IIII)Lcom/google/zxing/for;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/for;Ljava/util/Map;)Landroid/support/v4/wn1;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/support/v4/wn1;->case()[Landroid/support/v4/yn1;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/google/zxing/multi/do;->do([Landroid/support/v4/yn1;II)V
    :try_end_3
    .catch Landroid/support/v4/j41; {:try_start_3 .. :try_end_3} :catch_3

    return-object v2

    .line 13
    :catch_3
    div-int/lit8 v2, v0, 0x2

    .line 14
    div-int/lit8 v3, v1, 0x2

    .line 15
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/zxing/for;->do(IIII)Lcom/google/zxing/for;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/google/zxing/multi/do;->do:Lcom/google/zxing/Reader;

    invoke-interface {v0, p1, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/for;Ljava/util/Map;)Landroid/support/v4/wn1;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/support/v4/wn1;->case()[Landroid/support/v4/yn1;

    move-result-object p2

    invoke-static {p2, v2, v3}, Lcom/google/zxing/multi/do;->do([Landroid/support/v4/yn1;II)V

    return-object p1
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/multi/do;->do:Lcom/google/zxing/Reader;

    invoke-interface {v0}, Lcom/google/zxing/Reader;->reset()V

    return-void
.end method
