.class final Lcom/google/zxing/pdf417/decoder/do;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:I

.field private final for:I

.field private final if:I

.field private final new:I

.field private final try:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/zxing/pdf417/decoder/do;->do:I

    .line 3
    iput p4, p0, Lcom/google/zxing/pdf417/decoder/do;->if:I

    .line 4
    iput p2, p0, Lcom/google/zxing/pdf417/decoder/do;->for:I

    .line 5
    iput p3, p0, Lcom/google/zxing/pdf417/decoder/do;->new:I

    add-int/2addr p2, p3

    .line 6
    iput p2, p0, Lcom/google/zxing/pdf417/decoder/do;->try:I

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/do;->do:I

    return v0
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/do;->try:I

    return v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/do;->if:I

    return v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/do;->new:I

    return v0
.end method

.method public try()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/do;->for:I

    return v0
.end method
