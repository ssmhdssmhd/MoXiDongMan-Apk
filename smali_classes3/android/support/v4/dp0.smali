.class public Landroid/support/v4/dp0;
.super Landroid/support/v4/cp0;
.source "SourceFile"

# interfaces
.implements Lnet/ricecode/similarity/SimilarityStrategy;


# instance fields
.field public final do:D

.field private if:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Landroid/support/v4/cp0;-><init>()V

    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 5
    iput-wide v0, p0, Landroid/support/v4/dp0;->do:D

    .line 6
    iput-wide v0, p0, Landroid/support/v4/dp0;->if:D

    return-void
.end method

.method public constructor <init>(D)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/support/v4/cp0;-><init>()V

    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 2
    iput-wide v0, p0, Landroid/support/v4/dp0;->do:D

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    move-wide p1, v0

    .line 3
    :cond_0
    iput-wide p1, p0, Landroid/support/v4/dp0;->if:D

    return-void
.end method

.method private for(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 p1, 0x4

    if-le v1, p1, :cond_3

    const/4 v1, 0x4

    :cond_3
    return v1
.end method


# virtual methods
.method public score(Ljava/lang/String;Ljava/lang/String;)D
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v4/cp0;->score(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/support/v4/dp0;->for(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 3
    iget-wide v2, p0, Landroid/support/v4/dp0;->if:D

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, v0

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method
