.class public final Lcom/google/zxing/oned/public;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/Writer;


# instance fields
.field private final do:Lcom/google/zxing/oned/this;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/zxing/oned/this;

    invoke-direct {v0}, Lcom/google/zxing/oned/this;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/public;->do:Lcom/google/zxing/oned/this;

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/do;II)Landroid/support/v4/z8;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ig2;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/oned/public;->encode(Ljava/lang/String;Lcom/google/zxing/do;IILjava/util/Map;)Landroid/support/v4/z8;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/do;IILjava/util/Map;)Landroid/support/v4/z8;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/do;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/try;",
            "*>;)",
            "Landroid/support/v4/z8;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ig2;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/zxing/do;->UPC_A:Lcom/google/zxing/do;

    if-ne p2, v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/zxing/oned/public;->do:Lcom/google/zxing/oned/this;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/do;->EAN_13:Lcom/google/zxing/do;

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/oned/this;->encode(Ljava/lang/String;Lcom/google/zxing/do;IILjava/util/Map;)Landroid/support/v4/z8;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode UPC-A, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
