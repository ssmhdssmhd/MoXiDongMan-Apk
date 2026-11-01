.class public final Lcom/google/zxing/multi/qrcode/detector/do;
.super Lcom/google/zxing/qrcode/detector/if;
.source "SourceFile"


# static fields
.field private static final for:[Landroid/support/v4/oz;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/support/v4/oz;

    .line 1
    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/do;->for:[Landroid/support/v4/oz;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/z8;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/if;-><init>(Landroid/support/v4/z8;)V

    return-void
.end method


# virtual methods
.method public final(Ljava/util/Map;)[Landroid/support/v4/oz;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "*>;)[",
            "Lcom/google/zxing/common/DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/if;->goto()Landroid/support/v4/z8;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Lcom/google/zxing/new;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/new;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/ResultPointCallback;

    .line 4
    :goto_0
    new-instance v2, Lcom/google/zxing/multi/qrcode/detector/if;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/multi/qrcode/detector/if;-><init>(Landroid/support/v4/z8;Lcom/google/zxing/ResultPointCallback;)V

    .line 5
    invoke-virtual {v2, p1}, Lcom/google/zxing/multi/qrcode/detector/if;->import(Ljava/util/Map;)[Landroid/support/v4/dc0;

    move-result-object p1

    .line 6
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 9
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/google/zxing/qrcode/detector/if;->break(Landroid/support/v4/dc0;)Landroid/support/v4/oz;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/support/v4/kl1; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    sget-object p1, Lcom/google/zxing/multi/qrcode/detector/do;->for:[Landroid/support/v4/oz;

    return-object p1

    .line 12
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/support/v4/oz;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/support/v4/oz;

    return-object p1

    .line 13
    :cond_3
    invoke-static {}, Landroid/support/v4/j41;->getNotFoundInstance()Landroid/support/v4/j41;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
