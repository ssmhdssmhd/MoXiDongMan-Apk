.class final Lcom/google/zxing/pdf417/decoder/new;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final case:I = -0x1


# instance fields
.field private final do:I

.field private final for:I

.field private final if:I

.field private final new:I

.field private try:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/zxing/pdf417/decoder/new;->try:I

    .line 3
    iput p1, p0, Lcom/google/zxing/pdf417/decoder/new;->do:I

    .line 4
    iput p2, p0, Lcom/google/zxing/pdf417/decoder/new;->if:I

    .line 5
    iput p3, p0, Lcom/google/zxing/pdf417/decoder/new;->for:I

    .line 6
    iput p4, p0, Lcom/google/zxing/pdf417/decoder/new;->new:I

    return-void
.end method


# virtual methods
.method public break()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/new;->new:I

    div-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/new;->for:I

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/new;->try:I

    return-void
.end method

.method public case()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/new;->if:I

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/new;->do:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public do()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/new;->for:I

    return v0
.end method

.method public else()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/new;->try:I

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/new;->goto(I)Z

    move-result v0

    return v0
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/new;->try:I

    return v0
.end method

.method public goto(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/new;->for:I

    rem-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x3

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/new;->if:I

    return v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/new;->do:I

    return v0
.end method

.method public this(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/zxing/pdf417/decoder/new;->try:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/new;->try:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/new;->new:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/new;->new:I

    return v0
.end method
