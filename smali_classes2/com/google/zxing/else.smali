.class public final Lcom/google/zxing/else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/else;->encode(Ljava/lang/String;Lcom/google/zxing/do;IILjava/util/Map;)Landroid/support/v4/z8;

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
    sget-object v0, Lcom/google/zxing/else$do;->do:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "No encoder available for format "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :pswitch_0
    new-instance v0, Landroid/support/v4/n5;

    invoke-direct {v0}, Landroid/support/v4/n5;-><init>()V

    goto :goto_0

    .line 5
    :pswitch_1
    new-instance v0, Landroid/support/v4/vw;

    invoke-direct {v0}, Landroid/support/v4/vw;-><init>()V

    goto :goto_0

    .line 6
    :pswitch_2
    new-instance v0, Landroid/support/v4/rm;

    invoke-direct {v0}, Landroid/support/v4/rm;-><init>()V

    goto :goto_0

    .line 7
    :pswitch_3
    new-instance v0, Landroid/support/v4/aa1;

    invoke-direct {v0}, Landroid/support/v4/aa1;-><init>()V

    goto :goto_0

    .line 8
    :pswitch_4
    new-instance v0, Lcom/google/zxing/oned/final;

    invoke-direct {v0}, Lcom/google/zxing/oned/final;-><init>()V

    goto :goto_0

    .line 9
    :pswitch_5
    new-instance v0, Lcom/google/zxing/oned/for;

    invoke-direct {v0}, Lcom/google/zxing/oned/for;-><init>()V

    goto :goto_0

    .line 10
    :pswitch_6
    new-instance v0, Lcom/google/zxing/oned/else;

    invoke-direct {v0}, Lcom/google/zxing/oned/else;-><init>()V

    goto :goto_0

    .line 11
    :pswitch_7
    new-instance v0, Lcom/google/zxing/oned/try;

    invoke-direct {v0}, Lcom/google/zxing/oned/try;-><init>()V

    goto :goto_0

    .line 12
    :pswitch_8
    new-instance v0, Lcom/google/zxing/qrcode/if;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/if;-><init>()V

    goto :goto_0

    .line 13
    :pswitch_9
    new-instance v0, Lcom/google/zxing/oned/public;

    invoke-direct {v0}, Lcom/google/zxing/oned/public;-><init>()V

    goto :goto_0

    .line 14
    :pswitch_a
    new-instance v0, Lcom/google/zxing/oned/this;

    invoke-direct {v0}, Lcom/google/zxing/oned/this;-><init>()V

    goto :goto_0

    .line 15
    :pswitch_b
    new-instance v0, Lcom/google/zxing/oned/extends;

    invoke-direct {v0}, Lcom/google/zxing/oned/extends;-><init>()V

    goto :goto_0

    .line 16
    :pswitch_c
    new-instance v0, Lcom/google/zxing/oned/catch;

    invoke-direct {v0}, Lcom/google/zxing/oned/catch;-><init>()V

    :goto_0
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 17
    invoke-interface/range {v1 .. v6}, Lcom/google/zxing/Writer;->encode(Ljava/lang/String;Lcom/google/zxing/do;IILjava/util/Map;)Landroid/support/v4/z8;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
