.class public Landroid/support/v4/bq1;
.super Landroid/support/v4/xv0;
.source "SourceFile"


# static fields
.field private static final while:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/xv0;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/bq1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/xv0;-><init>(Landroid/support/v4/xv0;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/xv0;-><init>()V

    invoke-virtual {p0, p1}, Landroid/support/v4/xv0;->super([B)V

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Landroid/support/v4/bq1;

    invoke-direct {v0, p0}, Landroid/support/v4/bq1;-><init>(Landroid/support/v4/bq1;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/xv0;->this()V

    iget-wide v0, p0, Landroid/support/v4/xv0;->try:J

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/ib1;->static(J[BI)V

    iget-wide v0, p0, Landroid/support/v4/xv0;->case:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Landroid/support/v4/ib1;->static(J[BI)V

    iget-wide v0, p0, Landroid/support/v4/xv0;->else:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Landroid/support/v4/ib1;->static(J[BI)V

    iget-wide v0, p0, Landroid/support/v4/xv0;->goto:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Landroid/support/v4/ib1;->static(J[BI)V

    iget-wide v0, p0, Landroid/support/v4/xv0;->this:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Landroid/support/v4/ib1;->static(J[BI)V

    iget-wide v0, p0, Landroid/support/v4/xv0;->break:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v0, v1, p1, v2}, Landroid/support/v4/ib1;->static(J[BI)V

    iget-wide v0, p0, Landroid/support/v4/xv0;->catch:J

    add-int/lit8 v2, p2, 0x30

    invoke-static {v0, v1, p1, v2}, Landroid/support/v4/ib1;->static(J[BI)V

    iget-wide v0, p0, Landroid/support/v4/xv0;->class:J

    add-int/lit8 p2, p2, 0x38

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/ib1;->static(J[BI)V

    invoke-virtual {p0}, Landroid/support/v4/bq1;->reset()V

    const/16 p1, 0x40

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-512"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public getEncodedState()[B
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/xv0;->break()I

    move-result v0

    new-array v0, v0, [B

    invoke-super {p0, v0}, Landroid/support/v4/xv0;->catch([B)V

    return-object v0
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/xv0;->reset()V

    const-wide v0, 0x6a09e667f3bcc908L    # 6.344059688352415E202

    iput-wide v0, p0, Landroid/support/v4/xv0;->try:J

    const-wide v0, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    iput-wide v0, p0, Landroid/support/v4/xv0;->case:J

    const-wide v0, 0x3c6ef372fe94f82bL    # 1.342284505169847E-17

    iput-wide v0, p0, Landroid/support/v4/xv0;->else:J

    const-wide v0, -0x5ab00ac5a0e2c90fL

    iput-wide v0, p0, Landroid/support/v4/xv0;->goto:J

    const-wide v0, 0x510e527fade682d1L    # 2.876275032471325E82

    iput-wide v0, p0, Landroid/support/v4/xv0;->this:J

    const-wide v0, -0x64fa9773d4c193e1L

    iput-wide v0, p0, Landroid/support/v4/xv0;->break:J

    const-wide v0, 0x1f83d9abfb41bd6bL    # 7.229011495228878E-157

    iput-wide v0, p0, Landroid/support/v4/xv0;->catch:J

    const-wide v0, 0x5be0cd19137e2179L    # 3.816167663240759E134

    iput-wide v0, p0, Landroid/support/v4/xv0;->class:J

    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 0

    check-cast p1, Landroid/support/v4/bq1;

    invoke-virtual {p0, p1}, Landroid/support/v4/xv0;->goto(Landroid/support/v4/xv0;)V

    return-void
.end method
