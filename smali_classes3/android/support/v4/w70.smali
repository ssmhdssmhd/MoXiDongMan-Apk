.class public Landroid/support/v4/w70;
.super Landroid/support/v4/qk2;
.source "SourceFile"


# instance fields
.field private case:I

.field private else:J

.field private for:I

.field private goto:Ljava/lang/String;

.field private if:I

.field private new:I

.field private try:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/qk2;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Landroid/support/v4/w70;->goto:Ljava/lang/String;

    .line 3
    sget-object v0, Landroid/support/v4/ej0;->END_OF_CENTRAL_DIRECTORY:Landroid/support/v4/ej0;

    invoke-virtual {p0, v0}, Landroid/support/v4/qk2;->if(Landroid/support/v4/ej0;)V

    return-void
.end method


# virtual methods
.method public break(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroid/support/v4/w70;->goto:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public case()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/w70;->else:J

    return-wide v0
.end method

.method public catch(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/w70;->if:I

    return-void
.end method

.method public class(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/w70;->for:I

    return-void
.end method

.method public const(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/w70;->else:J

    return-void
.end method

.method public else()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/w70;->case:I

    return v0
.end method

.method public final(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/w70;->case:I

    return-void
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/w70;->goto:Ljava/lang/String;

    return-object v0
.end method

.method public goto()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/w70;->try:I

    return v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/w70;->if:I

    return v0
.end method

.method public super(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/w70;->try:I

    return-void
.end method

.method public this()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/w70;->new:I

    return v0
.end method

.method public throw(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/w70;->new:I

    return-void
.end method

.method public try()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/w70;->for:I

    return v0
.end method
