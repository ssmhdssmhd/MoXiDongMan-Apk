.class public Landroid/support/v4/s91;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public do:[B

.field public for:Ljava/lang/String;

.field public if:I

.field public new:Ljava/lang/String;

.field public try:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/support/v4/s91;->for:Ljava/lang/String;

    const-string v1, "UTF-8"

    .line 3
    iput-object v1, p0, Landroid/support/v4/s91;->new:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Landroid/support/v4/s91;->do:[B

    const/16 v1, 0x3e8

    .line 5
    iput v1, p0, Landroid/support/v4/s91;->if:I

    .line 6
    iput-object v0, p0, Landroid/support/v4/s91;->try:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/s91;-><init>(Ljava/lang/String;Ljava/lang/String;[BI[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BI[B)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Landroid/support/v4/s91;->for:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Landroid/support/v4/s91;->new:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Landroid/support/v4/s91;->do:[B

    .line 12
    iput p4, p0, Landroid/support/v4/s91;->if:I

    .line 13
    iput-object p5, p0, Landroid/support/v4/s91;->try:[B

    return-void
.end method


# virtual methods
.method public break([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/s91;->do:[B

    return-void
.end method

.method public case([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/s91;->try:[B

    return-void
.end method

.method public do()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/s91;->try:[B

    return-object v0
.end method

.method public else(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/s91;->for:Ljava/lang/String;

    return-void
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/s91;->new:Ljava/lang/String;

    return-object v0
.end method

.method public goto(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/s91;->new:Ljava/lang/String;

    return-void
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/s91;->for:Ljava/lang/String;

    return-object v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/s91;->if:I

    return v0
.end method

.method public this(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/s91;->if:I

    return-void
.end method

.method public try()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/s91;->do:[B

    return-object v0
.end method
