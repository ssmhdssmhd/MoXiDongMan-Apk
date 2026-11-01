.class public abstract Lcom/google/zxing/oned/rss/expanded/decoders/break;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Landroid/support/v4/w8;

.field private final if:Lcom/google/zxing/oned/rss/expanded/decoders/native;


# direct methods
.method public constructor <init>(Landroid/support/v4/w8;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/break;->do:Landroid/support/v4/w8;

    .line 3
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/native;

    invoke-direct {v0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/native;-><init>(Landroid/support/v4/w8;)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/break;->if:Lcom/google/zxing/oned/rss/expanded/decoders/native;

    return-void
.end method

.method public static do(Landroid/support/v4/w8;)Lcom/google/zxing/oned/rss/expanded/decoders/break;
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/w8;->goto(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/else;

    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/else;-><init>(Landroid/support/v4/w8;)V

    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v1}, Landroid/support/v4/w8;->goto(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/catch;

    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/catch;-><init>(Landroid/support/v4/w8;)V

    return-object v0

    :cond_1
    const/4 v1, 0x4

    .line 5
    invoke-static {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/native;->else(Landroid/support/v4/w8;II)I

    move-result v2

    if-eq v2, v1, :cond_5

    const/4 v1, 0x5

    if-eq v2, v1, :cond_4

    .line 6
    invoke-static {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/native;->else(Landroid/support/v4/w8;II)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/4 v1, 0x7

    .line 7
    invoke-static {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/native;->else(Landroid/support/v4/w8;II)I

    move-result v0

    const-string v1, "17"

    const-string v2, "15"

    const-string v3, "13"

    const-string v4, "11"

    const-string v5, "320"

    const-string v6, "310"

    packed-switch v0, :pswitch_data_0

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "unknown decoder: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :pswitch_0
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/try;

    invoke-direct {v0, p0, v5, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/try;-><init>(Landroid/support/v4/w8;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 10
    :pswitch_1
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/try;

    invoke-direct {v0, p0, v6, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/try;-><init>(Landroid/support/v4/w8;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 11
    :pswitch_2
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/try;

    invoke-direct {v0, p0, v5, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/try;-><init>(Landroid/support/v4/w8;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 12
    :pswitch_3
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/try;

    invoke-direct {v0, p0, v6, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/try;-><init>(Landroid/support/v4/w8;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 13
    :pswitch_4
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/try;

    invoke-direct {v0, p0, v5, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/try;-><init>(Landroid/support/v4/w8;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 14
    :pswitch_5
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/try;

    invoke-direct {v0, p0, v6, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/try;-><init>(Landroid/support/v4/w8;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 15
    :pswitch_6
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/try;

    invoke-direct {v0, p0, v5, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/try;-><init>(Landroid/support/v4/w8;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 16
    :pswitch_7
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/try;

    invoke-direct {v0, p0, v6, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/try;-><init>(Landroid/support/v4/w8;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 17
    :cond_2
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/new;

    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/new;-><init>(Landroid/support/v4/w8;)V

    return-object v0

    .line 18
    :cond_3
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/for;

    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/for;-><init>(Landroid/support/v4/w8;)V

    return-object v0

    .line 19
    :cond_4
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/if;

    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/if;-><init>(Landroid/support/v4/w8;)V

    return-object v0

    .line 20
    :cond_5
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/do;

    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/do;-><init>(Landroid/support/v4/w8;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x38
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


# virtual methods
.method public final for()Landroid/support/v4/w8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/break;->do:Landroid/support/v4/w8;

    return-object v0
.end method

.method public final if()Lcom/google/zxing/oned/rss/expanded/decoders/native;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/break;->if:Lcom/google/zxing/oned/rss/expanded/decoders/native;

    return-object v0
.end method

.method public abstract new()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;,
            Landroid/support/v4/ld0;
        }
    .end annotation
.end method
