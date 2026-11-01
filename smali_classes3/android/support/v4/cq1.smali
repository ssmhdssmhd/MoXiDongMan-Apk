.class public Landroid/support/v4/cq1;
.super Landroid/support/v4/xv0;
.source "SourceFile"


# instance fields
.field private default:J

.field private import:J

.field private native:J

.field private public:J

.field private return:J

.field private static:J

.field private switch:J

.field private throws:J

.field private while:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/xv0;-><init>()V

    const/16 v0, 0x200

    if-ge p1, v0, :cond_2

    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_1

    const/16 v0, 0x180

    if-eq p1, v0, :cond_0

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/support/v4/cq1;->while:I

    mul-int/lit8 p1, p1, 0x8

    invoke-direct {p0, p1}, Landroid/support/v4/cq1;->native(I)V

    invoke-virtual {p0}, Landroid/support/v4/cq1;->reset()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitLength cannot be 384 use SHA384 instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitLength needs to be a multiple of 8"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitLength cannot be >= 512"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/support/v4/cq1;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/xv0;-><init>(Landroid/support/v4/xv0;)V

    iget v0, p1, Landroid/support/v4/cq1;->while:I

    iput v0, p0, Landroid/support/v4/cq1;->while:I

    invoke-virtual {p0, p1}, Landroid/support/v4/cq1;->reset(Lorg/bouncycastle/util/Memoable;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-static {p1}, Landroid/support/v4/cq1;->import([B)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v4/cq1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/support/v4/xv0;->super([B)V

    return-void
.end method

.method private static import([B)I
    .locals 1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x4

    invoke-static {p0, v0}, Landroid/support/v4/ib1;->do([BI)I

    move-result p0

    return p0
.end method

.method private native(I)V
    .locals 3

    const-wide v0, -0x3053bc3da9e69353L    # -6.392239886847908E75

    iput-wide v0, p0, Landroid/support/v4/xv0;->try:J

    const-wide v0, 0x1ec20b20216f029eL    # 1.604250256667292E-160

    iput-wide v0, p0, Landroid/support/v4/xv0;->case:J

    const-wide v0, -0x6634a928a4cea272L

    iput-wide v0, p0, Landroid/support/v4/xv0;->else:J

    const-wide v0, 0xea509ffab89354L

    iput-wide v0, p0, Landroid/support/v4/xv0;->goto:J

    const-wide v0, -0xb540825f7bcd88cL

    iput-wide v0, p0, Landroid/support/v4/xv0;->this:J

    const-wide v0, 0x3ea0cd298e9bc9baL    # 5.007211971427005E-7

    iput-wide v0, p0, Landroid/support/v4/xv0;->break:J

    const-wide v0, -0x45d983f1a11be732L    # -1.418977391716189E-28

    iput-wide v0, p0, Landroid/support/v4/xv0;->catch:J

    const-wide v0, -0x1ba974349247b24L

    iput-wide v0, p0, Landroid/support/v4/xv0;->class:J

    const/16 v0, 0x53

    invoke-virtual {p0, v0}, Landroid/support/v4/xv0;->update(B)V

    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Landroid/support/v4/xv0;->update(B)V

    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Landroid/support/v4/xv0;->update(B)V

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Landroid/support/v4/xv0;->update(B)V

    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Landroid/support/v4/xv0;->update(B)V

    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Landroid/support/v4/xv0;->update(B)V

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Landroid/support/v4/xv0;->update(B)V

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Landroid/support/v4/xv0;->update(B)V

    const/16 v0, 0x64

    const/16 v1, 0xa

    if-le p1, v0, :cond_1

    div-int/lit8 v2, p1, 0x64

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Landroid/support/v4/xv0;->update(B)V

    rem-int/2addr p1, v0

    :goto_0
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/support/v4/xv0;->update(B)V

    rem-int/2addr p1, v1

    :cond_0
    add-int/lit8 p1, p1, 0x30

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Landroid/support/v4/xv0;->update(B)V

    goto :goto_1

    :cond_1
    if-le p1, v1, :cond_0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/xv0;->this()V

    iget-wide v0, p0, Landroid/support/v4/xv0;->try:J

    iput-wide v0, p0, Landroid/support/v4/cq1;->import:J

    iget-wide v0, p0, Landroid/support/v4/xv0;->case:J

    iput-wide v0, p0, Landroid/support/v4/cq1;->native:J

    iget-wide v0, p0, Landroid/support/v4/xv0;->else:J

    iput-wide v0, p0, Landroid/support/v4/cq1;->public:J

    iget-wide v0, p0, Landroid/support/v4/xv0;->goto:J

    iput-wide v0, p0, Landroid/support/v4/cq1;->return:J

    iget-wide v0, p0, Landroid/support/v4/xv0;->this:J

    iput-wide v0, p0, Landroid/support/v4/cq1;->static:J

    iget-wide v0, p0, Landroid/support/v4/xv0;->break:J

    iput-wide v0, p0, Landroid/support/v4/cq1;->switch:J

    iget-wide v0, p0, Landroid/support/v4/xv0;->catch:J

    iput-wide v0, p0, Landroid/support/v4/cq1;->throws:J

    iget-wide v0, p0, Landroid/support/v4/xv0;->class:J

    iput-wide v0, p0, Landroid/support/v4/cq1;->default:J

    return-void
.end method

.method private static throw(I[BII)V
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_0

    rsub-int/lit8 v0, p3, 0x3

    mul-int/lit8 v0, v0, 0x8

    add-int v1, p2, p3

    ushr-int v0, p0, v0

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static while(J[BII)V
    .locals 3

    if-lez p4, :cond_0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    invoke-static {v1, p2, p3, p4}, Landroid/support/v4/cq1;->throw(I[BII)V

    const/4 v0, 0x4

    if-le p4, v0, :cond_0

    const-wide v1, 0xffffffffL

    and-long/2addr p0, v1

    long-to-int p1, p0

    add-int/2addr p3, v0

    sub-int/2addr p4, v0

    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/cq1;->throw(I[BII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Landroid/support/v4/cq1;

    invoke-direct {v0, p0}, Landroid/support/v4/cq1;-><init>(Landroid/support/v4/cq1;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/xv0;->this()V

    iget-wide v0, p0, Landroid/support/v4/xv0;->try:J

    iget v2, p0, Landroid/support/v4/cq1;->while:I

    invoke-static {v0, v1, p1, p2, v2}, Landroid/support/v4/cq1;->while(J[BII)V

    iget-wide v0, p0, Landroid/support/v4/xv0;->case:J

    add-int/lit8 v2, p2, 0x8

    iget v3, p0, Landroid/support/v4/cq1;->while:I

    add-int/lit8 v3, v3, -0x8

    invoke-static {v0, v1, p1, v2, v3}, Landroid/support/v4/cq1;->while(J[BII)V

    iget-wide v0, p0, Landroid/support/v4/xv0;->else:J

    add-int/lit8 v2, p2, 0x10

    iget v3, p0, Landroid/support/v4/cq1;->while:I

    add-int/lit8 v3, v3, -0x10

    invoke-static {v0, v1, p1, v2, v3}, Landroid/support/v4/cq1;->while(J[BII)V

    iget-wide v0, p0, Landroid/support/v4/xv0;->goto:J

    add-int/lit8 v2, p2, 0x18

    iget v3, p0, Landroid/support/v4/cq1;->while:I

    add-int/lit8 v3, v3, -0x18

    invoke-static {v0, v1, p1, v2, v3}, Landroid/support/v4/cq1;->while(J[BII)V

    iget-wide v0, p0, Landroid/support/v4/xv0;->this:J

    add-int/lit8 v2, p2, 0x20

    iget v3, p0, Landroid/support/v4/cq1;->while:I

    add-int/lit8 v3, v3, -0x20

    invoke-static {v0, v1, p1, v2, v3}, Landroid/support/v4/cq1;->while(J[BII)V

    iget-wide v0, p0, Landroid/support/v4/xv0;->break:J

    add-int/lit8 v2, p2, 0x28

    iget v3, p0, Landroid/support/v4/cq1;->while:I

    add-int/lit8 v3, v3, -0x28

    invoke-static {v0, v1, p1, v2, v3}, Landroid/support/v4/cq1;->while(J[BII)V

    iget-wide v0, p0, Landroid/support/v4/xv0;->catch:J

    add-int/lit8 v2, p2, 0x30

    iget v3, p0, Landroid/support/v4/cq1;->while:I

    add-int/lit8 v3, v3, -0x30

    invoke-static {v0, v1, p1, v2, v3}, Landroid/support/v4/cq1;->while(J[BII)V

    iget-wide v0, p0, Landroid/support/v4/xv0;->class:J

    add-int/lit8 p2, p2, 0x38

    iget v2, p0, Landroid/support/v4/cq1;->while:I

    add-int/lit8 v2, v2, -0x38

    invoke-static {v0, v1, p1, p2, v2}, Landroid/support/v4/cq1;->while(J[BII)V

    invoke-virtual {p0}, Landroid/support/v4/cq1;->reset()V

    iget p1, p0, Landroid/support/v4/cq1;->while:I

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHA-512/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/cq1;->while:I

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    iget v0, p0, Landroid/support/v4/cq1;->while:I

    return v0
.end method

.method public getEncodedState()[B
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/xv0;->break()I

    move-result v0

    add-int/lit8 v1, v0, 0x4

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Landroid/support/v4/xv0;->catch([B)V

    iget v2, p0, Landroid/support/v4/cq1;->while:I

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v2, v1, v0}, Landroid/support/v4/ib1;->case(I[BI)V

    return-object v1
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/xv0;->reset()V

    iget-wide v0, p0, Landroid/support/v4/cq1;->import:J

    iput-wide v0, p0, Landroid/support/v4/xv0;->try:J

    iget-wide v0, p0, Landroid/support/v4/cq1;->native:J

    iput-wide v0, p0, Landroid/support/v4/xv0;->case:J

    iget-wide v0, p0, Landroid/support/v4/cq1;->public:J

    iput-wide v0, p0, Landroid/support/v4/xv0;->else:J

    iget-wide v0, p0, Landroid/support/v4/cq1;->return:J

    iput-wide v0, p0, Landroid/support/v4/xv0;->goto:J

    iget-wide v0, p0, Landroid/support/v4/cq1;->static:J

    iput-wide v0, p0, Landroid/support/v4/xv0;->this:J

    iget-wide v0, p0, Landroid/support/v4/cq1;->switch:J

    iput-wide v0, p0, Landroid/support/v4/xv0;->break:J

    iget-wide v0, p0, Landroid/support/v4/cq1;->throws:J

    iput-wide v0, p0, Landroid/support/v4/xv0;->catch:J

    iget-wide v0, p0, Landroid/support/v4/cq1;->default:J

    iput-wide v0, p0, Landroid/support/v4/xv0;->class:J

    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 2

    check-cast p1, Landroid/support/v4/cq1;

    iget v0, p0, Landroid/support/v4/cq1;->while:I

    iget v1, p1, Landroid/support/v4/cq1;->while:I

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/xv0;->goto(Landroid/support/v4/xv0;)V

    iget-wide v0, p1, Landroid/support/v4/cq1;->import:J

    iput-wide v0, p0, Landroid/support/v4/cq1;->import:J

    iget-wide v0, p1, Landroid/support/v4/cq1;->native:J

    iput-wide v0, p0, Landroid/support/v4/cq1;->native:J

    iget-wide v0, p1, Landroid/support/v4/cq1;->public:J

    iput-wide v0, p0, Landroid/support/v4/cq1;->public:J

    iget-wide v0, p1, Landroid/support/v4/cq1;->return:J

    iput-wide v0, p0, Landroid/support/v4/cq1;->return:J

    iget-wide v0, p1, Landroid/support/v4/cq1;->static:J

    iput-wide v0, p0, Landroid/support/v4/cq1;->static:J

    iget-wide v0, p1, Landroid/support/v4/cq1;->switch:J

    iput-wide v0, p0, Landroid/support/v4/cq1;->switch:J

    iget-wide v0, p1, Landroid/support/v4/cq1;->throws:J

    iput-wide v0, p0, Landroid/support/v4/cq1;->throws:J

    iget-wide v0, p1, Landroid/support/v4/cq1;->default:J

    iput-wide v0, p0, Landroid/support/v4/cq1;->default:J

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/nz0;

    const-string v0, "digestLength inappropriate in other"

    invoke-direct {p1, v0}, Landroid/support/v4/nz0;-><init>(Ljava/lang/String;)V

    throw p1
.end method
