.class public Landroid/support/v4/ns1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final case:I

.field private final do:[C

.field private final for:I

.field private final if:[B

.field private final new:I

.field private final try:I


# direct methods
.method public constructor <init>([C[BIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ns1;->do:[C

    invoke-static {p2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/ns1;->if:[B

    iput p3, p0, Landroid/support/v4/ns1;->for:I

    iput p4, p0, Landroid/support/v4/ns1;->new:I

    iput p5, p0, Landroid/support/v4/ns1;->try:I

    iput p6, p0, Landroid/support/v4/ns1;->case:I

    return-void
.end method


# virtual methods
.method public case()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ns1;->if:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public do()I
    .locals 1

    iget v0, p0, Landroid/support/v4/ns1;->new:I

    return v0
.end method

.method public for()I
    .locals 1

    iget v0, p0, Landroid/support/v4/ns1;->case:I

    return v0
.end method

.method public if()I
    .locals 1

    iget v0, p0, Landroid/support/v4/ns1;->for:I

    return v0
.end method

.method public new()I
    .locals 1

    iget v0, p0, Landroid/support/v4/ns1;->try:I

    return v0
.end method

.method public try()[C
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ns1;->do:[C

    return-object v0
.end method
