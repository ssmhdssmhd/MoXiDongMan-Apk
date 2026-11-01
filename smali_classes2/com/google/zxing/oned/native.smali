.class public final Lcom/google/zxing/oned/native;
.super Lcom/google/zxing/oned/throws;
.source "SourceFile"


# instance fields
.field private final catch:Lcom/google/zxing/oned/throws;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/throws;-><init>()V

    .line 2
    new-instance v0, Lcom/google/zxing/oned/goto;

    invoke-direct {v0}, Lcom/google/zxing/oned/goto;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/native;->catch:Lcom/google/zxing/oned/throws;

    return-void
.end method

.method private static while(Landroid/support/v4/wn1;)Landroid/support/v4/wn1;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ld0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/wn1;->else()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    .line 3
    new-instance v1, Landroid/support/v4/wn1;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v4/wn1;->case()[Landroid/support/v4/yn1;

    move-result-object v3

    sget-object v4, Lcom/google/zxing/do;->UPC_A:Lcom/google/zxing/do;

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/support/v4/wn1;-><init>(Ljava/lang/String;[B[Landroid/support/v4/yn1;Lcom/google/zxing/do;)V

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/wn1;->try()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/wn1;->try()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/support/v4/wn1;->this(Ljava/util/Map;)V

    :cond_0
    return-object v1

    .line 6
    :cond_1
    invoke-static {}, Landroid/support/v4/ld0;->getFormatInstance()Landroid/support/v4/ld0;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public break(Landroid/support/v4/w8;[ILjava/lang/StringBuilder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/native;->catch:Lcom/google/zxing/oned/throws;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/zxing/oned/throws;->break(Landroid/support/v4/w8;[ILjava/lang/StringBuilder;)I

    move-result p1

    return p1
.end method

.method public catch(ILandroid/support/v4/w8;[ILjava/util/Map;)Landroid/support/v4/wn1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/w8;",
            "[I",
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "*>;)",
            "Landroid/support/v4/wn1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;,
            Landroid/support/v4/ld0;,
            Landroid/support/v4/ll;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/native;->catch:Lcom/google/zxing/oned/throws;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/zxing/oned/throws;->catch(ILandroid/support/v4/w8;[ILjava/util/Map;)Landroid/support/v4/wn1;

    move-result-object p1

    invoke-static {p1}, Lcom/google/zxing/oned/native;->while(Landroid/support/v4/wn1;)Landroid/support/v4/wn1;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lcom/google/zxing/for;)Landroid/support/v4/wn1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;,
            Landroid/support/v4/ld0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/native;->catch:Lcom/google/zxing/oned/throws;

    invoke-virtual {v0, p1}, Lcom/google/zxing/oned/while;->decode(Lcom/google/zxing/for;)Landroid/support/v4/wn1;

    move-result-object p1

    invoke-static {p1}, Lcom/google/zxing/oned/native;->while(Landroid/support/v4/wn1;)Landroid/support/v4/wn1;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lcom/google/zxing/for;Ljava/util/Map;)Landroid/support/v4/wn1;
    .locals 1
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
            Landroid/support/v4/ld0;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/zxing/oned/native;->catch:Lcom/google/zxing/oned/throws;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/oned/while;->decode(Lcom/google/zxing/for;Ljava/util/Map;)Landroid/support/v4/wn1;

    move-result-object p1

    invoke-static {p1}, Lcom/google/zxing/oned/native;->while(Landroid/support/v4/wn1;)Landroid/support/v4/wn1;

    move-result-object p1

    return-object p1
.end method

.method public do(ILandroid/support/v4/w8;Ljava/util/Map;)Landroid/support/v4/wn1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/w8;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "*>;)",
            "Landroid/support/v4/wn1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;,
            Landroid/support/v4/ld0;,
            Landroid/support/v4/ll;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/native;->catch:Lcom/google/zxing/oned/throws;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/zxing/oned/throws;->do(ILandroid/support/v4/w8;Ljava/util/Map;)Landroid/support/v4/wn1;

    move-result-object p1

    invoke-static {p1}, Lcom/google/zxing/oned/native;->while(Landroid/support/v4/wn1;)Landroid/support/v4/wn1;

    move-result-object p1

    return-object p1
.end method

.method public super()Lcom/google/zxing/do;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/do;->UPC_A:Lcom/google/zxing/do;

    return-object v0
.end method
