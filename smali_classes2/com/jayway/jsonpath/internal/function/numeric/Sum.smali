.class public Lcom/jayway/jsonpath/internal/function/numeric/Sum;
.super Lcom/jayway/jsonpath/internal/function/numeric/AbstractAggregation;
.source "SourceFile"


# instance fields
.field private summation:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/function/numeric/AbstractAggregation;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/jayway/jsonpath/internal/function/numeric/Sum;->summation:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Number;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/function/numeric/Sum;->summation:Ljava/lang/Double;

    return-object v0
.end method

.method public next(Ljava/lang/Number;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/function/numeric/Sum;->summation:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/internal/function/numeric/Sum;->summation:Ljava/lang/Double;

    return-void
.end method
