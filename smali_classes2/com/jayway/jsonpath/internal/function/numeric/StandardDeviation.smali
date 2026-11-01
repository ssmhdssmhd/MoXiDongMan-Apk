.class public Lcom/jayway/jsonpath/internal/function/numeric/StandardDeviation;
.super Lcom/jayway/jsonpath/internal/function/numeric/AbstractAggregation;
.source "SourceFile"


# instance fields
.field private count:Ljava/lang/Double;

.field private sum:Ljava/lang/Double;

.field private sumSq:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/function/numeric/AbstractAggregation;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/jayway/jsonpath/internal/function/numeric/StandardDeviation;->sumSq:Ljava/lang/Double;

    .line 3
    iput-object v0, p0, Lcom/jayway/jsonpath/internal/function/numeric/StandardDeviation;->sum:Ljava/lang/Double;

    .line 4
    iput-object v0, p0, Lcom/jayway/jsonpath/internal/function/numeric/StandardDeviation;->count:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Number;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/function/numeric/StandardDeviation;->sumSq:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/function/numeric/StandardDeviation;->count:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/function/numeric/StandardDeviation;->sum:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/jayway/jsonpath/internal/function/numeric/StandardDeviation;->sum:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v2, v2, v4

    iget-object v4, p0, Lcom/jayway/jsonpath/internal/function/numeric/StandardDeviation;->count:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    div-double/2addr v2, v4

    iget-object v4, p0, Lcom/jayway/jsonpath/internal/function/numeric/StandardDeviation;->count:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/lang/Number;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/function/numeric/StandardDeviation;->sum:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/jayway/jsonpath/internal/function/numeric/StandardDeviation;->sum:Ljava/lang/Double;

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/function/numeric/StandardDeviation;->sumSq:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/internal/function/numeric/StandardDeviation;->sumSq:Ljava/lang/Double;

    .line 3
    iget-object p1, p0, Lcom/jayway/jsonpath/internal/function/numeric/StandardDeviation;->count:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/internal/function/numeric/StandardDeviation;->count:Ljava/lang/Double;

    return-void
.end method
